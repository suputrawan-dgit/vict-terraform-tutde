//ElasticSearch Server Group
// Elastic Host
module "uat_elastic_host_1" {
  source  = "../modules/ec2-instance"

  create = var.victrak_system
  key_name = aws_key_pair.non-prod.key_name
  instance_type = "m5.large"
  ami = data.aws_ami.dgit_centos7_customer.image_id
  security_groups = [aws_security_group.multi_host.id,aws_security_group.non_prod_outbound.id]
  subnet_id = module.vpc_non_prod.private_subnets[0]
  name = format("%s-Elastic-UAT-1",module.global_config.non_prod_environment)
  iam_policy = aws_iam_instance_profile.base_instance_profile.name
  root_size = 40
}

module "uat_elastic_host_2" {
  source  = "../modules/ec2-instance"

  create = var.victrak_system
  key_name = aws_key_pair.non-prod.key_name
  instance_type = "m5.large"
  ami = data.aws_ami.dgit_centos7_customer.image_id
  security_groups = [aws_security_group.multi_host.id,aws_security_group.non_prod_outbound.id]
  subnet_id = module.vpc_non_prod.private_subnets[0]
  name = format("%s-Elastic-UAT-2",module.global_config.non_prod_environment)
  iam_policy = aws_iam_instance_profile.base_instance_profile.name
  root_size = 40
}

module "uat_elastic_host_3" {
  source  = "../modules/ec2-instance"

  create = var.victrak_system
  key_name = aws_key_pair.non-prod.key_name
  instance_type = "m5.large"
  ami = data.aws_ami.dgit_centos7_customer.image_id
  security_groups = [aws_security_group.multi_host.id,aws_security_group.non_prod_outbound.id]
  subnet_id = module.vpc_non_prod.private_subnets[0]
  name = format("%s-Elastic-UAT-3",module.global_config.non_prod_environment)
  iam_policy = aws_iam_instance_profile.base_instance_profile.name
  root_size = 40
}

// app-services Host
module "uat_app_services_host_1" {
  source  = "../modules/ec2-instance"

  create = var.victrak_system
  key_name = aws_key_pair.non-prod.key_name
  instance_type = "m5.2xlarge"
  ami = data.aws_ami.dgit_centos7_customer.image_id
  security_groups = [aws_security_group.multi_host.id,aws_security_group.non_prod_outbound.id,aws_security_group.rds_uat.id,aws_security_group.free_ipa_non_prod.id]
  subnet_id = module.vpc_non_prod.private_subnets[0]
  name = format("%s-App-Services-UAT-1",module.global_config.non_prod_environment)
  iam_policy = aws_iam_instance_profile.base_instance_profile.name
  root_size = 40
}

module "uat_app_services_host_2" {
  source  = "../modules/ec2-instance"

  create = var.victrak_system
  key_name = aws_key_pair.non-prod.key_name
  instance_type = "m5.2xlarge"
  ami = data.aws_ami.dgit_centos7_customer.image_id
  security_groups = [aws_security_group.multi_host.id,aws_security_group.non_prod_outbound.id,aws_security_group.rds_uat.id,aws_security_group.free_ipa_non_prod.id]
  subnet_id = module.vpc_non_prod.private_subnets[0]
  name = format("%s-App-Services-UAT-2",module.global_config.non_prod_environment)
  iam_policy = aws_iam_instance_profile.base_instance_profile.name
  root_size = 40
}

// Web services Host
module "uat_web_services_host_1" {
  source  = "../modules/ec2-instance"

  create = var.victrak_system
  key_name = aws_key_pair.non-prod.key_name
  instance_type = "m5.xlarge"
  ami = data.aws_ami.dgit_centos7_customer.image_id
  security_groups = [aws_security_group.multi_host.id,aws_security_group.non_prod_outbound.id,aws_security_group.rds_uat.id,aws_security_group.free_ipa_non_prod.id]
  subnet_id = module.vpc_non_prod.private_subnets[0]
  name = format("%s-Web-Services-UAT-1",module.global_config.non_prod_environment)
  iam_policy = aws_iam_instance_profile.base_instance_profile.name
  root_size = 40
}

module "uat_web_services_host_2" {
  source  = "../modules/ec2-instance"

  create = var.victrak_system
  key_name = aws_key_pair.non-prod.key_name
  instance_type = "m5.xlarge"
  ami = data.aws_ami.dgit_centos7_customer.image_id
  security_groups = [aws_security_group.multi_host.id,aws_security_group.non_prod_outbound.id,aws_security_group.rds_uat.id,aws_security_group.free_ipa_non_prod.id]
  subnet_id = module.vpc_non_prod.private_subnets[0]
  name = format("%s-Web-Services-UAT-2",module.global_config.non_prod_environment)
  iam_policy = aws_iam_instance_profile.base_instance_profile.name
  root_size = 40
}

