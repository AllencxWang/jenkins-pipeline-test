node {
    stage ('Checkout') {
        echo 'checkout....'
        git 'http://gitlab/awang/jenkins.git'
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