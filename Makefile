DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-mysql
VERSION =		latest
VERSION_ALIASES =
TITLE =			MySQL
DESCRIPTION =		MySQL
SOURCE_URL =		https://github.com/scaleway/image-app-mysql


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
## Here you can add custom commands and overrides
