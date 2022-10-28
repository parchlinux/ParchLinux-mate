#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="Parchlinux Mate"
iso_label="PARCH_MATE_X86_64_$(date +%Y%m)"
iso_publisher="Parch Linux <https://github.com/parchlinux/>"
iso_application="Parch Linux Live/Rescue CD"
#gpg_key="BC9DCC3C9A0B047F53065EEBFB8554F927F96E60"
#gpg_signer="KomeilParseh <ahmdparsh129@gmail.com>"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
	   'uefi-ia32.grub.esp' 'uefi-x64.systemd-boot.esp'
	   'uefi-ia32.grub.eltorito' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:0400"
  ["/home/liveuser"]="1000:1000:750"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
)
