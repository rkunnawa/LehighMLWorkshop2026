FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies
RUN apt-get update && apt-get install -y \
    wget \
    bzip2 \
    ca-certificates \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install Miniforge (conda-forge-based conda installer)
RUN wget -q https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh \
        -O /tmp/miniforge.sh && \
    bash /tmp/miniforge.sh -b -p /opt/conda && \
    rm /tmp/miniforge.sh

# Add conda to PATH
ENV PATH="/opt/conda/bin:${PATH}"

# Initialize conda for bash
RUN conda init bash

# Copy the environment file into the image
COPY work_py_ml.yml /tmp/work_py_ml.yml

# Create the conda environment from the YAML file
RUN conda env create -f /tmp/work_py_ml.yml && \
    conda clean -afy

# Activate the environment by default
RUN echo "conda activate work_py_ml" >> ~/.bashrc

SHELL ["/bin/bash", "--login", "-c"]
CMD ["/bin/bash"]

