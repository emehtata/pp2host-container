NAME=pp2host
IMAGE ?= localhost:5000/pp2host:latest

install:
	helm install $(NAME) chart -n $(NAME) --create-namespace

uninstall:
	helm uninstall $(NAME) -n $(NAME)

build:
	docker build . -t $(IMAGE)

run:
	docker run --name $(NAME) \
	 -p 4500:4500 \
	 -p 4501:4501 \
	 -v $(PWD)/pp2host:/etc/pp2host \
	$(IMAGE)

stop:
	docker stop $(NAME)

rm:
	docker rm $(NAME)

rmi:
	docker rmi $(IMAGE)

push:
	docker push $(IMAGE)
