aws ecr get-login-password --region ap-northeast-2 --profile episoden-dev | docker login --username AWS --password-stdin 493673847347.dkr.ecr.ap-northeast-2.amazonaws.com
docker build --platform=linux/arm64 -t episoden/peerjs-dev --build-arg SERVER_PROFILE=development .
docker tag episoden/peerjs-dev:latest 493673847347.dkr.ecr.ap-northeast-2.amazonaws.com/episoden/peerjs-dev:latest
docker push 493673847347.dkr.ecr.ap-northeast-2.amazonaws.com/episoden/peerjs-dev:latest
