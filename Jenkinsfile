node {
    env.NODEJS_HOME = "${tool 'NodeJS_9_4_0'}"
    env.PATH="${env.NODEJS_HOME}/bin:${env.PATH}"
    sh 'npm --version'

    stage ('Checkout') {
        git 'http://gitlab/awang/jenkins.git'
    }
    
    stage ('Test') {
        dir ('react-test') {
            sh 'yarn install'
            sh 'CI=true yarn test'
        }
    }

    stage ('Deploy') {
        dir ('react-test') {
            sh 'tar -zcvf app.tgz index.js package.json public/* src/*'
            sh 'scp app.tgz root@app:~'
            sh 'scp deploy.sh root@app:~'
            sh 'rm app.tgz'
            sh 'ssh root@app sh deploy.sh >/dev/null 2>&1 &'
        }
    }
}