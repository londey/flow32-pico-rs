# .devcontainer/Dockerfile
FROM rust:latest

# Install build essentials and ARM cross-compilation tools
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc-arm-none-eabi \
    libnewlib-arm-none-eabi \
    libstdc++-arm-none-eabi-newlib \
    cmake \
    git \
    pkg-config \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# Install cargo-generate and cargo-binutils for Rust
RUN cargo install cargo-generate --features vendored-openssl
RUN rustup component add llvm-tools-preview
RUN cargo install cargo-binutils
RUN rustup target add thumbv6m-none-eabi
# RUN cargo install elf2uf2-rs

# Setup environment for ARM cross-compilation (adjust as needed)
ENV CC_arm_none_eabi=arm-none-eabi-gcc \
    AR_arm_none_eabi=arm-none-eabi-ar