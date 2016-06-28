FROM davislaboratory/docker-rstudio-server
MAINTAINER soroorh <hediyehzadeh.s@wehi.edu.au>
RUN git clone https://soroorh@bitbucket.org/soroorh/mforoutan_tgfb_paper_2016.git 
RUN mkdir -p /home/davislab/output/{figures,results}
RUN chown -R davislab:davislab /home/davislab/output
RUN chmod 700 /home/davislab/output
#RUN (Rscript -e 'install.packages(c("dplyr","hexbin","colorRamps","survival","XML"), repos="http://cran.rstudio.com/")')
#RUN (Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite(c("limma","GSVA", "sva"))')  
#RUN chown -R davislab:davislab /home/davislab/
#RUN mv /mforoutan_tgfb_paper_2016/scripts/*  /scripts
RUN ln -s /mforoutan_tgfb_paper_2016/scripts /home/davislab/scripts
#RUN cp -R scripts/ /home/davislab/scripts/
#RUN cp -R data/ /home/davislab/data/
#RUN cp -R output/ /home/davislab/output/
WORKDIR /mforoutan_tgfb_paper_2016
RUN mv generate_all_experiments.R /home/davislab
