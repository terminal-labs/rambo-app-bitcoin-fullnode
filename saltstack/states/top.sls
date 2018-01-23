base:
  'roles:project':
    - match: grain
    - basebox
    - basebox.symlink
    - users                     {# requires basebox #}
    - bitcoin
  'roles:dev':
    - match: grain
    - users.aliases             {# requires users #}
