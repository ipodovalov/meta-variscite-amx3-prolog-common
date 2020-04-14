DESCRIPTION = "LCD driver for Emicon CPU47 PLC"
LICENSE = "CLOSED"
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

inherit deploy

COMPATIBLE_MACHINE = "varsomam33c"


SRC_URI = " \
			file://u-boot-sd \
			file://nand-recovery.sh \
"

do_install () {
	install -d ${D}${sysconfdir}/init.d
}

do_deploy () {
    cp -r ${WORKDIR}/u-boot-sd ${DEPLOYDIR}
    cp -r ${WORKDIR}/nand-recovery.sh ${DEPLOYDIR}
}

addtask deploy after do_install