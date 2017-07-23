@echo off
cls

REM How to use hexo.
echo [USE Hexo]
echo + Read first blog "Hello World" for basic command usage.
echo + Learn Markdown for blog editing.
echo + Specially,
echo + set title image using: "cover_image: images/unsplash4.jpg"
echo + set content image using: "<img src="unsplash4.jpg" alt="test" width = "98%%" />"
echo.

docker run --rm -v %~dp0blog:/blog -p 4000:4000 -it hexoblog sh