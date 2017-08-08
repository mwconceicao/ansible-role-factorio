Factorio Ansible Role
=====================

Install and configure [Factorio](https://www.factorio.com/), including [factorio-init](https://github.com/Bisa/factorio-init) and [factorio-updater](https://github.com/narc0tiq/factorio-updater).

This role isn't 100%. **factorio-init** needs some work and maybe some other things I don't recall.

**Contributions welcomed!**

# Vars

* You can check the possible variables in `defaults/main.yml`
* Most common ones (with default values):
```yaml
factorio_version: 0.14.20
factorio_port: 34197
factorio_latency: 250
factorio_autosave_interval: 10
factorio_server_settings: game.json
factorio_bin_args: "--disallow-commands"
```

# Usage / example playbook

```yaml
---
- name: My Factorio server
  hosts: my_factorio
  become: yes

  vars:
    factorio_server_settings: myfactorioconfigs.json

  roles:
    - factorio
```

# Footnote

Somewhat inspired by [caspark/ansible-factorio](https://github.com/caspark/ansible-factorio) et al
