# [Choice] Debian OS version (use bullseye on local arm64/Apple Silicon): buster, bullseye
ARG VARIANT="sudo"
FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:16-${VARIANT}
ARG DFX_VERSION="0.9.3"

# [Optional] Uncomment this section to install additional packages.
COPY install-base-debian.sh .
RUN ./install-base-debian.sh
RUN curl -fsSL https://sdk.dfinity.org/install.sh > install.sh && \
    chmod +x install.sh && \
    DFX_VERSION=$DFX_VERSION  ./install.sh && \
    rm install.sh
    