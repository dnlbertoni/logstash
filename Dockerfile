FROM docker.elastic.co/logstash/logstash:8.12.0

# Elimina el archivo de configuración predeterminado y copia el tuyo
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
COPY logstash/pipeline/ /usr/share/logstash/pipeline/

# Instala el plugin jdbc
RUN /usr/share/logstash/bin/logstash-plugin install logstash-output-jdbc

# Puedes comentar la siguiente línea si no necesitas copiar archivos de configuración adicionales
# COPY logstah/config/ /usr/share/logstash/config/
