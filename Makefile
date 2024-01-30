VENV_NAME = venv
ACTIVATE = $(VENV_NAME)/bin/activate

.PHONY: all venv install dev clean push

all: dev

venv:
	python3 -m venv $(VENV_NAME)

activate: venv
	@echo "Activating virtual environment..."
	@. $(ACTIVATE)

install:
	@echo "Installing project in editable mode..."
	@pip install -e .

dev: venv activate install

clean:
	@echo "Cleaning up..."
	@rm -rf $(VENV_NAME)

# Build and push Docker image to registry
REGISTRY = us.gcr.io/numeric-chassis-412718
TAG = dev
IMAGE_NAME = calculate-app

push: build
	@echo "Pushing Docker image to registry..."
	docker tag $(IMAGE_NAME) $(REGISTRY)/$(IMAGE_NAME):$(TAG)
	docker push $(REGISTRY)/$(IMAGE_NAME):$(TAG)

build:
	@echo "Building Docker image..."
	docker build -t $(IMAGE_NAME) .