build:
	npm run build


deploy: build
	sam package --template-file template.yml --output-template-file packaged.yml --s3-bucket sampack-97068
	sam deploy --template-file ./packaged.yml --stack-name eshello --capabilities CAPABILITY_IAM
