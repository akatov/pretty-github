module.exports = (grunt) ->
  Tusk = require 'grunt-tusk'
  tusk = new Tusk grunt

  prod = if tusk.env.current == 'production' then true else false

  tusk.coffee.add 'app.js', ['app/coffee/**/*.coffee'], wrap: null
  tusk.uglify.add 'app.js', ['app.js'] if prod
  tusk.jade.add '', 'app/pages'
  tusk.copy.add '', 'app/images'

  (yaml_config = {})[tusk.env.current] =
    options:
      space: if prod then 0 else 2
    files: [{
      expand: true
      cwd: 'app/yaml/'
      src: ['**/*.yml']
      dest: "build/#{if prod then 'production' else 'dev'}/"
    }]

  (clean_config = {})[tusk.env.current] =
    src: "build/#{if prod then 'production' else 'dev'}/"

  config = tusk.getConfig()
  config['yaml'] = yaml_config
  config['clean'] = clean_config

  grunt.initConfig config

  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-yaml'

  grunt.registerTask 'build', ['tusk', 'yaml']
