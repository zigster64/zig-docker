FROM alpine:latest

WORKDIR /zig

RUN wget https://ziglang.org/builds/zig-linux-aarch64-0.11.0-dev.3970+7a8002a5c.tar.xz -O zig-linux-arm.tar.xz

RUN tar -xf zig-linux-arm.tar.xz -C /zig --strip-components=1

RUN rm zig-linux-arm.tar.xz

RUN /zig/zig version

ENV PATH="/zig:$PATH"

CMD ["zig"]
