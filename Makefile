RST=./rstoy.py

compile1:
	for u in 1 2 3 4 5 6 7 8 9;do \
		$(RST) onyukleme1/unite$$u.rst onyukleme1/oytemplate.html > oycompiled1/unite$$u.html; \
	done
	$(RST) -n onyukleme1/index.rst onyukleme1/oytemplate_index.html > oycompiled1/index.html;
	cp -a onyukleme1/images oycompiled1/
	cp -a onyukleme1/css oycompiled1/
	mkdir oycompiled1/resources || echo "resources dir already exists";cp -a onyukleme1/IsDefteri.pdf oycompiled1/resources/
	cp -a onyukleme1/Unite7LuigininPizzasi.pdf oycompiled1/resources/
	cp -a onyukleme1/Unite8Hazirlik.pdf oycompiled1/resources/
	chmod -R a+rx oycompiled1

compile2:
	for u in 1 2 3 4 5 6 7 8 9 10;do \
		$(RST) onyukleme2/unite$$u.rst onyukleme2/oytemplate.html > oycompiled2/unite$$u.html; \
	done
	$(RST) -n onyukleme2/index.rst onyukleme2/oytemplate_index.html > oycompiled2/index.html;
	cp -a onyukleme2/images oycompiled2/
	cp -a onyukleme2/css oycompiled2/
	cd onyukleme2; ooxml2pdf IsDefteri2.odt
	mkdir oycompiled2/resources || echo "resources dir already exists";cp -a onyukleme2/IsDefteri2.pdf oycompiled2/resources/
	chmod -R a+rx oycompiled2

publish1:
	rsync -av  --delete --rsh=ssh oycompiled1/ mgencer.com:/var/www/yakinokul.org/onyukleme1

publish2:
	rsync -av  --delete --rsh=ssh oycompiled2/ mgencer@mgencer.com:/var/www/yakinokul.org/onyukleme2
	rsync -av  --delete --rsh=ssh onyukleme2kodlar/ mgencer@mgencer.com:/var/www/yakinokul.org/onyukleme2/kodlar
