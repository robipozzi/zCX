docker rm -f ingress
CMD_RUN="docker run --name ingress --network ingress_net -d -p 8080:80 ingresscontroller:1.0"
echo Running Nginx Ingress controller with: $CMD_RUN
$CMD_RUN