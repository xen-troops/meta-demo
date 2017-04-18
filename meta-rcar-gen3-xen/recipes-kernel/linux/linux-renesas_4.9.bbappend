RENESAS_BSP_URL = "git://github.com/xen-troops/linux.git"
BRANCH = "gen3-test"
SRCREV = "${AUTOREV}"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
    file://defconfig \
"

SRC_URI_append_salvator-x = ""
SRC_URI_append_h3ulcb = ""
SRC_URI_append_m3ulcb = ""

#do_install_append() {
#    install -d ${D}${base_prefix}/xen
#}

#PACKAGES += "guest-images"
#FILES_guest-images = "${base_prefix}/xen/*"
