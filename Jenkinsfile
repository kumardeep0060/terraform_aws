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
                sh 'pwd;cd  /var/lib/jenkins/workspace/test_aws_pipeline ; terraform init -input=false'
                //sh 'pwd;cd /var/lib/jenkins/workspace/test_aws_pipeline ; terraform workspace new ${environment}'
                //sh 'pwd;cd /var/lib/jenkins/workspace/test_aws_pipeline ; terraform workspace select ${environment}'
                sh "pwd;cd /var/lib/jenkins/workspace/test_aws_pipeline ;terraform plan -input=false -out tfplan "
                sh 'pwd;cd /var/lib/jenkins/workspace/test_aws_pipeline ;terraform show -no-color tfplan > tfplan.txt'
            }
        }
        stage('Approval') {
           when {
               not {
                   equals expected: true, actual: params.autoApprove
               }
           }

           steps {
               script {
                    def plan = readFile 'sh cd /var/lib/jenkins/workspace/test_aws_pipeline/tfplan.txt'
                    input message: "Do you want to apply the plan?",
                    parameters: [text(name: 'Plan', description: 'Please review the plan', defaultValue: plan)]
               }
           }
       }

        stage('Apply') {
            steps {
                sh "pwd;cd /var/lib/jenkins/workspace/test_aws_pipeline ; terraform apply -input=false tfplan"
            }
        }
    }

  
