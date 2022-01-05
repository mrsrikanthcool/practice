terraform {
	required_version = ">= 0.12"
}



terraform {
	required_version = ">= 0.12"
}

resource "aws_subnet" "serv"{
	vpc_id = var.vpc_id
	cidr_block = var.cidr_block
}


resource "aws_instance" "server"{
	
	ami = var.ami
	instance_type = var.ins_type
	subnet_id  = aws_subnet.serv.id
	tags={
		Name ="${var.ws_nama} server"
	}
}


