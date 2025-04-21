pipeline {
  agent {
    docker {
      image 'williamyeh/ansible:alpine3' // lightweight image with Ansible
    }
  }

  environment {
    ANSIBLE_HOST_KEY_CHECKING = 'False'
  }

  stages {
    stage('Clone GitHub Repo') {
      steps {
        git branch: 'main', url: 'https://github.com/Dsnks-19/network-cisco-automation.git'
      }
    }

    stage('Run Ansible Playbook') {
      steps {
        sh 'ansible-playbook -i inventory.ini playbooks/basic_config.yml'
      }
    }
  }

  post {
    failure {
      echo '❌ Build failed. Please check logs above.'
    }
    success {
      echo '✅ Playbook executed successfully.'
    }
  }
}
