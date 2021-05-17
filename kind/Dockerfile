FROM docker:dind

ARG KIND_VERSION=0.10.0

LABEL version="${KIND_VERSION}"
LABEL maintainer="shimomura@chatwork.com"
LABEL maintainer="ozaki@chatwork.com"

ADD https://kind.sigs.k8s.io/dl/v${KIND_VERSION}/kind-linux-amd64 /usr/local/bin/kind

RUN chmod +x /usr/local/bin/kind

ENTRYPOINT ["/usr/local/bin/kind"]
CMD ["help"]