docker rmi -f nodeexporter:1.0
CMD_RUN="docker build -t nodeexporter:1.0 ."
echo Running Nodeexporter image build with: $CMD_RUN
$CMD_RUN
