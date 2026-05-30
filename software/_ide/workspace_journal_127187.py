# 2026-05-29T20:21:38.866233452
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

comp = client.get_component(name="app")
comp.set_app_config(key = "USER_COMPILE_SOURCES", values = [""])

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = [""])

status = comp.import_files(from_loc="$COMPONENT_LOCATION/..", files=["app_src"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = comp.import_files(from_loc="$COMPONENT_LOCATION/..", files=["app_src"], is_skip_copy_sources = False)

vitis.dispose()

