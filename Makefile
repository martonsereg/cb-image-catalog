download-dev-image-catalog:
	aws s3 cp --region eu-west-1 s3://cloudbreak-info/dev-cb-image-catalog.json dev-cb-image-catalog.json

download-image-catalog:
	aws s3 cp --region eu-west-1 s3://cloudbreak-info/cb-image-catalog.json cb-image-catalog.json

upload-dev-image-catalog:
	aws s3 cp --region eu-west-1 s3://cloudbreak-info/dev-cb-image-catalog.json s3://cloudbreak-info/dev-cb-image-catalog.json-$(shell date +%Y-%m-%d_%H-%M).bak --acl public-read --content-type application/json
	aws s3 cp --region eu-west-1 dev-cb-image-catalog.json  s3://cloudbreak-info/ --acl public-read --content-type application/json

upload-image-catalog:
	aws s3 cp --region eu-west-1 s3://cloudbreak-info/cb-image-catalog.json s3://cloudbreak-info/cb-image-catalog.json-$(shell date +%Y-%m-%d_%H-%M).bak --acl public-read --content-type application/json
	aws s3 cp --region eu-west-1 cb-image-catalog.json  s3://cloudbreak-info/ --acl public-read --content-type application/json
