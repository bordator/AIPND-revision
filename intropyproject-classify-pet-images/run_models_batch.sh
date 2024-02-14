#!/bin/sh
# */AIPND-revision/intropyproject-classify-pet-images/run_models_batch.sh
#                                                                             
# PROGRAMMER: Jennifer S.
# DATE CREATED: 02/08/2018                                  
# REVISED DATE: 02/27/2018  - 
# PURPOSE: Runs all three models to test which provides 'best' solution.
#          Please note output from each run has been piped into a text file.
#
# Usage: sh run_models_batch.sh    -- will run program from commandline within Project Workspace
#  
python check_images.py --dir /Users/frankbourier/GitHub/AIPND-revision/intropyproject-classify-pet-images/pet_images/ --arch resnet  --dogfile /Users/frankbourier/GitHub/AIPND-revision/intropyproject-classify-pet-images/dognames.txt > resnet_pet-images.txt
python check_images.py --dir /Users/frankbourier/GitHub/AIPND-revision/intropyproject-classify-pet-images/pet_images/ --arch alexnet --dogfile /Users/frankbourier/GitHub/AIPND-revision/intropyproject-classify-pet-images/dognames.txt > alexnet_pet-images.txt
python check_images.py --dir /Users/frankbourier/GitHub/AIPND-revision/intropyproject-classify-pet-images/pet_images/ --arch vgg  --dogfile /Users/frankbourier/GitHub/AIPND-revision/intropyproject-classify-pet-images/dognames.txt > vgg_pet-images.txt
# python check_images.py --dir pet_images/ --arch resnet  --dogfile dognames.txt > resnet_pet-images.txt
# python check_images.py --dir pet_images/ --arch alexnet --dogfile dognames.txt > alexnet_pet-images.txt
# python check_images.py --dir pet_images/ --arch vgg  --dogfile dognames.txt > vgg_pet-images.txt
