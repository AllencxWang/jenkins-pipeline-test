node {
    stage ('Checkout') {
        echo 'checkout....'
        git 'http://gitlab/awang/jenkins.git'
    }

    stage ('Download') {
        sh 'curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -'
        sh 'sudo apt-get install -y nodejs
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