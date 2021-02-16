pkgname=packages-gist
pkgver=1.0
pkgrel=1
pkgdesc="Keeps lists of installed packages in a Gist at your GitHub account"
url="https://github.com/Joshix-1/$pkgname"
arch=('x86_64' 'i686')
license=('GPL')
makedepends=('git')
depends=('pacman>=5.0' 'gist>=4.5.0')
source=("$pkgname::git+https://github.com/Joshix-1/$pkgname.git")
md5sums=('SKIP')

package() {

  # Install and save file
  mkdir -p $pkgdir/etc/
  touch $pkgdir/etc/packages-gist

  # Install script
  mkdir -p $pkgdir/usr/lib/packages-gist
  cp $srcdir/packages-gist/src/packages-gist.sh $pkgdir/usr/bin/packages-gist/packages-gist
  chmod +x $pkgdir/usr/bin/packages-gist/packages-gist

  # Install Hook
  mkdir -p $pkgdir/usr/share/libalpm/hooks
  cp $srcdir/packages-gist/src/packages-gist.hook $pkgdir/usr/share/libalpm/hooks/zzz-packages-gist.hook

}
