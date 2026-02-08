# Define a imagem base
FROM otel/opentelemetry-collector-contrib:0.144.0

# Copia o arquivo de configuração local para dentro da imagem
# Isso substitui a necessidade de um bind mount para o config.yaml
COPY ./config.yaml /etc/otelcol-contrib/config.yaml

# Define variáveis de ambiente que são estáticas
ENV HOST_PROC=/hostfs/proc
ENV HOST_SYS=/hostfs/sys
ENV HOST_ROOT=/hostfs

# O comando de entrada padrão da imagem base já costuma ser o otelcol
# Mas você pode reforçar se necessário:
# ENTRYPOINT ["/otelcol-contrib"]
# CMD ["--config", "/etc/otelcol-contrib/config.yaml"]