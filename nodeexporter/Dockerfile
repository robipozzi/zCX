########## Dockerfile for Node Exporter #########
# To build this image, from the directory containing this Dockerfile
# (assuming that the file is named Dockerfile):
# docker build -t <image_name> .
# Base Image
FROM s390x/ubuntu:18.04
RUN apt-get update && apt-get install -y prometheus-node-exporter
EXPOSE 9100
# attention: The following command is a very long line and not multiple lines
# please be sure to eliminate any new-line characters that might exist
# from cutting and pasting it
CMD prometheus-node-exporter --path.procfs="/host/proc" --path.sysfs="/host/sys" --collector.diskstats --collector.loadavg --collector.meminfo --collector.netdev --collector.netstat --collector.stat --collector.time --collector.uname --collector.vmstat --collector.filesystem.ignored-mount-points="^/(sys|proc|dev|host|etc)($$|/)"
# this is the first line after the CMD command
