## Impulse Lanner FW7573 - Standard Branch Node Template


vlan10 ifcfg:
  file.managed:
    - name: /etc/sysconfig/network-scripts/ifcfg-eno2.10
    - source: salt://files/rdouglas-lab/ifcfg-eno2.10

install dhcpd:
  pkg.installed:
    - name: dhcp
  service.running:
    - name: dhcpd
    - enable: true

dhcpd config:
  file.managed:
    - name: /etc/dhcp/dhcpd.conf
    - source: salt://files/rdouglas-lab/dhcpd.conf
    - user: root
    - group: root
    - mode: 644