// Infa Host
module "uat_infa_host_1" {
  source  = "../modules/ec2-instance"

  create = var.victrak_system
  key_name = aws_key_pair.non-prod.key_name
  instance_type = "t3.medium"
  ami = data.aws_ami.dgit_centos7_customer.image_id
  security_groups = [aws_security_group.multi_host.id,aws_security_group.non_prod_outbound.id,aws_security_group.free_ipa_non_prod.id]
  subnet_id = module.vpc_non_prod.database_subnets[0]
  name = format("%s-Infa-UAT-1",module.global_config.non_prod_environment)
  iam_policy = aws_iam_instance_profile.base_instance_profile.name
  root_size = 40
}

module "uat_infa_host_2" {
  source  = "../modules/ec2-instance"

  create = var.victrak_system
  key_name = aws_key_pair.non-prod.key_name
  instance_type = "t3.medium"
  ami = data.aws_ami.dgit_centos7_customer.image_id
  security_groups = [aws_security_group.multi_host.id,aws_security_group.non_prod_outbound.id,aws_security_group.free_ipa_non_prod.id]
  subnet_id = module.vpc_non_prod.database_subnets[0]
  name = format("%s-Infa-UAT-2",module.global_config.non_prod_environment)
  iam_policy = aws_iam_instance_profile.base_instance_profile.name
  root_size = 40
}

module "uat_infa_host_3" {
  source  = "../modules/ec2-instance"

  create = var.victrak_system
  key_name = aws_key_pair.non-prod.key_name
  instance_type = "t3.medium"
  ami = data.aws_ami.dgit_centos7_customer.image_id
  security_groups = [aws_security_group.multi_host.id,aws_security_group.non_prod_outbound.id,aws_security_group.free_ipa_non_prod.id]
  subnet_id = module.vpc_non_prod.database_subnets[0]
  name = format("%s-Infa-UAT-3",module.global_config.non_prod_environment)
  iam_policy = aws_iam_instance_profile.base_instance_profile.name
  root_size = 40
}

//Elasticsearch EFS data store
resource "aws_efs_file_system" "elasticsearch" {
    count = var.victrak_system ? 1 : 0
    performance_mode = "generalPurpose"
    encrypted = true
}

resource "aws_efs_mount_target" "es_a" {
  count = var.victrak_system ? 1 : 0
  file_system_id = aws_efs_file_system.elasticsearch[0].id
  subnet_id      = module.vpc_non_prod.private_subnets[0]
  security_groups = aws_security_group.efs_elasticsearch.id

}

resource "aws_efs_mount_target" "es_b" {
  count = var.victrak_system ? 1 : 0
  file_system_id = aws_efs_file_system.elasticsearch[0].id
  subnet_id      = module.vpc_non_prod.private_subnets[1]
  security_groups = aws_security_group.efs_elasticsearch.id
}

resource "aws_efs_mount_target" "es_c" {
  count = var.victrak_system ? 1 : 0
  file_system_id = aws_efs_file_system.elasticsearch[0].id
  subnet_id      = module.vpc_non_prod.private_subnets[2]
  security_groups = aws_security_group.efs_elasticsearch.id
}

//ALB
module "uat_alb" {
  source  = "../modules/alb"

  create = var.victrak_system
  elb_subnet_ids = [module.vpc_non_prod.public_subnets[0],module.vpc_non_prod.public_subnets[1]]
  elb_security_groups = [aws_security_group.dgit_alb_non_prod.id]
  instance_list = [module.uat_web_services_host_1.id,module.uat_web_services_host_2.id]
  name = format("%s-ELB-UAT",module.global_config.non_prod_environment)

  module_depends_on = [module.uat_web_services_host_1.id,module.uat_web_services_host_2.id]
}

data "aws_kms_alias" "rds" {
  name = "alias/aws/rds"
}

// RDS postgres instance
resource "aws_db_instance" "postgresql_uat" {
  count = var.victrak_system ? 1 : 0
  identifier         = lower(format("%s-Instance",module.global_config.non_prod_environment))
  instance_class     = "db.m5.large"
  engine             = "postgres"
  engine_version     = "10.10"
  availability_zone = data.aws_availability_zones.available.names[0]
  auto_minor_version_upgrade = true
  db_subnet_group_name = lower(module.global_config.non_prod_environment)
  final_snapshot_identifier = lower(format("%s-FinalSnap",module.global_config.non_prod_environment))
  kms_key_id = data.aws_kms_alias.rds.target_key_arn
  vpc_security_group_ids = [aws_security_group.rds_uat.id]
  #multi_az
  #replicate_source_db
  deletion_protection = true
  allocated_storage = 100
  max_allocated_storage = 1000
  username         = "postgres"
  password         = data.vault_generic_secret.aws.data["rds_uat_master_pass"]
  storage_encrypted = true
}
