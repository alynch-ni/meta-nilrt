FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://0001-service-Add-AlwaysConnectedTechnologies-option.patch \
            file://main.conf"

do_install_append() {
    install -d ${D}${sysconfdir}/connman
    install -m 0644 ${WORKDIR}/main.conf ${D}${sysconfdir}/connman/
}