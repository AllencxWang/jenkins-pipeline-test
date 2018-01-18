node {
    stage ('Checkout') {
        echo 'checkout....'
        git 'http://gitlab/awang/jenkins.git'
    }

    stage ('Download') {
        sh 'curl -o install_node.sh -s https://deb.nodesource.com/setup_8.x | -E bash -'
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