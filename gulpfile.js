var gulp         = require('gulp');
var coffee = require('gulp-coffee');
var concat = require('gulp-concat');
var sourcemaps = require('gulp-sourcemaps');

gulp.task('coffee', function(){
  gulp.src('./public/app/*.coffee')
    .pipe(sourcemaps.init())
    .pipe(coffee())
    .pipe((concat('dist.js')))
    .pipe(sourcemaps.write())
    .pipe(gulp.dest('./public/dist'))
});

gulp.task('default', ['coffee']);