# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
inherit  eutils git-2

DESCRIPTION="Create compressed swap with zram"
HOMEPAGE="https://github.com/ppv77/zram-swap/"
EGIT_REPO_URI="https://github.com/ppv77/${PN}.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=sys-apps/openrc-0.21.7"



src_install() {
	doinitd init.d/*
}

