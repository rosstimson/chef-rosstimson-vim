# Encoding: utf-8
#
# Cookbook Name:: rosstimson-vim
# Attributes:: default
#
# Copyright (C) 2014 Ross Timson <ross@rosstimson.com>, rosstimson.com
#
# License:: WTFPL

default['rosstimson-vim']['prefix'] = '/usr/local'
default['rosstimson-vim']['desktop']['enable'] = false
default['rosstimson-vim']['configuration'] = "--with-features=huge \
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
                                              --with-compiledby='Ross Timson <ross@rosstimson.com>'" # rubocop:disable LineLength

if node['rosstimson-vim']['desktop']['enable']
  default['rosstimson-vim']['dependencies'] = %w( ncurses-devel gtk2-devel libX11-devel
                                                  libXt-devel ctags par luajit-devel )
else
  default['rosstimson-vim']['dependencies'] = %w( ctags par luajit-devel )
end
