FROM jupyter/minimal-notebook:2022-05-03

USER root

RUN git clone --depth 1 --branch csdms https://github.com/IMMM-SFA/mosartwmpy.git mosartwmpy
RUN cd mosartwmpy && pip install .
RUN apt-get update && apt-get install -y libproj-dev proj-bin proj-data libgeos-dev build-essential
RUN pip install cartopy~=0.19.0 ipywidgets
RUN jupyter nbextension enable --py widgetsnbextension
