module.exports =
  name: "Equity"
  url: '/equity/:name/:from'
  fields: [
    { name: 'Name', field: 'name'}
    { name: 'From', field: 'from'}
  ]

  register: (app, output) ->
    app.get '/equity/:name/:from', (req, res) ->
      message = "Equity only? Long hours? Zero Pay? Well #{req.params.name}, just sign me right the fuck up."
      subtitle = "- #{req.params.from}"
      output(req, res, message, subtitle)