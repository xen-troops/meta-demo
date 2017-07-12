OpenEmbedded/Yocto BSP layer for Xen on Renesas Electronics's R-Car Gen3 SoCs
==========
This layer provides support for Xen on Renesas Electronics's platforms for use with
OpenEmbedded and/or Yocto.
This is a minimal glue layer to add XEN build to a release Renesas Yocto build.
XEN is taken from head of master branch.
Currently it is applicable to Renesas Yocto 2.19.0.

Layer maintainers: Andrii Anisov <andrii_anisov@epam.com>

Supported Boards/Machines
=========================

In addition, this also provides layer that provides support board that is used
SoCs that Renesas build. Layer and board that supports following:

    * meta-rcar-gen3-xen
        - Xen on Renesas Electronics Corporation Salvator-X (R8A7795)

Please see README in the layer directory about the description of the board.

Original BSP image
=========================
The meta-renesas layer provides original BSP image. The following 
    * core-image-weston
    * core-image-minimal
