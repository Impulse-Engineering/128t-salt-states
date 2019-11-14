data-dhcp ifcfg:
  file.managed:
    - name: /etc/sysconfig/network-scripts/ifcfg-enp0s20f2
    - source: salt://files/ifcfg-enp0s20f2

voice-dhcp ifcfg:
  file.managed:
    - name: /etc/sysconfig/network-scripts/ifcfg-enp0s20f2.22
    - source: salt://files/ifcfg-enp0s20f2.22

dhcpd config:
  file.managed:
    - name: /etc/dhcp/dhcpd.conf
    - source: salt://files/mercer-branch1-dhcpd.conf
    - user: root
    - group: root
    - mode: 644
