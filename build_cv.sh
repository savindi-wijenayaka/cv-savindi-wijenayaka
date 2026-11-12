#!/usr/bin/env bash

set -eo pipefail

CV_JOB_NAME="${CV_JOB_NAME:-main}"

mkdir -p build

latexmk \
	-pdf \
	-latexoption=-file-line-error \
	-latexoption=-interaction=nonstopmode \
	-outdir=build \
	-jobname="${CV_JOB_NAME}" \
	main.tex

cp "build/${CV_JOB_NAME}.pdf" "${CV_JOB_NAME}.pdf"
