
node {
  
  def image
  def mvnHome = tool 'Maven3'
   
    stage ('Build') {
            sh 'mvn -f sample-java-app/pom.xml clean install'            
        }
        
    stage ('archive') {
            archiveArtifacts '**/*.jar'
        }
        
    stage("Build") {
            steps {
                sh "chmod +x -R ${env.WORKSPACE}"
                sh '/var/lib/jenkins/workspace/guvitask/deploy1.sh'
            }
        }
    }
