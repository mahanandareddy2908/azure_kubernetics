module "kubernetes" {
  source = "./modules/kubernetes"
  client_id = var.CLIENT_ID
  client_secret = var.CLIENT_SECRET
}