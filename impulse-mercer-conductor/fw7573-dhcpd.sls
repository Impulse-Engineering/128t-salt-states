## Impulse Lanner FW7573 - Standard Branch Node Template

install dhcpd:
  pkg.installed:
    - name: dhcp
  service.running:
    - name: dhcpd
    - enable: true
