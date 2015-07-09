module.exports = function (grunt) {

  grunt.initConfig({
    
    pkg: grunt.file.readJSON('package.json'),

    jshint: {
      // This is the list of files on which grunt will run JSHint
      all: ['Gruntfile.js', 'package.json', 'src/*.js', '*.js'],
      options: {
        curly: true,
        eqeqeq: true,
      }
    },

    watch: {
      // These are the files that grunt will watch for changes.
      files: ['Gruntfile.js', 'package.json', 'tests/*.js', 'src/*.js', '*.js'],
      // These are the tasks that are run on each of the above files every time there is a change.
      tasks: ['jshint', 'mochaTest'],
      options: {
        atBegin: true
      }
    },

    mochaTest: {
      src: ['tests/*.js']
    }
  });

  grunt.loadNpmTasks('grunt-contrib-jshint');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-mocha-test');

};
