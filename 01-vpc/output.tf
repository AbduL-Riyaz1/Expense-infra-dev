/* output "az_info" {
  value = module.vpc.az_info
} */
/* output "subnet_info" {
  value = module.vpc.subnet_info
} */

output "public_subnet_ids" {
  value = module.vpc.public_subnet_id
}