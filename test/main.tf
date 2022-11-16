terraform {
  required_providers {
    apigee = {
      version = "0.1"
      source = "github.com/heisinbug/apigee"
    }
  }
}

provider "apigee" {
  username = "WWWW"
  password = "XXXX"
  server = "YYYY"
  organization = "ZZZZ"
}

data "apigee_user" "MyUser" {
  email_id = "WWWW"
}

output "MyOutput" {
  value = data.apigee_user.MyUser.first_name
}
