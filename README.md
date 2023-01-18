# Resume

## Requirements

- LaTeX / MacTeX or Docker
- Editor (VsCode + LaTeX Workshop)

## Build 
### Local LaTeX

~~~
chmod +x build.sh
./build.sh
~~~

### with Docker

In order to build an image for docker, just run the command line below
~~~
docker build . -t tcc
~~~

And to run, simply run the app and then expose the port you want to. And that's it, with the command below the application will be available in http://localhost.
~~~
docker run -p 80:80 tcc
~~~

If you do not want to run the server, run the build-docker script. The pdf will be built inside docker container and the resultinf PDF and will be copied into local dist folder.

~~~
chmod +x build.sh
chmod +x build-docker.sh
./build-docker.sh
~~~
