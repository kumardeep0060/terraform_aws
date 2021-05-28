pipeline {

     environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

   agent  any
        stages('checkout') {
             steps {
                  echo "hello"
             }
            }

        stages('Plan') {
            steps {
                 echo "plan done"
            }
        }
        stages('Approval') {
          
           steps {
               echo "plan aprove"
           }
       }

        stages('Apply') {
            steps {
              echo "plan appplied"  
            }
        }
    }

  
