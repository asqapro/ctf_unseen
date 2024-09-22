The following configuration is already done, but if the Suricata volumes get wiped for any reason, follow these steps to set things back up.
(These steps are poorly written, clarify them later)

Re-create custom rules:
- mkdir ./etc/rules/
- touch ./etc/rules/local.rules
Edit ./etc/rules/local.rules and add rules.
Edit ./etc/suricata.yaml and add the following line to the "rule-files" section (dash included):
\- /etc/suricata/rules/local.rules

Create suricata rules file:
- mkdir ./lib/rules
- touch ./lib/rules/suricata.rules