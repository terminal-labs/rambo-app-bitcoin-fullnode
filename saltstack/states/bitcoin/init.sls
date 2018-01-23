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
    - cwd: /home/{{ grains['deescalated_user'] }}
    - runas: {{ grains['deescalated_user'] }}
    - require:
      - sls: users
