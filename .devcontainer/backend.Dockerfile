# Используем официальный образ Golang 1.24
FROM golang:1.24

# Устанавливаем необходимые системные пакеты
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    curl \
    make \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspaces/backend

# RUN go mod download

CMD ["sleep", "infinity"]