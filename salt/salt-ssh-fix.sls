#temporary workaround for https://github.com/saltstack/salt/issues/9878 and related bugs.
#this hack proposed by edgan in https://github.com/saltstack-formulas/salt-formula/issues/140

salt-ssh fix map:
  file.managed:
    - name: /var/tmp/salt.map.jinja
    - source: salt://salt/map.jinja
    - replace: False
    - create: False

salt-ssh fix formulas:
  file.managed:
    - name: /var/tmp/salt.formulas.jinja
    - source: salt://salt/formulas.jinja
    - replace: False
    - create: False

