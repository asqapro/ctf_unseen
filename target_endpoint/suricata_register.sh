#!/bin/bash

/var/ossec/bin/agent_groups -a -g Suricata -q
/var/ossec/bin/agent_groups -a -i $(/var/ossec/bin/manage_agents -l | tail -2 | cut -d' ' -f5  | head --bytes -3) -g Suricata -q
echo -e '<agent_config>\n  <localfile>\n    <log_format>json</log_format>\n    <location>/var/log/suricata/eve.json</location>\n  </localfile>\n</agent_config>' > /var/ossec/etc/shared/Suricata/agent.conf