setup:
	# Create a python virtualenv & activate it
	python3 -m venv ~/.devops
	# source ~/.devops/bin/activate
	chmod +x bin/*.sh
	# source bin/set_env.sh

install:
	echo "Install dependencies"
	pip install --upgrade pip && pip install -r app/requirements.txt

hadolint:
	echo "Installing hadolint"
	sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 && chmod +x /bin/hadolint

docker:
	./bin/install-docker.sh

kubectl:
	./bin/install-kubectl.sh

eskctl:
	./bin/install-eksctl.sh

run-docker:
	./bin/run-docker.sh

build-docker:
	./bin/build-docker.sh

upload-docker:
	./bin/upload-docker.sh

create-cluster:
	./bin/create-cluster.sh

deployment:
	./bin/deployment.sh

rolling:
	./bin/rolling.sh

rollback:
	./bin/rollback.sh

forwarding:
	kubectl port-forward "service/devoops-capstone" 80:80

cleanup:
	./bin/cleanup.sh

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint app/Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203,W1202 app/app.py

all: install lint test