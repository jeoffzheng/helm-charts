"context_is_cloud_admin":  "role:cloud_sharedfilesystem_admin"
"context_is_quota_admin":  "role:resource_service"
"context_is_admin":  "rule:context_is_cloud_admin"
"owner": "project_id:%(project_id)s"
"member": "role:member and rule:owner"
"viewer": "role:sharedfilesystem_viewer and rule:owner"
"cloud_viewer": "role:cloud_sharedfilesystem_viewer"
"cloud_editor": "role:cloud_sharedfilesystem_editor"
"admin": "role:sharedfilesystem_admin and rule:owner"
"context_is_cloud_editor": "rule:cloud_editor or rule:context_is_admin"
"context_is_cloud_viewer": "rule:cloud_viewer or rule:context_is_cloud_editor"
"context_is_sharedfilesystem_admin": "rule:context_is_admin or rule:admin"
"context_is_editor": "rule:context_is_sharedfilesystem_admin or rule:member or rule:cloud_editor"
"context_is_viewer":  "rule:context_is_editor or rule:viewer or rule:cloud_viewer"
"default": "rule:context_is_admin"

"availability_zone:index": "rule:context_is_viewer"

# allows to use OnlyHostFilter and see host field of shares and backups
"context_is_host_admin": "rule:context_is_admin"

"quota_set:update": "rule:context_is_quota_admin"
"quota_set:show": "rule:context_is_viewer or rule:context_is_quota_admin"
"quota_set:delete": "rule:context_is_quota_admin"

"quota_class_set:show": "rule:context_is_viewer or rule:context_is_quota_admin"
"quota_class_set:update": "rule:context_is_quota_admin"

"service:index": "rule:context_is_cloud_viewer"
"service:update": "rule:context_is_admin"

"share:create": "rule:context_is_editor"
"share:delete": "rule:context_is_editor"
"share:get": "rule:context_is_viewer"
"share:get_all": "rule:context_is_viewer"
"share:list_by_share_server_id": "rule:context_is_cloud_viewer"
"share:list_by_host": "rule:context_is_sharedfilesystem_admin"
"share:list_shares_in_deferred_deletion_states": "rule:cloud_viewer"
"share:update": "rule:context_is_editor"
"share:access_get": "rule:context_is_viewer"
"share:access_get_all": "rule:context_is_viewer"
"share:allow_access": "rule:context_is_editor"
"share:deny_access": "rule:context_is_editor"
"share:extend": "rule:context_is_editor"
"share:force_extend": "rule:context_is_editor"
"share:shrink": "rule:context_is_editor"
"share:get_share_metadata": "rule:context_is_viewer"
"share:delete_share_metadata": "rule:context_is_editor"
"share:update_share_metadata": "rule:context_is_editor"
"share:migration_start": "rule:context_is_admin"
"share:migration_complete": "rule:context_is_admin"
"share:migration_cancel": "rule:context_is_admin"
"share:migration_get_progress": "rule:context_is_cloud_viewer"
"share:reset_task_state": "rule:context_is_sharedfilesystem_admin"
"share:manage": "rule:context_is_sharedfilesystem_admin"
"share:unmanage": "rule:context_is_admin"
"share:create_public_share": "rule:context_is_admin"
"share:set_public_share": "rule:context_is_admin"
"share:force_delete": "rule:context_is_admin"
"share:reset_status": "rule:context_is_sharedfilesystem_admin"
"share:revert_to_snapshot": "rule:context_is_editor"
"share:update_admin_only_metadata": "rule:context_is_admin"

# recycle bin feature
"share:soft_delete": "rule:context_is_sharedfilesystem_admin"
"share:restore": "rule:context_is_sharedfilesystem_admin"

"share_export_location:index": "rule:context_is_viewer"
"share_export_location:show": "rule:context_is_viewer"

"share_access_rule:get": "rule:context_is_viewer"
"share_access_rule:index": "rule:context_is_viewer"
"share_access_rule:update": "rule:context_is_editor"

"share_access_metadata:update": "rule:context_is_editor"
"share_access_metadata:delete": "rule:context_is_editor"

"share_instance:index": "rule:context_is_cloud_viewer"
"share_instance:show": "rule:context_is_cloud_viewer"
"share_instance:force_delete": "rule:context_is_admin"
"share_instance:reset_status": "rule:context_is_admin"
"share_instance_export_location:index": "rule:context_is_cloud_viewer"
"share_instance_export_location:show": "rule:context_is_cloud_viewer"

