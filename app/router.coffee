viewstack = require("core/stack")

class AppRouter extends Backbone.Router

  initialize: (callback) ->
    callback()

  routes:
    "*default": "home"

  # Example route
  home: ->
    viewstack.show("home")

module.exports = AppRouter
