variable "terraform-version" {
  type        = string
  description = "Global Terraform version to use"
  default     = "1.1.4"
}

variable "azure-dev-key" {
  type        = string
  description = "Development key for Azure"
  default     = ""
}

variable "azure-prod-key" {
  type        = string
  description = "Production key for Azure"
  default     = ""
}

variable "aws-dev-key" {
  type        = string
  description = "Development key for AWS"
  default     = ""
}

variable "aws-prod-key" {
  type        = string
  description = "Production key for AWS"
  default     = ""
}
