# Cisco Network Automation CI/CD Pipeline

This project automates configuration of Cisco IOS-XE devices using:
- Docker & Jenkins
- Ansible Playbooks
- GitHub Actions for CI/CD
- Cisco DevNet Always-On Sandbox

## How to Use

### Manual via Docker:
```bash
docker-compose up -d
docker exec -it ansible-cisco /bin/bash
ansible-playbook -i inventory.ini playbooks/basic_config.yml
