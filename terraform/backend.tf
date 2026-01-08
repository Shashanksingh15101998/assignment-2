terraform {
  backend "gcs" {
    bucket = "terra-store-1"   
    prefix = "http/terra"               
  }
}
