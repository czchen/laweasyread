require!{express, http, \./db}
STATIC_URI = \/

const API_URI = \/api
const API_TABLE =
    \statute/:query :
        func: db.getStatute
        default: {}
    \suggestion/:query :
        func: db.getSuggestion
        default: []

get_api_callback = (info) ->
    (req, res) ->
        (err, ret) <- info.func req.params
        if err
            console.error err
            ret = info.default
        res.jsonp ret

exports.start = (config) ->
    config.views_dir = config.views_dir or "#__dirname/../views"
    config.static_dir = config.static_dir or "#__dirname/../public"

    app = express!
    app.use express.compress!
    app.use express.logger \dev
    app.use(express.favicon());
    app.set \views config.views_dir
    app.set 'view engine' 'jade'

    console.log "static dir is #{config.static_dir}"
    app.use express.static config.static_dir

    db.setMongoUri config.mongo_uri

    do
        (req, res) <- app.get STATIC_URI
        res.render \index

    for api, info of API_TABLE
        app.get "#API_URI/#api", get_api_callback info

# error handling
    do
        (req, res) <- app.use!
        res.render \404.jade

    do
        (err, req, res, next) <- app.use!
        console.error(err.stack);
        res.render \500.jade

    <- http.createServer app .listen config.port
    console.log "application started on port #{config.port}"