data17-dhcp ifcfg:
  file.managed:
    - name: /etc/sysconfig/network-scripts/ifcfg-enp2s0.17
    - source: salt://files/mercer-sb/ifcfg-enp2s0.17

dhcpd config:
  file.managed:
    - name: /etc/dhcp/dhcpd.conf
    - source: salt://files/mercer-sb/mercer-sb-dhcpd.conf
    - user: root
    - group: root
    - mode: 644
