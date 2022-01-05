variable "vpc_id"{
	type =string
	description = "VPC id"
	default="my-s3-bucket-"
}



variable "ws_nama"{
	type=string
	description ="webserver name"

}

variable "ami"{
	type = string
	description = "AMI to use foe webserver"
}

variable "ins_type"{
	type = string
	description = "instance type"

}
variable "cidr_block"{
	type = string
	description ="subnet cidr_block"
}