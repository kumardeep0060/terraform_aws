pipeline {

     environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

   agent  any
        stage('checkout') {
            steps {
                 script{
                        dir("terraform")
                        {
                            git "https://github.com/kumardeep0060/terraform_aws.git"
                        }
                    }
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

  
