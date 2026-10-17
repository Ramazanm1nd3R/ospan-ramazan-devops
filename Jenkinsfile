pipeline {
    agent any
    environment {
        STUDENT_NAME = 'Ramazan'
        STUDENT_SURNAME = 'Ospan'
        STUDENT_GROUP = 'IT2-2310'
        STUDENT_ID = '38045'
    }
    stages {
        stage('Checkout') {
            steps {
                echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                echo "Group: ${STUDENT_GROUP}"
                echo "Student ID: ${STUDENT_ID}"
                checkout scm
            }
        }
        stage('Build') {
            steps { sh 'chmod +x app/app.sh && ls -la' }
        }
        stage('Test') {
            steps { sh 'test -f Ospan_Ramazan_info.txt && echo "Info file OK"' }
        }
        stage('Docker Build') {
            steps { sh 'docker build -t ospan-ramazan-devops .' }
        }
        stage('Docker Run') {
            steps { sh 'docker run --rm ospan-ramazan-devops' }
        }
    }
}