"share:create_snapshot": "rule:context_is_editor"
"share:delete_snapshot": "rule:context_is_editor"
"share:snapshot_update": "rule:context_is_editor"
"share_snapshot:get_snapshot": "rule:context_is_viewer"
"share_snapshot:get_all_snapshots": "rule:context_is_viewer"
"share_snapshot:list_snapshots_in_deferred_deletion_states": "rule:cloud_viewer"
"share_snapshot:manage_snapshot": "rule:context_is_admin"
"share_snapshot:unmanage_snapshot": "rule:context_is_admin"
"share_snapshot:force_delete": "rule:context_is_admin"
"share_snapshot:reset_status": "rule:context_is_sharedfilesystem_admin"
"share_snapshot:access_list": "rule:context_is_viewer"
"share_snapshot:allow_access": "rule:context_is_editor"
"share_snapshot:deny_access": "rule:context_is_editor"
"share_snapshot:update_metadata": "rule:context_is_editor"
"share_snapshot:delete_metadata": "rule:context_is_editor"
"share_snapshot:get_metadata": "rule:context_is_viewer"

"share_snapshot_export_location:index": "rule:context_is_viewer"
"share_snapshot_export_location:show": "rule:context_is_viewer"

"share_snapshot_instance:detail": "rule:context_is_cloud_viewer"
"share_snapshot_instance:index": "rule:context_is_cloud_viewer"
"share_snapshot_instance:show": "rule:context_is_cloud_viewer"
"share_snapshot_instance:reset_status": "rule:context_is_admin"
"share_snapshot_instance_export_location:index": "rule:context_is_cloud_viewer"
"share_snapshot_instance_export_location:show": "rule:context_is_cloud_viewer"

"share_type:index": "rule:context_is_viewer"
"share_type:show": "rule:context_is_viewer"
"share_type:default": "rule:context_is_viewer"
"share_type:create": "rule:context_is_cloud_editor"
"share_type:update": "rule:context_is_cloud_editor"
"share_type:delete": "rule:context_is_cloud_editor"
"share_type:add_project_access": "rule:context_is_cloud_editor"
"share_type:list_project_access": "rule:context_is_cloud_viewer"
"share_type:remove_project_access": "rule:context_is_cloud_editor"

"share_types_extra_spec:create": "rule:context_is_cloud_editor"
"share_types_extra_spec:update": "rule:context_is_cloud_editor"
"share_types_extra_spec:show": "rule:context_is_cloud_viewer"
"share_types_extra_spec:index": "rule:context_is_cloud_viewer"
"share_types_extra_spec:delete": "rule:context_is_cloud_editor"

"security_service:create": "rule:context_is_sharedfilesystem_admin"
"security_service:delete": "rule:context_is_sharedfilesystem_admin"
"security_service:update": "rule:context_is_sharedfilesystem_admin"
"security_service:show": "rule:context_is_sharedfilesystem_admin"
"security_service:index": "rule:context_is_viewer"
"security_service:detail": "rule:context_is_sharedfilesystem_admin"
"security_service:get_all_security_services": "rule:context_is_cloud_viewer"

"share_server:index": "rule:context_is_cloud_viewer"
"share_server:show": "rule:context_is_cloud_viewer"
"share_server:details": "rule:context_is_cloud_viewer"
"share_server:delete": "rule:context_is_admin"
"share_server:reset_status": "rule:context_is_admin"
"share_server:manage_share_server": "rule:context_is_admin"
"share_server:unmanage_share_server": "rule:context_is_admin"
"share_server:share_server_migration_start": "rule:context_is_admin"
"share_server:share_server_migration_check": "rule:context_is_admin"
"share_server:share_server_migration_complete": "rule:context_is_admin"
"share_server:share_server_migration_cancel": "rule:context_is_admin"
"share_server:share_server_migration_get_progress": "rule:context_is_cloud_viewer"
"share_server:share_server_reset_task_state": "rule:context_is_admin"

"share_network:create": "rule:context_is_sharedfilesystem_admin"
"share_network:delete": "rule:context_is_sharedfilesystem_admin"
"share_network:update": "rule:context_is_sharedfilesystem_admin"
"share_network:index": "rule:context_is_viewer"
"share_network:detail": "rule:context_is_viewer"
"share_network:show": "rule:context_is_viewer"
"share_network:add_security_service": "rule:context_is_sharedfilesystem_admin"
"share_network:add_security_service_check": "rule:context_is_viewer"
"share_network:remove_security_service": "rule:context_is_sharedfilesystem_admin"
"share_network:update_security_service": "rule:context_is_sharedfilesystem_admin"
"share_network:update_security_service_check": "rule:context_is_viewer"
"share_network:reset_status": "rule:context_is_sharedfilesystem_admin"
"share_network:subnet_create_check": "rule:context_is_sharedfilesystem_admin"
"share_network:get_all_share_networks": "rule:context_is_cloud_viewer"

