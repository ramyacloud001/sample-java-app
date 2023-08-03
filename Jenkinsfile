
node {
  
  def image
  def mvnHome = tool 'Maven3'
   stage ('checkout') {
        checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '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', url: 'https://github.com/ramyacloud001/sample-java-app/']]])       
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
