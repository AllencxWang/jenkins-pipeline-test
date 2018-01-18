node {
    stage ('Checkout') {
        echo 'checkout....'
        git 'http://gitlab/awang/jenkins.git'
    }

    stage ('Download') {
        sh 'source <(curl -s https://deb.nodesource.com/setup_8.x)'
        sh 'apt-get install -y nodejs'
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