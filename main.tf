module "s3" {
  source         = "./modules/s3"
  s3_bucket_name = "rocketseat-bucket-iac"
  s3_tags = {
    Iac = "true"
  }
}

module "cloudfront" {
  source             = "./modules/cloudfront"
  origin_id          = module.s3.bucket_id
  bucket_domain_name = module.s3.bucket_domain_name
  cdn_price_class    = "PriceClass_200"
  depends_on         = [module.s3]
  cdn_tags = {
    Iac = "true"
  }

}
