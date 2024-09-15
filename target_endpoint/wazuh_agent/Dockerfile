FROM debian:bookworm-slim

COPY entrypoint.sh /

RUN apt-get update && apt-get -y install curl gpg procps && \
    curl -s https://packages.wazuh.com/key/GPG-KEY-WAZUH | gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/wazuh.gpg --import && \
    chmod 644 /usr/share/keyrings/wazuh.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/wazuh.gpg] https://packages.wazuh.com/4.x/apt/ stable main" | tee -a /etc/apt/sources.list.d/wazuh.list && \
    apt-get update && \
    apt-get -y install wazuh-agent=4.7.2-1 && \
    sed -i "s/MANAGER_IP/wazuh.manager/" /var/ossec/etc/ossec.conf && \
    echo "wazuh-agent hold" | dpkg --set-selections && \
    rm -rf /var/lib/apt/lists/* && \
    chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]