chef_rails_unicorn CHANGELOG
========================

0.1.3
-----
- Add node['chef_rails_unicorn']['pid_file'] to specify pid file name

0.1.2
-----
- Add node['chef_rails_unicorn']['env'] option so user can specify ENV variables for systemd service

0.1.1
-----
- Add LimitNOFILE to systemd service config.
