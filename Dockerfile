FROM davislaboratory/rstudio-server
MAINTAINER soroorh <hediyehzadeh.s@wehi.edu.au>
RUN git clone https://soroorh@bitbucket.org/soroorh/mforoutan_tgfb_paper_2016.git
RUN ln -s /home/mforoutan_tgfb_paper_2016/scripts /home/sbl/scripts
RUN ln -s /home/mforoutan_tgfb_paper_2016/data /home/sbl/data
RUN ln -s /home/mforoutan_tgfb_paper_2016/output /home/sbl/output
RUN (Rscript -e 'install.packages(c("dplyr","hexbin","colorRamps","survival","rafalib"), repos="http://cran.rstudio.com/")')
RUN (Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite(c("limma", "GSVA", "sva"))')  
WORKDIR /mforoutan_tgfb_paper_2016
RUN mv generate_all_experiments.R /home/sbl
