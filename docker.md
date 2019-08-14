docker build -t "toolbelt" . && docker run -it "toolbelt" /bin/zsh

OR

docker-compose up --build
docker run -it terminal-toolbelt_toolbelt /bin/zsh


For saving:
docker login
docker tag toolbelt iosif/toolbelt
docker push iosif/toolbelt
