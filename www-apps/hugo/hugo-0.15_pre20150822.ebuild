# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

GOLANG_PKG_IMPORTPATH="github.com/spf13"
GOLANG_PKG_VERSION="0c98d8e9ed7013ce722d53ee094f1adc79b90079"
GOLANG_PKG_HAVE_TEST=1

GOLANG_PKG_DEPENDENCIES=(
	"bitbucket.org/pkg/inflect:8961c3750a47"
	"github.com/BurntSushi/toml:056c9bc7be"
	"github.com/PuerkitoBio/purell:d69616f51c"
	"github.com/dchest/cssmin:a22e1d8dac"
	"github.com/eknkc/amber:ee5a5b8364"
	"github.com/gorilla/websocket:a3ec486e6a"
	"github.com/kardianos/osext:6e7f843663"
	"github.com/miekg/mmark:3554509431"
	"github.com/mitchellh/mapstructure:bb4fbaf540"
	"github.com/russross/blackfriday:386ef80f18"
	"github.com/opennota/urlesc:5fa9ff0392"
	"github.com/shurcooL/sanitized_anchor_name:11a20b799b"
	"github.com/spf13/afero:e54aac2c6a"
	"github.com/spf13/cast:ee815aaf95"
	"github.com/spf13/cobra:c55cdf3385"
	"github.com/spf13/fsync:1fdf08f822"
	"github.com/spf13/nitro:24d7ef30a1"
	"github.com/spf13/viper:2abb1bebfd"
	"github.com/spf13/pflag:4869ec2ae0"
	"github.com/spf13/jWalterWeatherman:3d60171a64"
	"github.com/yosssi/ace:78e48a2f0a"
	"github.com/go-fsnotify/fsnotify:96c060f6a6 -> gopkg.in/fsnotify.v1"
	"github.com/go-yaml/yaml:c1cd2254a6 -> gopkg.in/yaml.v2"
	"github.com/inconshreveable/mousetrap:76626ae9c9"
	"github.com/kr/pretty:e6ac2fc51e"
	"github.com/kr/text:e373e137fa"
	"github.com/magiconair/properties:6240095988"
	"github.com/stretchr/testify:232e856367"
	"github.com/golang/text:d611288f0d -> golang.org/x"
)

inherit golang-single

DESCRIPTION="A fast and flexible static site generator built in GoLang"
HOMEPAGE="https://${GOLANG_PKG_IMPORTPATH}/${PN}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE+=" pygments"

RDEPEND="pygments? ( dev-python/pygments )"

src_prepare() {
	golang-single_src_prepare

	golang_fix_importpath_alias \
		"github.com/spf13/jWalterWeatherman" \
		"github.com/spf13/jwalterweatherman"
}