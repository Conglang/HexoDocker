for /f "delims=" %%t in ('docker ps -a -q') do docker stop %%t
for /f "delims=" %%t in ('docker ps -a -q') do docker rm %%t
