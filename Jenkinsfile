node('java-docker-slave') {
    stage ('CheckOut GitHub') {
        
     	 checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'github', url: 'https://github.com/juananmora/demo-minsait-local.git']]])
	}
    stage ('Build') {
         sh "mvn package" 
    }
	stage ('Upload Artifact') {
	   nexusPublisher nexusInstanceId: 'localNexus', nexusRepositoryId: 'snapshots', packages: [[$class: 'MavenPackage', mavenAssetList: [[classifier: '', extension: '', filePath: 'target/demominsait.war']], mavenCoordinate: [artifactId: 'demominsait', groupId: 'org.jenkins-ci.demominsait', packaging: 'war', version: '$BUILD_NUMBER']]]
	}
	stage('SonarQube analysis') {
		withSonarQubeEnv('sonar') {
		  sh 'mvn sonar:sonar'
		} // submitted SonarQube taskId is automatically attached to the pipeline context
	}
	stage("Quality Gate"){
	    //timeout(time: 1, unit: 'HOURS') { // Just in case something goes wrong, pipeline will be killed after a timeout
		sleep(20)
		def qg = waitForQualityGate() // Reuse taskId previously collected by withSonarQubeEnv
		if (qg.status != 'OK') {
		  error "Pipeline aborted due to quality gate failure: ${qg.status}"
		}
    }
    docker.withTool("docker") { 
		withDockerServer([credentialsId: "", uri: "unix:///var/run/docker.sock"]) { 
			stage ('Deploy') {
				 sh "docker cp ./target/demominsait.war tomcatcomposedos:/opt/apache-tomcat-8.5.37/webapps/"
				 sh "docker restart tomcatcomposedos"
			}
			stage ('Updates BBDD'){
				 sh "docker cp update.sql mysqlcompose:/"
				 sh "docker exec -i mysqlcompose mysql -uroot -pbmcAdm1n demominsait < update.sql;"

			 }
			stage ('Build Image'){
				sh "docker build -t juananmora/tomcatminsait:'$BUILD_NUMBER' ."
				sh "docker login -u juananmora -p gloyjonas"
				sh "docker push juananmora/tomcatminsait:'$BUILD_NUMBER'"
				sh "docker image rm juananmora/tomcatminsait:'$BUILD_NUMBER'"
				//sh """docker rmi "\$(docker images -f 'dangling=true' -q)\""""
			 }
			stage ('Deploy Test Environment'){
				//sh "docker stop tomcatdemo"
				//sh "docker rm tomcatdemo"
				sh "docker rm -f tomcatminsait > /dev/null 2>&1 && echo 'removed container' || echo 'nothing to remove'"
				sh "docker create -it --add-host jpetstore-db.bmc.aws.local:172.23.0.3 --network netcompose --name tomcatminsait -p 8076:8080 juananmora/tomcatminsait:'$BUILD_NUMBER' catalina.sh run"
				sh "docker start tomcatminsait"
			 }
		}
    }
}



