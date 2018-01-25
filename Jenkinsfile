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
        dir ('samuel-test') {
            sh 'yarn install'
            sh 'CI=true yarn test'
        }
    }

    stage ('Deploy') {
        echo 'deploying....'
        sh 'tar czf app.tgz samuel-test'
        sh 'scp app.tgz root@app:~'
        sh 'scp deploy.sh root@app:~'
        sh 'rm app.tgz'
        sh 'ssh root@app sh deploy.sh'
    }
}