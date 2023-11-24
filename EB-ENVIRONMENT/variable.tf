variable "eb_application_name" {
    type = string
    description = "ElasticBeanstalk Application Name"
    default = "${params.EB_APP_NAME}"  
}
variable "eb_environment_name" {
    description = "ElasticBeanstalk Environment Name"
    default = var.eb_application_name
  
}
variable "eb_environment_platform" {
    type = string
    description = "ElasticBeanstalk Plaform"
    default = "arn:aws:elasticbeanstalk:${params.AWS_REGION}::platform/Node.js 18 running on 64bit Amazon Linux 2023/6.0.3" 
}
variable "eb_environment_vpc_id" {
    type = string
    description = "ElasticBeanstalk Enviornment VPC ID"
    default = "${elasticbeanstalkVpcExists}"
}
variable "eb_environment_instanceprofile_name" {
    type = string
    description = "ElasticBeanstalk Enviornment EC2InstanceProfile Name"
    default = "FUND-${params.AWS_ENV}-EBS-EC2InstanceProfile"
}
variable "eb_environment_subnets_id" {
    type = string
    description = "ElasticBeanstalk Enviornment Subnets ID"
    default = "${publicsubnet1},${publicsubnet2}"
}
variable "eb_environment_instance_type" {
    type = string
    description = "ElasticBeanstalk Enviornment Instance Type"
    default = "t3.micro"
}
variable "eb_environment_autoscaling_maxcount" {
    type = string
    description = "ElasticBeanstalk Enviornment"
    default = "2"
}