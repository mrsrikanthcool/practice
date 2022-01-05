provider "aws"{
	region ="ap-south-1"
}

resource "aws_s3_bucket" "myBucket"{
	bucket_prefix= var.b_name
	acl = var.clist
	tags= var.axs
}


resource "aws_iam_policy" "jsonencode"{
	name = "policy"
	policy = jsonencode({

	    "Version": "2012-10-17"
 	    "Statement"= [
 	        {
          	  "Effect"= "Allow",
           					
          	  "Action"=[ "s3:ListBucket"],
           					
     		   "Resource"= [
        		
        			aws_s3_bucket.myBucket.arn
      		    ]
     		

       		  },
		  {
          	    "Effect"= "Allow",
           					
          	    "Action"=[ "s3:GetObject",
				"s3:PutObject"
 			],
           					
     		    "Resource"= [
        		
        			"${aws_s3_bucket.myBucket.arn}/*"
      		             ]
     						 
       		    }
    				        
              ] 
	})

}





