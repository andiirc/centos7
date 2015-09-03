# CENTOS 7.1.1503

Dockerfilae centos7 + access ssh in centos 7.1.1503

### Iniciar contenedor ssh como root asignándole una contraseña.
docker run -p --name centos7ssh -e PASSROOT='password' -d  andiirc/centos7

### datos persistentes 
docker run  -p --name centos7ssh -v /etc/sysconfig/clock:/etc/sysconfig/clock:ro -v /etc/localtime:/etc/localtime:ro -e PASSROOT='password' -d  andiirc/centos7

### acceso por ssh.
ssh root@ipcontainer -p 22








