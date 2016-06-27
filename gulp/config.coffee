path    = require 'path'
current = process.cwd()
source  = current + '/src'
dist    = current

module.exports =
  # 入力元の設定
  pug : source + '/**/*.pug'
  coffee: source + '/coffee/**/*.coffee'
  styl: source + '/styl/**/*.styl'
  lib: ['node_modules/jquery/dist/jquery.min.js',
        'node_modules/jquery/dist/jquery.min.map']

  # 出力先の設定
  html: dist
  js: dist + '/js'
  css: dist + '/css'
