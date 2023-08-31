#!/bin/bash

# Run the docker build command This uses s3 bucket to store app code
docker build -t nestapp5 \
--build-arg BUCKET_NAME=<enter bucketname> \
--build-arg WEB_FILE_ZIP=<enter zip file name> \
--build-arg WEB_FILE_UNZIP=<enter unzip file folder name> \
--build-arg DOMAIN_NAME=www.wiz-obi.com \
--build-arg RDS_ENDPOINT=<enter rds endpoint> \
--build-arg RDS_DB_NAME=<enter rds name> \
--build-arg RDS_MASTER_USERNAME=<enter rds master name> \
--build-arg RDS_DB_PASSWORD=<enter rds password> \
--build-arg AWS_ACCESS_KEY_ID=<enter aws access key id> \
--build-arg AWS_SECRET_ACCESS_KEY=<enter aws access key> \
-f Dockerfile2 --no-cache .


#!/bin/bash

# Run the docker build command this uses github to store app code
#Enter the values of the variables after the "=" sign no space.
docker build -t nestapp7 \
--build-arg PERSONAL_ACCESS_TOKEN= \
--build-arg GITHUB_USERNAME= \
--build-arg REPOSITORY_NAME= \
--build-arg WEB_FILE_UNZIP= \
--build-arg DOMAIN_NAME= \
--build-arg RDS_ENDPOINT= \
--build-arg RDS_DB_NAME= \
--build-arg RDS_MASTER_USERNAME= \
--build-arg RDS_DB_PASSWORD= \
.