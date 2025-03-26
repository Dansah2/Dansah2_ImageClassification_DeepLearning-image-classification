#!/bin/bash

# Export the environment variables
source .env

# Download the data
kaggle competitions download dogs-vs-cats -p data/raw

# Decompress the data
unzip data/raw/dogs-vs-cats.zip -d data/raw

mkdir data/interim/train
mkdir data/interim/test1
unzip data/raw/train.zip -d data/interim/train
unzip data/raw/test1.zip -d data/interim/test1

# Move the training dogs and cats into separate directories
mkdir data/processed/train
mkdir data/processed/test
mkdir data/processed/train/dog
mkdir data/processed/train/cat
mkdir data/processed/test/dog
mkdir data/processed/test/cat
mv data/interim/train/dog.* data/processed/train/dog/
mv data/interim/train/cat.* data/processed/train/cat/
mv data/interim/test1/dog.* data/processed/test/dog/
mv data/interim/test1/cat.* data/processed/test/cat/

# Clean up
rm data/raw/sampleSubmission.csv
rm data/raw/*.zip