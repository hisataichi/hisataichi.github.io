gulp      = require 'gulp'
webserver = require 'gulp-webserver'
current   = process.cwd()
dist      = current

gulp.task 'webserver', ['build'], ->
  gulp
    .src dist
    .pipe webserver
      open: true
      livereload:
        enable: true
        filter: (fileName) ->
          if fileName.match(/\.styl$/) or fileName.match(/\.coffee$/) or fileName.match(/\.pug$/)
            false
          else
            true
