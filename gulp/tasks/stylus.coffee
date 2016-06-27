gulp    = require 'gulp'
config  = require '../config'
stylus  = require 'gulp-stylus'
plumber = require 'gulp-plumber'
notify  = require 'gulp-notify'

gulp.task 'stylus', ->
  gulp
    .src config.styl
    .pipe plumber errorHandler: notify.onError('<%= error.message %>')
    .pipe stylus compress: true
    .pipe gulp.dest config.css
