#!/bin/bash

# Export the environment variables
source .env

# Download the data
kaggle competitions download dogs-vs-cats -p data/raw

# Decompress the data
unzip data/raw/dogs-vs-cats.zip -d data/raw
unzip data/raw/train.zip -d data/interim
unzip data/raw/test.zip -d data/interim

# Move the training dogs and cats into separate directories
mkdir data/processed/train/dog
mkdir data/processed/train/cat
mkdir data/processed/test/dog
mkdir data/processed/test/cat
mv data/interim/train/dog.* data/processed/train/dog/
mv data/interim/train/cat.* data/processed/train/cat/
mv data/interim/test/dog.* data/processed/test/dog/
mv data/interim/test/cat.* data/processed/test/cat/

# Clean up
rm data/sampleSubmission.csv
rm data/*.zip