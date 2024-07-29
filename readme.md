```
aws ecr-public get-login-password --region us-east-1 --profile <hide> | docker login --username AWS --password-stdin public.ecr.aws/hcsu

docker buildx build --no-cache --platform linux/amd64,linux/arm64 -t hcsu-test . -t public.ecr.aws/hcsu/hcsu-test:latest
```