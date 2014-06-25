module.exports = (grunt) ->
  prod = if process.env['ENV'] == 'prod' then true else false

  require('matchdep').filterDev('grunt-*').forEach grunt.loadNpmTasks

  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    meta:
      env: if prod then 'prod' else 'dev'
      prod: '<%= meta.env %>' == 'prod'
      dev: '<%= meta.env %>' == 'dev'
      src: 'src'
      test: 'test'
      target:
        dir: 'build/<%= meta.env %>'
        js: '<%= meta.target.dir %>/pretty.js'
    clean: target: src: ['<%= meta.target.dir %>']
    coffeelint:
      src:
        files: src: ['<%= meta.src %>/**/*.coffee']
        options: max_line_length: level: 'warn'
      gruntfile:
        files: src: ['Gruntfile.coffee']
        options: max_line_length: level: 'warn'
    coffee:
      src:
        files: '<%= meta.target.js %>': [
          '<%= meta.src %>/preprocess.coffee'
          '<%= meta.src %>/patterns.coffee'
          '<%= meta.src %>/mapping.coffee'
          '<%= meta.src %>/pretty.coffee'
        ]
        options: bare: true
    jshint: target: ['<%= meta.target.js %>']
    yaml: target:
      options:
        space: if prod then 0 else 2
      files:
        '<%= meta.target.dir %>/manifest.json':
          ['<%= meta.src %>/manifest.yml']
    copy: all:
      files:
        '<%= meta.target.dir %>/icon.png': ['src/icon.png']
        '<%= meta.target.dir %>/jquery.js': ['bower_components/jquery/jquery.js']
        '<%= meta.target.dir %>/lodash.js' : ['bower_components/lodash/lodash.js']

  grunt.registerTask 'build', ['coffeelint', 'coffee', 'copy', 'yaml']
