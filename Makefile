all: base_docker binutils_docker gcc_docker output_docker

base_docker:
	DOCKER_BUILDKIT=1 docker build --file base/Dockerfile --network host --tag kouki-h/linux_cross_openbsd/base .

binutils_docker:
	DOCKER_BUILDKIT=1 docker build --file binutils/Dockerfile --network host --tag kouki-h/linux_cross_openbsd/binutils .

gcc_docker:
	DOCKER_BUILDKIT=1 docker build --file gcc/Dockerfile --network host --tag kouki-h/linux_cross_openbsd/gcc .

output_docker:
	DOCKER_BUILDKIT=1 docker build --file output/Dockerfile --network host --tag kouki-h/linux_cross_openbsd .
