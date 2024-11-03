
1. OpenSSH CONFIG
```bash
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.factory-defaults
sudo chmod a-w /etc/ssh/sshd_config.factory-defaults
```

2. Generate your Keys (Private/Public) 
```bash
  ssh-keygen -t ed25519
```
