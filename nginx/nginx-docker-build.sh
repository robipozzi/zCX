docker rmi -f ingresscontroller:1.0
CMD_RUN="docker build -t ingresscontroller:1.0 ."
echo Running Nginx image build with: $CMD_RUN
$CMD_RUN
