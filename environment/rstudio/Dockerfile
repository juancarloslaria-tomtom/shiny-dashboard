FROM mapsanalyticsmetrics/rstudio:4.1.0

RUN R -e "install.packages('shiny')"
RUN R -e "install.packages(c('ggplot2', 'dplyr', 'shinydashboard'), repos=c('https://cloud.r-project.org'))"

EXPOSE 8787
ENV PASSWORD=tomtom
