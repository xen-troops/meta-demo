FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
    file://be.cfg \
    file://0001-swiotlb-xen-implement-xen_swiotlb_dma_mmap-callback.patch \
    file://0002-swiotlb-xen-implement-xen_swiotlb_get_sgtable-callba.patch \
    file://0003-clk-shmobile-Hide-clock-for-SCIF2.patch \
"

SRC_URI_append_salvator-x = " \
    file://r8a7795-salvator-x-xen.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
"
KERNEL_DEVICETREE_append_salvator-x = "renesas/r8a7795-salvator-x-xen.dtb"
