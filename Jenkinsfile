
node {
  
  def image
  def mvnHome = tool 'Maven3'
   stage ('checkout') {
        checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '9ffd4ee4-3647-4a7d-a357-5e8746463282', url: 'https://github.com/ramyacloud001/sample-java-app/']]])       
        }
    stage ('Build') {
            sh 'mvn -f pom.xml clean install'            
        }
        
    stage ('archive') {
            archiveArtifacts '**/*.jar'
        }
        
    stage("Build") {
            steps {
                sh "chmod +x -R ${env.WORKSPACE}"
                sh '/var/lib/jenkins/workspace/java-application/deploy1.sh'
            }
        }
    }
