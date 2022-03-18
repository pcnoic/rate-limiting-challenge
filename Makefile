API_IMAGE=api

build-api-image:
	docker build -t ${API_IMAGE} .
dependencies:
	cd api/ && pip3 install -r requirements.txt
dev-api:
	cd api/src/ && uvicorn api:app --reload
