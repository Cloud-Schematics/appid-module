##############################################################################
# Create App ID
##############################################################################

resource "ibm_resource_instance" "appid" {
  count             = var.use_data == true ? 0 : 1
  name              = "${var.prefix}-app-id"
  service           = "appid"
  plan              = "graduated-tier"
  location          = var.region
  resource_group_id = var.resource_group_id
  tags              = var.tags
}

##############################################################################

##############################################################################
# Existing App ID used by Teleport Bastion VSI
##############################################################################

data "ibm_resource_instance" "appid" {
  count             = var.use_data == true ? 1 : 0
  name              = var.appid_name
  resource_group_id = var.resource_group_id
}

##############################################################################