IMAGE ?= iamjameshunt/html2pdf

latest:
	docker build -t $(IMAGE):$@ .

publish: latest
	docker push $(IMAGE)
