# use a miniconda3 as base image
FROM continuumio/miniconda3

# installation of jupyterlab
RUN conda install -c conda-forge jupyterlab "ipywidgets>=7.5"

# install python libraries (conda)
RUN conda install -c anaconda nltk
RUN conda install -c anaconda numpy
RUN conda install -c conda-forge gensim
RUN conda install -c conda-forge matplotlib
RUN conda install -c conda-forge pandas
RUN conda install -c conda-forge python-dotenv
RUN conda install -c conda-forge tensorboard
RUN conda install -c conda-forge tqdm
RUN conda install -c conda-forge spacy
RUN conda install -c huggingface transformers
RUN conda install -c intel scikit-learn
RUN conda install -c plotly plotly
RUN conda install -c plotly python-kaleido
RUN conda install -c pytorch pytorch torchvision torchaudio cudatoolkit=11

# install python libraries (pip)
RUN pip install datasets

# install newer nodejs and jupyterlab extensions
RUN conda install -c conda-forge nodejs --repodata-fn=repodata.json
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
RUN jupyter labextension install plotlywidget@4.14.3
RUN jupyter labextension install @jupyterlab/toc
RUN jupyter labextension install @jupyterlab/debugger

# adding the current directory to container
WORKDIR /usr/jupyterlab
