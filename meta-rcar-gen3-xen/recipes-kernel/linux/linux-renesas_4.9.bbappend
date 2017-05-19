RENESAS_BSP_URL = "git://github.com/xen-troops/linux.git"
BRANCH = "vgpu-dev"
SRCREV = "${AUTOREV}"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
    file://defconfig \
"

SRC_URI_append_salvator-x = ""
SRC_URI_append_h3ulcb = ""
SRC_URI_append_m3ulcb-domx = "file://r8a7796-m3ulcb-dom0.dts;subdir=git/arch/${ARCH}/boot/dts/renesas"

#do_install_append() {
#    install -d ${D}${base_prefix}/xen
#}

#PACKAGES += "guest-images"
#FILES_guest-images = "${base_prefix}/xen/*"
