node {
    stage ('Checkout') {
        echo 'checkout....'
        git 'http://gitlab/awang/jenkins.git'
    }

    stage ('Download') {
        sh 'curl -o install_node.sh -s https://deb.nodesource.com/setup_8.x'
        sh 'sudo sh install_node.sh'
        sh 'sudo apt-get install -y nodejs'
    }
    
    stage ('Test') {
        echo 'testing....'
        sh 'npm install'
        sh 'npm test'
    }
    
    stage ('End') {
        echo 'ending....'
    }
}