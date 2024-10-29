variable "origin_id" {
  type        = string
  description = "ID do bucket"
}

variable "bucket_domain_name" {
  type        = string
  description = "Nome do domínio do bucket"
}

variable "cdn_price_class" {
  type        = string
  default     = "PriceClass_200"
  description = "Classe de preço do CloudFront"
}
variable "cdn_tags" {
  type        = map(string)
  default     = {}
  description = "Tags do CloudFront"
}