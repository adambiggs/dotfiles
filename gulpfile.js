var bump      = require('gulp-bump');
var changelog = require('gulp-conventional-changelog');
var fs        = require('fs');
var git       = require('gulp-git');
var gulp      = require('gulp');
var parseArgs = require('minimist');


// Parse CLI options and set defaults.
var options = parseArgs(process.argv.slice(2), {
  string  : ['type'],
  default : { type: 'patch' }
});

// Get `package.json` without caching.
function getPkg(){
  return JSON.parse(fs.readFileSync(process.cwd() + '/package.json', 'utf8'));
}


// TASKS //


// Bump version, generate changelog, and tag as a release.
gulp.task('release', ['bump', 'tag']);


// Bump version, update changelog, and commit changes.
gulp.task('bump', ['bump-version', 'changelog'], function(){
  var pkg = getPkg();
  return gulp.src(['package.json', 'CHANGELOG.md'])
    .pipe(git.commit('chore: bump version to v' + pkg.version));
});


// Bump version number.
gulp.task('bump-version', function(){
  return gulp.src('package.json')
    .pipe(bump({ type: options.type }))
    .pipe(gulp.dest('./'));
});


// Update the changelog.
gulp.task('changelog', ['bump-version'], function(){
  return gulp.src('CHANGELOG.md', { buffer: false })
    .pipe(changelog({ preset: 'angular' }))
    .pipe(gulp.dest('./'));
});


// Tag the current commit as a release.
gulp.task('tag', ['bump'], function(){
  var pkg = getPkg();
  return git.tag(pkg.version, 'Release v' + pkg.version, function(err){
    if (err) throw err;
  });
});
