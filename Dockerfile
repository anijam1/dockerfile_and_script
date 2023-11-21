FROM almalinux:8
COPY . /app
WORKDIR /app
RUN dnf -y install passwd
RUN useradd yust1
RUN chmod +x /app/script.sh
CMD ["/app/script.sh"]
