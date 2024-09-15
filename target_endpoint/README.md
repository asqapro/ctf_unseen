Perform the following BEFORE starting Suricata for the first time:

(Note that this is NOT in the root directory, it should be run in the local directory)
mkdir ./etc
wget https://rules.emergingthreats.net/open/suricata-7.0.3/emerging.rules.tar.gz
tar zxvf emerging.rules.tar.gz -C ./etc/
rm emerging.rules.tar.gz



Perform the following AFTER starting Suricata for the first time:

docker exec -it --user suricata <container_name> suricata-update -f


Perform the following after starting the Wazuh server to label the Suricata container in Wazuh:

docker exec -i ctf_unseen-wazuh.manager-1 bash < suricata_register.sh