node {
    stage ('Checkout') {
        echo 'checkout....'
        git 'http://gitlab/awang/jenkins.git'
    }
    
    stage ('Test') {
        echo 'testing....'
        cd jenkins
        npm install
        npm test
    }
    
    stage ('End') {
        echo 'ending....'
    }
}