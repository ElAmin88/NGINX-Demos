echo "Hello"
for /f %%i in ('docker ps -qf "name=myapp"') do set containerId=%%i
echo %containerId%
If "%containerId%" == "" (
  echo "No Container running"
) ELSE (
  docker stop %ContainerId%
  docker rm -f %ContainerId%
)
docker build -t myapp .
docker run --name myapp -p 3000:80 -d myapp 