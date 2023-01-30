FROM rust:1.66.1-slim-buster

LABEL auther="Randark_JMT"
EXPOSE 8080

RUN sed -i "s/http:\/\/deb.debian.org/http:\/\/mirrors.tuna.tsinghua.edu.cn/g" /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y python3 perl make pkg-config openssl libssl-dev

ENV LITCRYPT_ENCRYPT_KEY="mpdoloumclitaametmodloheiriure"

COPY ./service/config /usr/local/cargo/

RUN cargo install wasm-pack
RUN cargo install wasm-bindgen-cli

COPY ./src /app

COPY ./docker/bin/start.sh /root/start.sh 
RUN chmod +x /root/start.sh 

WORKDIR /app
RUN wasm-pack build --mode no-install --out-dir examples/pkg --target web

ENTRYPOINT [ "/bin/sh","/root/start.sh" ]