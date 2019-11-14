install snmpd:
  pkg.installed:
    - name: net-snmp
  service.running:
    - name: snmpd
    - enable: true

install net-snmp-utils:
  pkg.installed:
    - name: net-snmp-utils

