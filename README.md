# HexoDocker
Generate hexo blog automatically on docker.

**A Teacher's Day present for my dear Teacher Jin. Hope you find it handy and useful.**

Host machine is Windows 10 and Hexo theme preset to "Edinburgh", which is good for my teacher's art gallery.

## Usage

1. Register on github and create a repository using "yourname.github.io". (You can find more details by googling.)
2. Create or copy your ssh private key to BuildHexoDocker/id_rsa.
3. Complete all the necessary blanks in .gitconfig, main_config.yml.
4. Run build.bat to build docker image.
5. Run set.bat to do some setting work.
6. Run run.bat to start writing blog!
7. In case anything get suspicious, run rm.bat.

A folder named "blog" will be created in the same folder of run.bat. It is mapped to path /blog in Docker. Better edit it on the host machine.

Learn some basic Hexo commands and Markdown syntax rules and you are ready to go.

Have a nice time writing blog!