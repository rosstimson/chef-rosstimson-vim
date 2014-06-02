# Encoding: utf-8
name             'rosstimson-vim'
maintainer       'Ross Timson'
maintainer_email 'ross@rosstimson.com'
license          'WTFPL'
description      'Compiles and installs Vim for Ross Timson from source (Mercurial tip)'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe           'rosstimson-vim', 'Compiles and installVim from source (Mercurial tip)'

depends          'build-essential'
depends          'python'
depends          'mercurial'

supports         'fedora'

attribute        'rosstimson-vim/prefix',
  display_name:  'Installation prefix',
  description:   'Installation prefix',
  default:       '/usr/local'

attribute        'rosstimson-vim/desktop/enable',
  display_name:  'GUI support',
  description:   'Build with GTK2 GUI for desktop usage',
  default:       'false'

attribute        'rosstimson-vim/configuration',
  display_name:  'Configuration options',
  description:   'Options passed to ./configure to compile with certain features',
  default:       "--with-features=huge \
                  --prefix=#{default['rosstimson-vim']['prefix']} \
                  --without-x \
                  --with-tlib=ncurses \
                  --enable-pythoninterp \
                  --enable-multibyte \
                  --enable-cscope \
                  --enable-luainterp \
                  --with-luajit \
                  --disable-tclinterp \
                  --disable-netbeans \
                  --with-compiledby='Ross Timson <ross@rosstimson.com>'"

attribute        'rosstimson-vim/dependencies',
  display_name:  'Package dependencies',
  description:   'Supplementary packages needed',
  default:       'ctags par luajit-devel'
