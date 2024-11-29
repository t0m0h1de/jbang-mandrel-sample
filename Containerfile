FROM quay.io/quarkus/ubi-quarkus-mandrel-builder-image:23.1-java21

ARG version=0.106.1

USER 0

WORKDIR /tmp/jbang-${version}-installation

RUN curl -Ls "https://github.com/jbangdev/jbang/releases/download/v${version}/jbang-${version}.zip" --output jbang-${version}.zip && \
    unzip jbang-${version}.zip && \
    rm jbang-${version}.zip && \
    chmod +x jbang-${version}/bin/jbang && \
    mv jbang-${version}/bin/* /usr/local/bin/

ENTRYPOINT ["jbang"]
