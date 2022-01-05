provider "aws"{
	region = "ap-south-1"
}

resource "aws_vpc" "myVpc"{
	cidr_block = "10.0.0.0/16"	
}



module "server"{
	source = "E:/axiomio/ax1v"
	vpc_id = aws_vpc.myVpc.id
	cidr_block = "10.0.0.0/16"
	ws_nama = "sample"
	ami = "ami-052cef05d01020f1d"
	ins_type="t2.micro"
	
        
}