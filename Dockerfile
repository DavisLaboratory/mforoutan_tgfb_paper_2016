FROM davislaboratory/rstudio-server
MAINTAINER soroorh <hediyehzadeh.s@wehi.edu.au>
RUN mkdir -p /scripts
RUN mkdir -p /data
RUN mkdir -p /output
RUN git clone https://soroorh@bitbucket.org/soroorh/mforoutan_tgfb_paper_2016.git
WORKDIR /mforoutan_tgfb_paper_2016
RUN ln -s /scripts /home/davislab/scripts
RUN ln -s /data /home/davislab/data
RUN ln -s /output /home/davislab/output
RUN (Rscript -e 'install.packages(c("dplyr","hexbin","colorRamps","survival","rafalib"), repos="http://cran.rstudio.com/")')
RUN (Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite(c("limma", "GSVA", "sva"))')  
RUN mv generate_all_experiments.R /home/davislab
