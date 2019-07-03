
for r in $(grep 'image: \${DOCKER_REGISTRY}' docker-compose.yml | sed -e 's/^.*\///'|sed -e 's/:.*$//')
do
  aws ecr create-repository --repository-name "marronvert/$r"
done
