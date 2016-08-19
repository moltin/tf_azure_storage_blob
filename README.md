# Storage Blob Terraform module

A Terraform module to provide a Storage Blob on Microsoft Azure.

# Setup

- `name` - The name of the virtual network.
- `resource_group_name` - The name of the resource group in which to create the virtual network.
- `storage_account_name` - Specifies the storage account in which to create the storage container.
- `storage_container_name` - The name of the storage container in which this blob should be created.
- `size` - Used only for page blobs to specify the size in bytes of the blob to be created. Must be a multiple of 512. Defaults to 0.

> Note: There are two flavors of this repo one for `page` blob type and another one for `block` blob type, the default type it's `page` one and you need to set the `size` parameter, check source on the module `github.com/moltin/tf_azure_storage_blob//block_type`

# Run

```js
module "storage_blob" {
    source = "github.com/moltin/tf_azure_storage_blob"

    name = "${var.app_name}-${var.storage_blob_name}"
    resource_group_name = "${module.resource_group.name}"
    storage_account_name = "${module.storage_account.name}"
    storage_container_name = "${module.storage_container.name}"
    size = "${var.size}"
}
```

## Outputs

 - `id` - The storage blob Resource ID.
 - `url` - The URL of the blob.
 - `name` - The storage blob name.

# Resources

- [Terraform Microsoft Azure Resource Manager - Storage blob](https://www.terraform.io/docs/providers/azurerm/r/storage_blob.html)
