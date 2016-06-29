# Docker image for  Foroutan et al. paper

This repository contains the Docker file that reproduces the figures and results for the following paper:

**Using a Gene Expression Signature to Identify Cancer Cell Lines and Samples with TGFβ-induced EMT**  
Momeneh Foroutan, Joseph Cursons, Soroor Hediyeh-Zadeh, Erik W. Thompson and Melissa J. Davis

### Download Instructions

Download and install [Docker](https://docs.docker.com). Start Docker and run the following command:

```
docker run -p 49000:8787 -d davislaboratory/mforoutan_tgfb_paper_2016

```

(You can replace 49000 with another open port if you want.) Navigate in your web browser to 
http://0.0.0.0:49000. This will open up rstudio. The username and password are both "davislab". 
You can run *generate_all_experiments.R* to reproduce all the figures and results from Foroutan et al.

```r
# In rstudio run: 
source("generate_all_experiments.R")

```

##Running on a Mac
If you are running on a Mac, you should have already installed, initialized, and started boot2docker 
using the instructions [here](https://docs.docker.com/engine/installation/mac/). Instructions are
the same as above, except instead of using "0.0.0.0" as the IP address, run:


```
boot2docker ip
```

to get the IP. Then navigate in the browser to $IP:49000.


