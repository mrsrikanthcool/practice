variable "b_name"{
	type = string
	description = "Creates S3 bucket"
	default = "my-s3-bucket-"


}

variable "axs"{
	type = map
	default={
		terraform = true,
		environment = "DEV"
	}

}

variable "clist"{
	type = string
	default = "private"
}