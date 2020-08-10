FROM alpine:3.11

ENV KUBE_LATEST_VERSION="v1.18.3"
ENV HELM_VERSION="v3.2.4"


RUN apk update && apk add --no-cache python py-pip ca-certificates bash git openssh curl &&\
    git clone https://github.com/mjschmidt/offline-helm-project.git &&\
    pip install awscli &&\
    wget https://dl.min.io/client/mc/release/linux-amd64/mc && chmod +x mc && mv mc /usr/bin &&\
    wget -q https://storage.googleapis.com/kubernetes-release/release/${KUBE_LATEST_VERSION}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl &&\
    chmod +x /usr/local/bin/kubectl &&\
    wget -q https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz -O - | tar -xzO linux-amd64/helm > /usr/local/bin/helm &&\
    chmod +x /usr/local/bin/helm && chmod g+rwx /root


CMD /bin/sh

