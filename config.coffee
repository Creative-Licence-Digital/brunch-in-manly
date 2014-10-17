# See http://brunch.readthedocs.org/en/latest/config.html for documentation.

exports.config =
  plugins:
    sass:
      options: ["--compass"]

    coffeelint:
      pattern: /^app\/.*\.coffee$/

      options:
        no_empty_param_list:
          level: "error"

        prefer_english_operator:
          value: true
          level: "error"

        indentation:
          value: 2
          level: "error"

        max_line_length:
          level: "warn"

        colon_assignment_spacing:
          level: "error"

          spacing:
            left: 0
            right: 1

  files:
    javascripts:
      joinTo:
        "js/app.js": /^app/
        "js/vendor.js": (path) ->
          /^(vendor|bower_components)/.test(path) and not /\/underscore\//.test(path)

      order:
        before: [
          "bower_components/lodash/dist/lodash.compat.js"
          "bower_components/zepto/zepto.js"
          "bower_components/backbone/backbone.js"
          "bower_components/backbone.viewstack/build/backbone.viewstack.js"
        ]

    stylesheets:
      joinTo:
        "css/app.css": /sass\/app.sass/

    templates:
      defaultExtension: "jade"
      joinTo: "js/app.js"

  framework: "backbone"
