RST=./rstoy.py

compile:
	for u in 1 2 3 4 5;do \
		$(RST) onyukleme1/unite$$u.rst onyukleme1/oytemplate.html > oycompiled/unite$$u.html; \
	done
	$(RST) -n onyukleme1/index.rst onyukleme1/oytemplate_index.html > oycompiled/index.html;
	cp -a onyukleme1/images oycompiled/
	cp -a onyukleme1/css oycompiled/
	mkdir oycompiled/resources || echo "resources dir already exists";cp -a onyukleme1/IsDefteri.pdf oycompiled/resources/
	chmod -R a+rx oycompiled

publish:
	rsync -av  --delete --rsh=ssh oycompiled/ mgencer.com:/var/www/yakinokul.org/onyukleme1
