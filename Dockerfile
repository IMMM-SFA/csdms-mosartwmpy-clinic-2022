FROM jupyter/minimal-notebook:2022-05-03
RUN git clone --depth 1 --branch csdms https://github.com/IMMM-SFA/mosartwmpy.git mosartwmpy
RUN cd mosartwmpy && pip install -e .
