{% set os, os_family = salt['grains.item']('os', 'os_family') %}

add_bitcoin_ppa:
  pkgrepo.managed:
    - ppa: bitcoin/bitcoin

install bitcoind:
  pkg.installed:
    - pkgs:
      - bitcoind

start_bitcoind:
  cmd.run:
    - name: bitcoind -daemon
