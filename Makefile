.PHONY: image bash clean

image:
	docker build -t 3d_gpx_photo_frame:latest .

bash: image
	docker run --rm -it -v ${PWD}:/root/project --workdir /root/project 3d_gpx_photo_frame:latest /bin/bash

clean:
	docker rmi 3d_gpx_photo_frame:latest