"share_network_subnet:create": "rule:context_is_sharedfilesystem_admin"
"share_network_subnet:delete": "rule:context_is_sharedfilesystem_admin"
"share_network_subnet:index": "rule:context_is_viewer"
"share_network_subnet:show": "rule:context_is_viewer"
"share_network_subnet:update_metadata": "rule:context_is_editor"
"share_network_subnet:delete_metadata": "rule:context_is_editor"
"share_network_subnet:get_metadata": "rule:context_is_viewer"

"scheduler_stats:pools:index": "rule:context_is_cloud_viewer"
"scheduler_stats:pools:detail": "rule:context_is_cloud_viewer"

"share_group:create": "rule:context_is_admin"
"share_group:delete": "rule:context_is_admin"
"share_group:update": "rule:context_is_admin"
"share_group:get": "rule:context_is_sharedfilesystem_admin"
"share_group:get_all": "rule:context_is_cloud_viewer"
"share_group:force_delete": "rule:context_is_admin"
"share_group:reset_status": "rule:context_is_admin"

"share_group_snapshot:create": "rule:context_is_admin"
"share_group_snapshot:delete": "rule:context_is_admin"
"share_group_snapshot:update": "rule:context_is_admin"
"share_group_snapshot:get": "rule:context_is_cloud_viewer"
"share_group_snapshot:get_all": "rule:context_is_cloud_viewer"
"share_group_snapshot:force_delete": "rule:context_is_admin"
"share_group_snapshot:reset_status": "rule:context_is_admin"

"share_replica:get_all": "rule:context_is_viewer"
"share_replica:show": "rule:context_is_viewer"
"share_replica:create": "rule:context_is_sharedfilesystem_admin"
"share_replica:delete": "rule:context_is_sharedfilesystem_admin"
"share_replica:promote": "rule:context_is_sharedfilesystem_admin"
"share_replica:resync": "rule:context_is_sharedfilesystem_admin"
"share_replica:reset_status": "rule:context_is_sharedfilesystem_admin"
"share_replica:force_delete": "rule:context_is_admin"
"share_replica:reset_replica_state": "rule:context_is_sharedfilesystem_admin"

"share_replica_export_location:index": "rule:context_is_viewer"
"share_replica_export_location:show": "rule:context_is_viewer"

"share_group_type:index": "rule:context_is_sharedfilesystem_admin"
"share_group_type:show": "rule:context_is_sharedfilesystem_admin"
"share_group_type:default": "rule:context_is_sharedfilesystem_admin"
"share_group_type:create": "rule:context_is_admin"
"share_group_type:delete": "rule:context_is_admin"
"share_group_type:add_project_access": "rule:context_is_admin"
"share_group_type:list_project_access": "rule:context_is_cloud_viewer"
"share_group_type:remove_project_access": "rule:context_is_admin"

"share_group_types_spec:create": "rule:context_is_admin"
"share_group_types_spec:update": "rule:context_is_admin"
"share_group_types_spec:show": "rule:context_is_cloud_viewer"
"share_group_types_spec:index": "rule:context_is_cloud_viewer"
"share_group_types_spec:delete": "rule:context_is_admin"

"message:delete": "rule:context_is_sharedfilesystem_admin"
"message:get": "rule:context_is_viewer"
"message:get_all": "rule:context_is_viewer"

"resource_lock:get": "rule:context_is_viewer"
"resource_lock:get_all": "rule:context_is_viewer"
"resource_lock:get_all_projects": "rule:context_is_cloud_viewer"
"resource_lock:create": "rule:context_is_sharedfilesystem_admin"
"resource_lock:update": "rule:context_is_sharedfilesystem_admin"
"resource_lock:delete": "rule:context_is_sharedfilesystem_admin"

"share_transfer:get_all": "rule:context_is_cloud_viewer"
"share_transfer:get_all_tenant": "rule:context_is_cloud_viewer"
"share_transfer:create": "rule:context_is_admin"
"share_transfer:get": "rule:context_is_cloud_viewer"
"share_transfer:accept": "rule:context_is_admin"
"share_transfer:delete": "rule:context_is_admin"

"share_backup:create": "rule:context_is_admin"
"share_backup:get": "rule:context_is_cloud_viewer"
"share_backup:get_all": "rule:context_is_cloud_viewer"
"share_backup:get_all_project": "rule:context_is_cloud_viewer"
"share_backup:restore": "rule:context_is_admin"
"share_backup:reset_status": "rule:context_is_admin"
"share_backup:update": "rule:context_is_admin"
"share_backup:delete": "rule:context_is_admin"
