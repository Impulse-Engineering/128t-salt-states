## Impulse Lanner FW7573 - Standard Branch Node Template


data-dhcp ifcfg:
  file.managed:
    - name: /etc/sysconfig/network-scripts/ifcfg-enp2s0
    - source: salt://files/impulse-hq/ifcfg-enp2s0

guestwifi-dhcp ifcfg:
  file.managed:
    - name: /etc/sysconfig/network-scripts/ifcfg-enp2s0.5
    - source: salt://files/impulse-hq/ifcfg-enp2s0.5

voice-dhcp ifcfg:
  file.managed:
    - name: /etc/sysconfig/network-scripts/ifcfg-enp2s0.513
    - source: salt://files/impulse-hq/ifcfg-enp2s0.513

dhcpd config:
  file.managed:
    - name: /etc/dhcp/dhcpd.conf
    - source: salt://files/impulse-hq/impulse-hq-dhcpd.conf
    - user: root
    - group: root
    - mode: 644
