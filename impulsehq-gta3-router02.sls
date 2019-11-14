## Impulse Lanner FW7573 - Standard Branch Node Template


live-data-vlan501 ifcfg:
  file.managed:
    - name: /etc/sysconfig/network-scripts/ifcfg-enp2s0.501
    - source: salt://files/impulse-gta3/impulsehq-gta3-router02/ifcfg-enp2s0.501

data-vlan512 ifcfg:
  file.managed:
    - name: /etc/sysconfig/network-scripts/ifcfg-enp2s0.512
    - source: salt://files/impulse-gta3/impulsehq-gta3-router02/ifcfg-enp2s0.512

voice-vlan513 ifcfg:
  file.managed:
    - name: /etc/sysconfig/network-scripts/ifcfg-enp2s0.513
    - source: salt://files/impulse-gta3/impulsehq-gta3-router02/ifcfg-enp2s0.513

install dhcpd:
  pkg.installed:
    - name: dhcp
  service.running:
    - name: dhcpd
    - enable: true

dhcpd config:
  file.managed:
    - name: /etc/dhcp/dhcpd.conf
    - source: salt://files/impulse-gta3/impulsehq-gta3-router02/impulsehq-gta3-router02-dhcpd.conf
    - user: root
    - group: root
    - mode: 644
