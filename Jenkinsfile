pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/Dsnks-19/network-cisco-automation.git'
      }
    }

    stage('Install Ansible') {
      steps {
        sh 'sudo apt update && sudo apt install -y ansible sshpass'
      }
    }

    stage('Run Playbook') {
      steps {
        sh 'ansible-playbook -i inventory.ini playbooks/basic_config.yml'
      }
    }
  }
}
