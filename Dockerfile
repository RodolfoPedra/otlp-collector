# Dockerfile utilizado para deploy no Dokku
FROM otel/opentelemetry-collector-contrib:0.144.0

COPY ./config.yaml /etc/otelcol-contrib/config.yaml

ENV HOST_PROC=/hostfs/proc
ENV HOST_SYS=/hostfs/sys
ENV HOST_ROOT=/hostfs

# O comando de entrada padrão da imagem base já costuma ser o otelcol
# Mas é possível reforçar se necessário:
# ENTRYPOINT ["/otelcol-contrib"]
# CMD ["--config", "/etc/otelcol-contrib/config.yaml"]