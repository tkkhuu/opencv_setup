docker run \
	-v /etc/passwd:/etc/passwd:ro \
	-u $(id -u):$(id -g) \
	--rm \
	-it \
	opencv
