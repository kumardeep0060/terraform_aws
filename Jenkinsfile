pipeline {

     environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

   agent  any
     stages {
        stage('checkout') {
             steps {
                  echo "hello"
             }
            }

        stage('Plan') {
            steps {
                 echo "plan done"
            }
        }
        stage('Approval') {
          
           steps {
               echo "plan aprove"
           }
       }

        stage('Apply') {
            steps {
              echo "plan appplied"  
            }
        }
    }
}
 
