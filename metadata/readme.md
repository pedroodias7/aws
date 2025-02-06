## Create a bucket


aws s3 s3://metadata-fun-pds-1231

## create a new file

echo "Hello mars" > hello.txt 

## upload file with metadata

aws s3api put-object --bucket m-buck-pds123 --key hello.txt --body hello.txt --metadata Planet=mars

## Get metadata trought head object

aws s3api head-object --bucket m-buck-pds123 --key hello.txt