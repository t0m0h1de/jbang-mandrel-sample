FROM quay.io/quarkus/ubi-quarkus-mandrel-builder-image:23.1-java21

USER quarkus

RUN curl -Ls https://sh.jbang.dev | bash -s - app setup

USER 0

ENTRYPOINT ["/home/quarkus/.jbang/bin/jbang"]

CMD [ "--version" ]
