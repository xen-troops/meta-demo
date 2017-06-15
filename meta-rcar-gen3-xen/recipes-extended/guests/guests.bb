# Copyright
# License:
#
# Filename: guests.bb

SUMMARY = "config files and scripts for a guest"
DESCRIPTION = "config files and scripts for guest which will be running for tests"
PV = "0.1"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

SRC_URI = "\
  file://domu.cfg \
  file://bridge-nfsroot.sh \
  file://bridge.sh \
  file://copy_test.sh \
  file://alive.sh \
  file://displ_be.cfg \
  file://initrd.img \
"

S = "${WORKDIR}"

do_install() {
    install -d ${D}${base_prefix}/xen
    install -m 0744 ${WORKDIR}/*.cfg ${D}${base_prefix}/xen
    install -d ${D}${base_prefix}/scripts
    install -m 0744 ${WORKDIR}/*.sh ${D}${base_prefix}/scripts
    install -d ${D}${base_prefix}/boot/initrd
    install -m 0777 ${WORKDIR}/*.img ${D}${base_prefix}/boot/initrd
}

FILES_${PN} = " \
    ${base_prefix}/xen/*.cfg \
    ${base_prefix}/scripts/*.sh \
    ${base_prefix}/boot/initrd/*.img \
"
