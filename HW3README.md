Jenkins встановлено

<img width="3839" height="1901" alt="image" src="https://github.com/user-attachments/assets/4ff7b6cb-03a6-415a-8b42-cbd1d264f89b" />


<img width="3839" height="1894" alt="image" src="https://github.com/user-attachments/assets/92167bf4-87c1-4327-b446-
a074296c38a2" />
<img width="220" height="220" alt="image" src="https://github.com/user-attachments/assets/aff6a4c1-c317-4df1-8a58-69f86c2f6036" />

##Завдання з зірочкою 1 Jenkinsfile:

pipeline {
    agent any
    tools {
        maven 'HW3'
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -f initial/pom.xml clean install'
            }
        }
        stage('Artifacts') {
            steps {
                archiveArtifacts artifacts: 'initial/target/*.jar'
                }
        }
    }
}
                
            
        

