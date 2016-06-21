FROM davislaboratory/docker-rstudio-server
MAINTAINER soroorh <hediyehzadeh.s@wehi.edu.au>
RUN git clone https://soroorh@bitbucket.org/soroorh/mforoutan_tgfb_paper_2016.git
WORKDIR /mforoutan_tgfb_paper_2016
RUN mv scripts/ /home/davislab/scripts/
RUN mv data/ /home/davislab/data/
RUN mv output/ /home/davislab/output/
RUN (Rscript -e 'install.packages(c("dplyr","hexbin","colorRamps","survival"), repos="http://cran.rstudio.com/")')
RUN (Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite(c("limma","GSEABase", "GSVA", "sva"))')  
RUN mv generate_all_experiments.R /home/davislab
