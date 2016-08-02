resource "azurerm_storage_blob" "mod" {
    name = "${var.name}.vhd"

    resource_group_name = "${var.resource_group_name}"
    storage_account_name = "${var.storage_account_name}"
    storage_container_name = "${var.storage_container_name}"

    type = "blob"
}
