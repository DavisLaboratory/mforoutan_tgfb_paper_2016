
# Docker image for  Foroutan et al. paper

This repository contains instructions to run Docker images that reproduce the figures and results for the following paper:


**A Transcriptional Signature for TGFβ-induced EMT in Cancer**  

Momeneh Foroutan, Joseph Cursons, Soroor Hediyeh-Zadeh, Erik W. Thompson and Melissa J. Davis



## Download Instructions

> Please note that the images are temporary unavailable due to technical issues. Should further assitance be required, please contact.


Two separate images have been prepared that reproduce the **cell-line analysis** and the **tumour analysis**.


Download and install [Docker](https://docs.docker.com). 

### To reproduce the results for the cell-line analysis

Start Docker and run the following command:

```
docker run -p 49000:8787 -d davislaboratory/mforoutan_tgfb_2017_celllines

```

(You can replace 49000 with another open port if you want.) Navigate in your web browser to 
http://0.0.0.0:49000. This will open up rstudio. The username and password are both [blank]. 
You can run *generate_all_experiments.R* to reproduce all the figures and results from Foroutan et al.

```r
# In rstudio run: 
source("generate_all_experiments.R")

```

### To reproduce the results for the tumours analysis

Run the following command:

```
docker run -p 49000:8787 -d davislaboratory/mforoutan_tgfb_2017_tumours

```

then follow the above instructions. Please make sure you have stopped the running image/containers 
, before running the other image. Running containers/image can be stopped using the following command

```
docker stop $(docker ps -aq)
```


#### Running on a Mac
If you are running on a Mac, you should have already installed either [Docker for Mac](https://docs.docker.com/docker-for-mac/), or [Docker Toolbox](https://www.docker.com/products/docker-toolbox). Instructions are the same as above if you're using Docker for Mac. However, if you're using Docker Toolbox you would need to replace "0.0.0.0" with your IP address. You're IP address is displayed once you run the Docker Quick Terminal from Docker Toolbox.Then navigate in the browser to $IP:49000.

**Please note that some of the scripts provided with the image perform computationally intensive operations. Our testings suggest that Mac users running Docker Toolbox will have difficulties running some of the scripts due to CPU limitations of Virtualbox-based Docker machines. Users are, therefore, strongly encouraged to install and run Docker for Mac.**

Please contact Soroor (hediyehzadeh.s@wehi.edu.au) for bug reports or help requests, or simply open an issue.




