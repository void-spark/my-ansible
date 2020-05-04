@ECHO OFF
docker run -it --rm -v "%~dp0:/work" -v "%userprofile%/.ssh:/tmp/.ssh:ro" -w /work void-spark/ansible
