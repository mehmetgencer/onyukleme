#!/usr/bin/python3
"""
TWEAKS:
* If the title contains a fragment "Süre:..." then the section duration is recorded in the toc, and total time is updated, this works together with identification of h1 elements and the fragment
* a fragment $dc{x y z} indicates a circle of evaluation with operator x and parameters y and z. This is pre- and post processed to obtain a result. It is otherwise not only time consuming to type circles of evaluation but also makes the markdown very dirty
"""
import sys,getopt,string,re, os.path
from docutils.parsers import rst
from docutils import core, io, nodes
from docutils.parsers.rst import directives, roles
from jinja2 import Template,Environment,FileSystemLoader
toc=[]
global doctitle
doctitle=""
def debug(*args):
    sys.stderr.write(" ".join([str(x) for x in args])+"\n")

def tweak_sure(s):
    #debug("Süre:",s.group(0),"lab:",s.group("surelab"))
    entry=(s.group("title"),s.group("time"))
    toc.append(entry)
    return "<h2><a name='sec%d'></a>%s<span class='time'>%s</span></h2>"%(len(toc),s.group("title"),s.group("surelab"))

def tweak_headerAndToc(s):
    #debug("header")
    tochtm=""
    tottime=0
    global doctitle
    doctitle+=s.group("title")
    c=0
    for title,time in toc:
        c+=1
        tochtm+="<tr><td><a href='#sec%d'>%s</a></td><td>%s dakika</td></tr>"%(c,title,time)
        tottime+=int(time)
    tochtm="<table class='toctable'><tr><td>TOPLAM SÜRE:</td><td>%d dakika</td></tr>%s</table>"%(tottime,tochtm)
    return "<h1>%s</h1>\n%s"%(s.group("title"),tochtm)
    
def tweak_sureDELETE(s):
    return "<span class='time'>%s</span>"%s.group(0)

def tweak_dc(s):
    rv=""
    expr=s.group(0).split("{")[1].split("}")[0]
    #debug("exp",expr.split())
    state=""
    for c in expr.split():
        if c=="(":
            #debug("par found")
            rv+="<span class='dc'>"
            state="start"
        elif c==")":
            rv+="</span>"
            state=""
        elif state=="start":#operator
            #debug("op found")
            rv+="<span class='dcop'>%s</span>"%c
            state=""
        else:
            #ebug("val found")
            rv+="<span class='dcval'>%s</span>"%c
    return rv
    
def tweaks(htm):
    #retval=re.sub("\(Süre:.+?\)", tweak_sure, htm)
    #retval=re.sub(".+\(Süre:.+?\)", tweak_sure, htm)
    retval=re.sub("<h2>(?P<title>.+)(?P<surelab>\(Süre:.+?(?P<time>[0-9]+).+?\))</h2>", tweak_sure, htm)
    retval=re.sub("\$dc\{.+?\}", tweak_dc, retval)
    retval=re.sub("<h1>(?P<title>.+?)</h1>", tweak_headerAndToc, retval)
    #debug("TOC:",toc)
    return retval
    
if __name__=="__main__":
    usetweaks=True
    optlist, args = getopt.getopt(sys.argv[1:], 'n')
    for o,v in optlist:
        if o=="-n":usetweaks=False
    if not len(args)>=2:
        debug("Usage: %s input-file.rst jinja-tamplate.html"%sys.argv[0])
        debug("options:\n  -n : do not use tweaks")
        sys.exit(1)
    fname=args[0]
    fdir,tmp=os.path.split(fname)
    if os.path.exists(fdir+"/subs.rst"):subs=open(fdir+"/subs.rst").read()
    else:subs=""
    TEMPLATEDIR,templatename=os.path.split(args[1])
    debug("PROCESSING INPUT FILE:",fname,", TEMPLATE:",templatename)
    inputstr=open(fname).read()+"\n"+subs
    parts=core.publish_parts(source=inputstr,writer_name='html',settings_overrides={'doctitle_xform':False,"math_output":"MathJax"}) 
    #see https://projects.coin-or.org/Coopr/browser/ceps/python/docutils/examples.py?rev=2492
    #http://stackoverflow.com/questions/9618892/restructuredtext-not-respecting-subheadings
    fragment = parts['html_body']
    env = Environment(loader=FileSystemLoader(TEMPLATEDIR))
    template = env.get_template(templatename)
    #debug("doctitle",doctitle)
    if usetweaks:content=tweaks(fragment)
    else:content=fragment
    content=template.render(doctitle=doctitle,unit=content)
    print(content)
