variable "bucketname" {
    type = string
    default = "cde-coloradocovid13"
}


resource "aws_s3_bucket" "coloradoCovid_bucket" {
  bucket = var.bucketname
  acl    = "private"
}

resource "aws_s3_bucket_object" "NYT_us" {
    bucket   = aws_s3_bucket.coloradoCovid_bucket.id
    acl      = "private"
    key      = "Landing/NYT/us.csv"
    source   = "Data/NYT/us.csv" 
}

resource "aws_s3_bucket_object" "NYT_counties" {
    bucket   = aws_s3_bucket.coloradoCovid_bucket.id
    acl      = "private"
    key      = "Landing/NYT/us-counties.csv"
    source   = "Data/NYT/us-counties.csv" 
}

resource "aws_s3_bucket_object" "NYT_states" {
    bucket   = aws_s3_bucket.coloradoCovid_bucket.id
    acl      = "private"
    key      = "Landing/NYT/us-states.csv"
    source   = "Data/NYT/us-states.csv" 
}

resource "aws_s3_bucket_object" "JHU-TS" {
    bucket   = aws_s3_bucket.coloradoCovid_bucket.id
    acl      = "private"
    key      = "Landing/JHU/10-14-2020.csv"
    source   = "Data/JHU/10-14-2020.csv" 
}

resource "aws_s3_bucket_object" "coloradoCovid" {
    bucket   = aws_s3_bucket.coloradoCovid_bucket.id
    acl      = "private"
    key      = "Landing/ColoradoCovid/10-14-2020.csv"
    source   = "Data/ColoradoCovid/10-14-2020.csv" 
}