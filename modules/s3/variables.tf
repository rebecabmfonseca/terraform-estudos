variable "org_name" {
  type        = string
  default     = "rocketseat"
  description = "Nome do padrão, usado sempre para prefixar os recursos"
}

variable "s3_bucket_name" {
  type        = string
  default     = ""
  description = "Nome do bucket"
}

variable "s3_tags" {
  type        = map(string)
  default     = {}
  description = "Tags do S3"
}