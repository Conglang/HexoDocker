#!/bin/bash
DIR="/blog"
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

# init hexo
if [ "$(ls -A $DIR)" ]; then
	echo -e "${GREEN}[BLOG] \t Hexo already inited.${NC}"
else
	echo -e "${YELLOW}[BLOG] \t Start init hexo.${NC}"
	hexo init
	npm install
	npm install hexo-deployer-git --save
	hexo new page "about"
	hexo new page "contact"
	echo -e "${GREEN}[BLOG] \t Finish init hexo.${NC}"
fi

# install theme Edinburgh
if [ "$(ls -A $DIR/themes | grep edinburgh)" ]; then
	echo -e "${GREEN}[BLOG] \t Edinburgh theme already set.${NC}"
else
	echo -e "${YELLOW}[BLOG] \t Start installing theme Edinburgh.${NC}"
	# git clone theme
	git clone https://github.com/sharvaridesai/hexo-theme-edinburgh themes/edinburgh
	# copy main _config.yml
	rm -f $DIR/_config.yml
	cp /script/main_config.yml $DIR/_config.yml

	# copy theme _config.yml
	rm -f $DIR/themes/edinburgh/_config.yml
	cp /script/theme_config.yml $DIR/themes/edinburgh/_config.yml

	# copy theme images
	mkdir $DIR/source/images
	cp /script/unsplash2.jpg $DIR/source/images
	cp /script/unsplash4.jpg $DIR/source/images

	# set font friendly to Chinese
	rm -f $DIR/themes/edinburgh/source/css/styles.css
	cp /script/styles.css $DIR/themes/edinburgh/source/css/styles.css

	echo -e "${GREEN}[BLOG] \t Finish installing theme Edinburgh.${NC}"
fi