# Tag the Docker image for upload
docker tag avorion_server:latest 749099397385.dkr.ecr.ap-southeast-1.amazonaws.com/avorion-server-docker

# Push the Docker image to ECR
docker push 749099397385.dkr.ecr.ap-southeast-1.amazonaws.com/avorion-server-docker

# Pull the Docker image from ECR
# docker pull 749099397385.dkr.ecr.ap-southeast-1.amazonaws.com/avorion-server-docker
