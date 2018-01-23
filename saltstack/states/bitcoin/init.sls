base:
  pkgrepo.managed:
    - ppa: bitcoin/bitcoin
  pkg.latest:
    - refresh: True

install bitcoind:
  pkg.installed:
    - pkgs:
      - bitcoind

start_bitcoind:
  cmd.run:
    - name: bitcoind -daemon

check_service_status:
  cmd.run:
    - name: bitcoin-cli getinfo
