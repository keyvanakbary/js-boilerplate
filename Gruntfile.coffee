module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    coffee:
      dev:
        files:
          "build/foo.js": "src/*.coffee"
      test:
        files:
          "test/build/tests.js": "test/src/*.coffee"
    mocha:
      runner:
        src: [ 'test/runner.html' ]
        options:
          run: true
    watch:
      all:
        files: ["src/*", "test/src/*"]
        tasks: ["build-dev", "build-test", "test"]

  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-mocha')

  grunt.task.registerTask('test', 'mocha');
  grunt.task.registerTask('build-dev', 'coffee:dev');
  grunt.task.registerTask('build-test', 'coffee:test');
  grunt.task.registerTask('watch', ['build-dev', 'build-test', 'test', 'watch:runner']);