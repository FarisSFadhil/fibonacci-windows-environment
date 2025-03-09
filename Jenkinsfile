pipeline {
    agent any
    parameters {
        choice(name: 'NUMBER',
            choices: [10, 20, 30, 40, 50, 60, 70, 80, 90],
            description: 'Select the value for F(n) for the Fibonacci sequence.')
    }
    options {
        buildDiscarder(logRotator(daysToKeepStr: '10', numToKeepStr: '10'))
        timeout(time: 12, unit: 'HOURS')
        timestamps()
    }
    triggers {
        cron '@midnight'
    }
    stages {
        stage('Check script') {
            steps {
                bat 'if not exist scripts\\fibonacci.bat echo Script not found! && exit /b 1'
            }
        }
        stage('Relative path') {
            steps {
                bat 'scripts\\fibonacci.bat %NUMBER%'
            }
        }
        stage('Full path') {
            steps {
                bat '"%WORKSPACE%\\scripts\\fibonacci.bat" %NUMBER%'
            }
        }
        stage('Change directory') {
            steps {
                dir('scripts') {
                    bat 'fibonacci.bat %NUMBER%'
                }
            }
        }
    }
}
