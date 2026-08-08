# Maintainer: Ange^_^ <diamantitoyt6@gmail.com>
pkgname=absl-bash-git
_pkgname=absl
pkgver=0.1.dev
pkgrel=1
pkgdesc="Atomic Bash Standard Libs - Core Loader & Dispatcher Framework For Linux"
arch=('any')
url="https://github.com/Diamantito-cup/ABSL-Atomic-Bash-Standard-Libs"
license=('GPL-3.0-only')
depends=('bash')
makedepends=('git')
provides=('absl')
conflicts=('absl')

# Usamos 'absl::git+ssh://...' para forzar que el clon se llame 'absl' en $srcdir
source=("$_pkgname::git+ssh://git@github.com/Diamantito-cup/ABSL-Atomic-Bash-Standard-Libs.git")
sha256sums=('SKIP')

package() {
  # Entrar al repositorio clonado
  cd "$srcdir/$_pkgname"

  # 1. Crear el directorio global de librerías en /usr/share/absl
  install -dm755 "$pkgdir/usr/share/absl"

  # 2. Copiar todos los submódulos (UI, System, Logs, Utils, Git, etc.)
  cp -r ABSL.sh Logs UI System Build Utils Git "$pkgdir/usr/share/absl/"

  # 3. Dar permisos de lectura correctos
  chmod -R 755 "$pkgdir/usr/share/absl"

  # 4. Crear el ejecutable Wrapper en /usr/bin/absl (Adiós symlink roto)
  install -dm755 "$pkgdir/usr/bin"
  cat <<'EOF' >"$pkgdir/usr/bin/absl"
#!/usr/bin/env bash
source /usr/share/absl/ABSL.sh
absl "$@"
EOF

  # 5. Dar permisos de ejecución al Wrapper
  chmod 755 "$pkgdir/usr/bin/absl"
}
