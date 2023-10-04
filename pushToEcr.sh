aws ecr get-login-password --region ap-northeast-2 --profile episoden-prd | docker login --username AWS --password-stdin 817591763443.dkr.ecr.ap-northeast-2.amazonaws.com
docker build --platform=linux/arm64 -t episoden/peerjs-prd --build-arg SERVER_PROFILE=production .
docker tag episoden/peerjs-prd:latest 817591763443.dkr.ecr.ap-northeast-2.amazonaws.com/episoden/peerjs-prd:latest
docker push 817591763443.dkr.ecr.ap-northeast-2.amazonaws.com/episoden/peerjs-prd:latest