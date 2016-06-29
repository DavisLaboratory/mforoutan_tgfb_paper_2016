FROM davislaboratory/docker-rstudio-server
MAINTAINER soroorh <hediyehzadeh.s@wehi.edu.au>
RUN git clone https://soroorh@bitbucket.org/soroorh/mforoutan_tgfb_paper_2016.git 
RUN mkdir -p /home/davislab/output/figures
RUN mkdir -p /home/davislab/output/results
RUN mkdir -p /home/davislab/output/results/supplementary
RUN chown -R davislab:davislab /home/davislab/output
RUN chmod 700 /home/davislab/output
RUN (Rscript -e 'install.packages(c("dplyr","hexbin","colorRamps","survival","XML"), repos="http://cran.rstudio.com/")')
RUN (Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite(c("limma","GSVA", "sva"))')  
RUN ln -s /mforoutan_tgfb_paper_2016/scripts /home/davislab/scripts
RUN ln -s /mforoutan_tgfb_paper_2016/data /home/davislab/data
WORKDIR /mforoutan_tgfb_paper_2016
RUN mv generate_all_experiments.R /home/davislab
