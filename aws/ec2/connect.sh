# Login to AWS ECR
aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 749099397385.dkr.ecr.ap-southeast-1.amazonaws.com/avorion-server-docker
