import common
import struct

def FullOTA_InstallEnd(info):
	info.script.AppendExtra('ifelse(is_mounted("/system"), unmount("/system"));')
	info.script.AppendExtra('mount("ext4", "EMMC", "/dev/block/platform/15570000.ufs/by-name/SYSTEM", "/system", "");')
	info.script.AppendExtra('run_program("/sbin/busybox", "mkdir", "/system/firmware");')
	info.script.AppendExtra('run_program("/sbin/busybox", "mkdir", "/system/carrier");')
	info.script.AppendExtra('unmount("/system");')

