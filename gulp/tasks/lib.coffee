gulp    = require 'gulp'
config  = require '../config'

gulp.task 'lib', ->
  # copy underscore, jQuery
  gulp
    .src config.lib
    .pipe gulp.dest config.js
