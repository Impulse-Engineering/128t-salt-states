data-dhcp ifcfg:
  file.managed:
    - name: /etc/sysconfig/network-scripts/ifcfg-enp2s0
    - source: salt://files/mercer-sb/ifcfg-enp2s0

guestwifi-dhcp ifcfg:
  file.managed:
    - name: /etc/sysconfig/network-scripts/ifcfg-enp2s0.150
    - source: salt://files/mercer-sb/ifcfg-enp2s0.150

voice-dhcp ifcfg:
  file.managed:
    - name: /etc/sysconfig/network-scripts/ifcfg-enp2s0.22
    - source: salt://files/mercer-sb/ifcfg-enp2s0.22

dhcpd config:
  file.managed:
    - name: /etc/dhcp/dhcpd.conf
    - source: salt://files/mercer-sb/mercer-sb-dhcpd.conf
    - user: root
    - group: root
    - mode: 644
