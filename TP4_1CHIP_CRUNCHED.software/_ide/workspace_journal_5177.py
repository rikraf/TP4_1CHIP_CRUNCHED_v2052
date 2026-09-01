# 2026-08-23T16:13:31.041980291
import vitis

client = vitis.create_client()
client.set_workspace(path="TP4_1CHIP_CRUNCHED.software")

comp = client.get_component(name="TP4_service")
comp.build()

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../TP4_1CHIP_CRUNCHED.hw_export/design_1_wrapper_01.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",compiler = "gcc")

platform = client.get_component(name="platform")
status = platform.build()

comp.build()

comp.build()

domain = platform.get_domain(name="standalone_microblaze_riscv_0")

status = domain.set_lib(lib_name="lwip220", path="/opt/2025.2/Vitis/data/embeddedsw/ThirdParty/sw_services/lwip220_v1_3")

status = domain.regenerate()

status = platform.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

vitis.dispose()

