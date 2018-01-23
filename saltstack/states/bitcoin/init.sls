{% set os, os_family = salt['grains.item']('os', 'os_family') %}

# download:
#   file.managed:
#     - source:
#       - http://deploy_keys/config
#     - name:
#       -

add_bitcoin_ppa:
  pkgrepo.managed:
    - ppa: bitcoin/bitcoin

        
