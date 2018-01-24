node {
    env.NODEJS_HOME = "${tool 'NodeJS_9_4_0'}"
    env.PATH="${env.NODEJS_HOME}/bin:${env.PATH}"
    sh 'npm --version'

    stage ('Checkout') {
        echo 'checkout....'
        git 'http://gitlab/awang/jenkins.git'
    }
    
    stage ('Test') {
        echo 'testing....'
        sh 'npm install'
        sh 'npm test'
    }

    stage ('Deploy') {
        echo 'deploying....'
        sh 'tar czf app.tgz tests/* app.js index.js package.json yarn.lock'
        sh 'scp app.tgz root@app:~'
        sh 'rm app.tgz'
    }
  
    stage ('End') {
        echo 'ending....'
    }
}