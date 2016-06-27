gulp    = require 'gulp'
config  = require '../config'
coffee  = require 'gulp-coffee'
plumber = require 'gulp-plumber'
notify  = require 'gulp-notify'

gulp.task 'coffee', ->
  gulp
    .src config.coffee
    .pipe plumber errorHandler: notify.onError('<%= error.message %>')
    .pipe coffee bare: true
    .pipe gulp.dest config.js
