# Copyright 2013 Axel Etcheverry
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="Nginx vhost eselect module"
HOMEPAGE="http://www.gentoo.org"
SRC_URI="https://github.com/euskadi31/eselect-nginx/archive/v${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~amd64-fbsd ~x86-fbsd ~x86-freebsd ~amd64-linux ~ia64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos"
IUSE=""

RDEPEND=">=app-admin/eselect-1.2.4
        !<www-servers/nginx"

S="${WORKDIR}"

src_install() {
    mv eselect-nginx-${PV}/nginx.eselect nginx.eselect
    insinto /usr/share/eselect/modules/
    doins nginx.eselect
}