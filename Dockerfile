FROM davislaboratory/docker-rstudio-server
MAINTAINER soroorh <hediyehzadeh.s@wehi.edu.au>
RUN git clone https://soroorh@bitbucket.org/soroorh/mforoutan_tgfb_paper_2016.git
RUN mkdir -p /scripts
#RUN mkdir -p /output
#RUN mkdir -p /data
#RUN (Rscript -e 'install.packages(c("dplyr","hexbin","colorRamps","survival","XML"), repos="http://cran.rstudio.com/")')
#RUN (Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite(c("limma","GSVA", "sva"))')  
#RUN chown -R davislab:davislab /home/davislab/
RUN find /home/davislab -type d -exec chmod 755 {} \;
RUN find /home/davislab -type f -exec chmod 644 {} \;
#RUN chown davislab: /home/davislab
#RUN chmod u+w /home/davislab
RUN mv /mforoutan_tgfb_paper_2016/scripts/*  /scripts
RUN ln -s /scripts /home/davislab/scripts
#RUN cp -R scripts/ /home/davislab/scripts/
#RUN cp -R data/ /home/davislab/data/
#RUN cp -R output/ /home/davislab/output/
WORKDIR /mforoutan_tgfb_paper_2016
RUN mv generate_all_experiments.R /home/davislab
RUN mkdir -p testdir
