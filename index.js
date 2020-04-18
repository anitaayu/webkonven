var app = require('./template')

var server = app.listen(process.env.PORT || 8080, function () {
    var port = server.address().port
    console.log("App now running on port", port)
 })

var routes = require('./routes')
routes(app);