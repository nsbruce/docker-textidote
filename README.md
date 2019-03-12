# Textidote running in Docker

A few options for docker images running [Textidote](https://github.com/sylvainhalle/textidote).

Available on Docker Hub at [nsbruce/textidote](https://hub.docker.com/r/nsbruce/textidote).

## Textidote
Check out the linked repo above. It's a tool for spell and grammar-checking LaTeX documents.

## Dockerfiles
This was my first foray into Docker-land so I did some playing. There are three Dockerfiles available. Obviously the size of them is dependent on the base images in use but the sizes at the time of this writing (Feb 2019) are listed below along with the difference between the images.

### Alpine [(Dockerfile)](.Dockerfile)
The smallest, at 311MB.

### Debian [(Dockerfile.openjdk)](.Dockerfile.openjdk)
The only one running Textidote's `.deb` instead of the `.jar` at 460MB.

### Java [(Dockerfile.java)](.Dockerfile.java)
The largest (788MB) but I suppose most likely to be stable? To use it, you need to download the .jar from the [Textidote repo](https://github.com/sylvainhalle/textidote) and build the docker image with `textidote.jar` in the active directory.

## Building and running
**(Easiest to just pull it right from Docker Hub.)**

1. Rename whichever Dockerfile you choose from above to Dockerfile (no extension). If you choose the vanilla-Java version, also download `textidote.jar`.

2. Build the docker image `docker build -t mytextidote .

3. Make [textidoteDockerCMD.sh](./textidoteDockerCMD.sh) executable: `$ chmod +x textidoteDockerCMD.sh`.

4. Run on your `.tex` file with `$ .textidoteDockerCMD.sh yourFile.tex`

   * You can run normal textidote commands on it too.. `$ ./textidoteDockerCMD.sh --check en --read-all --html yourFile.tex > yourOutput.html`

## Credits
Sylvain Hallé for Textidote