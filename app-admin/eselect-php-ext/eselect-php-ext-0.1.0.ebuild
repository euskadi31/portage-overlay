# Copyright 2013 Axel Etcheverry
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit depend.apache systemd

DESCRIPTION="PHP-ext eselect module"
HOMEPAGE="http://www.gentoo.org"
SRC_URI="https://github.com/euskadi31/eselect-php-ext/archive/v${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~amd64-fbsd ~x86-fbsd ~x86-freebsd ~amd64-linux ~ia64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos"
IUSE=""

DEPEND=">=app-admin/eselect-1.2.4
        !<dev-lang/php-5.3.23-r1:5.3
        !<dev-lang/php-5.4.13-r1:5.4
        !<dev-lang/php-5.5.0_beta1-r2:5.5
        "
RDEPEND="${DEPEND}"

S="${WORKDIR}"

want_apache

src_install() {
    mv eselect-php-ext-${PV}/php-ext.eselect php-ext.eselect
    insinto /usr/share/eselect/modules/
    doins php-ext.eselect
}