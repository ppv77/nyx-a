# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
inherit  eutils

DESCRIPTION="Create compressed swap with zram"
HOMEPAGE="https://github.com/ppv77/zram-swap/"
SRC_URI="https://github.com/ppv77/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=sys-apps/openrc-0.21.7"



src_install() {
	doinitd init.d/*
}

pkg_postinst() {
    elog "Add to boot runlevel"
    elog "rc-update add zram-swap boot."
}