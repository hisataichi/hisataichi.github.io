gulp    = require 'gulp'
config  = require '../config'
pug     = require 'gulp-pug'
plumber = require 'gulp-plumber'
notify  = require 'gulp-notify'

gulp.task 'pug', ->
  gulp
    .src config.pug, base: 'src'
    .pipe plumber errorHandler: notify.onError('<%= error.message %>')
    .pipe pug()
    .pipe gulp.dest config.html
