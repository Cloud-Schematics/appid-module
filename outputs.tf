##############################################################################
# Outputs
##############################################################################

output "guid" {
  description = "App ID GUID"
  value = (
    var.use_data == true
    ? data.ibm_resource_instance.appid[0].guid
    : ibm_resource_instance.appid[0].guid
  )
}

output "crn" {
  description = "App ID CRN"
  value = (
    var.use_data == true
    ? data.ibm_resource_instance.appid[0].crn
    : ibm_resource_instance.appid[0].crn
  )
}

##############################################################################