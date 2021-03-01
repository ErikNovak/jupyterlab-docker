# Jupyterlab Research

This docker image contains a ready-to-use jupyterlab environment with the
following python packages pre-installed:

**Data Manipulation**
- [numpy](https://numpy.org/)
- [pytorch](https://pytorch.org/)
- [pandas](https://pandas.pydata.org/)

**Machine Learning**
- [datasets](https://huggingface.co/docs/datasets/)
- [transformers](https://huggingface.co/transformers/index.html)
- [spacy](https://spacy.io/)
- [scikit-learn](https://scikit-learn.org/stable/index.html)

**Text Processing**
- [nltk](https://www.nltk.org/)
- [gensim](https://radimrehurek.com/gensim/)

**Visualization**
- [matplotlib](https://matplotlib.org/stable/index.html)
- [plotly](https://plotly.com/)

**Monitoring**
- [tqdm](https://tqdm.github.io/)
- [tensorboard](https://www.tensorflow.org/tensorboard/)

**Misc**
- [python-dotenv](https://github.com/theskumar/python-dotenv)

## How to use this image

### Run with the `docker` command

```bash
docker run \
    -p 8888:8888 \
    --name jupyterlab \
    -v /path/to/project:/usr/jupyterlab \
    -d eriknovak/jupyterlab \
    jupyter lab --ip=0.0.0.0 --port=8888 --allow-root --no-browser \
        --NotebookApp.token='addY0uRT0K3nH3re' --NotebookApp.password='insert-your-password'
```

### Start it with `docker-compose`

```docker
version: "3.2"

services:
  jupyterlab:
    image: eriknovak/jupyterlab
    restart: always
    ports:
      - "8888:8888"
    volumes:
      - /path/to/project:/usr/jupyterlab
    container_name: jupyterlab
    entrypoint: sh -c "jupyter lab --ip='*' --port=8888 --no-browser --allow-root --NotebookApp.token='addY0uRT0K3nH3re' --NotebookApp.password='insert-your-password'"
    networks:
      research:

networks:
  research:
```
