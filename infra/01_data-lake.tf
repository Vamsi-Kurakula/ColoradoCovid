variable "bucketname" {
    type = string
    default = "cde-coloradocovid231"
}


resource "aws_s3_bucket" "coloradoCovid_bucket" {
  bucket = var.bucketname
  acl    = "private"
}

resource "aws_s3_bucket_object" "NYT_us" {
    bucket   = aws_s3_bucket.coloradoCovid_bucket.id
    acl      = "private"
    key      = "Landing/NYT/All/us.csv"
    source   = "Data/NYT/us.csv" 
}

resource "aws_s3_bucket_object" "NYT_counties" {
    bucket   = aws_s3_bucket.coloradoCovid_bucket.id
    acl      = "private"
    key      = "Landing/NYT/Counties/us-counties.csv"
    source   = "Data/NYT/us-counties.csv" 
}

resource "aws_s3_bucket_object" "NYT_states" {
    bucket   = aws_s3_bucket.coloradoCovid_bucket.id
    acl      = "private"
    key      = "Landing/NYT/States/us-states.csv"
    source   = "Data/NYT/us-states.csv" 
}

resource "aws_s3_bucket_object" "JHU-TS" {
    bucket   = aws_s3_bucket.coloradoCovid_bucket.id
    acl      = "private"
    key      = "Landing/JHU/10-14-2020.csv"
    source   = "Data/JHU/10-14-2020.csv" 
}

resource "aws_s3_bucket_object" "coloradoCovid1" {
    bucket   = aws_s3_bucket.coloradoCovid_bucket.id
    acl      = "private"
    key      = "Landing/ColoradoCovid/Hospital/covid19_hospital_data_2020-10-14.csv"
    source   = "Data/ColoradoCovid/covid19_hospital_data_2020-10-14.csv" 
}

resource "aws_s3_bucket_object" "coloradoCovid2" {
    bucket   = aws_s3_bucket.coloradoCovid_bucket.id
    acl      = "private"
    key      = "Landing/ColoradoCovid/Demographics/covid19_cases_demographics_tests_2020-10-14.csv"
    source   = "Data/ColoradoCovid/covid19_cases_demographics_tests_2020-10-14.csv" 
}

resource "aws_s3_bucket_object" "reported" {
    bucket   = aws_s3_bucket.coloradoCovid_bucket.id
    acl      = "private"
    key      = "Reported/.gitkeep"
    source   = "Data/.gitkeep" 
}