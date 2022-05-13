#!/usr/bin/env bash

set -eo pipefail

sudo apt update -y && \
    sudo apt install -y latexmk \
        texlive-latex-base \
        texlive-latex-extra \
        texlive-fonts-recommended \
        texlive-fonts-extra \
        texlive-bibtex-extra \
        biber
