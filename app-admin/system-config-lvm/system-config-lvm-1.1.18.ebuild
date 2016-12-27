# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id $

EAPI=5

inherit eutils


DESCRIPTION="A utility for graphically configuring Logical Volumes"
HOMEPAGE="http://fedora.redhat.com/projects/config-tools/"
SRC_URI="http://mirror.yandex.ru/debian/pool/main/s/system-config-lvm/${PN}_1.1.18.orig.tar.gz"
LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""
DEPEND="
	dev-python/libgnome-python
	>=sys-fs/lvm2-2.00.20
"
RDEPEND="${DEPEND}"

src_prepare(){
	epatch "${FILESDIR}/${P}-desktop.patch"
}

src_configure(){
	if [[ -x ${ECONF_SOURCE:-.}/configure ]] ; then
		econf --enable-dependency-tracking
	fi
}

pkg_preinst() {
    rm ${D}/etc -R
    rm${D}/usr/bin -R
}