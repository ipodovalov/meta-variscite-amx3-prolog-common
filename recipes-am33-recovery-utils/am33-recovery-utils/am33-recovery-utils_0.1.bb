DESCRIPTION = "LCD driver for Emicon CPU47 PLC"
LICENSE = "CLOSED"
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

inherit deploy

COMPATIBLE_MACHINE = "varsomam33c|varsomam33crt|varsomam33cv1|varsomam33cv1rt"


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

SRC_URI_append_varsomam33cv1 += " \
    file://nand-recovery-1g.patch;patchdir=${WORKDIR} \
"

SRC_URI_append_varsomam33cv1rt += " \
    file://nand-recovery-1g.patch;patchdir=${WORKDIR} \
"

addtask deploy after do_install