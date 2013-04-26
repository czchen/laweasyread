name: \laweasyread
version: \0.0.1
contributors:
    * 'ChangZhuo Chen <czchen@gmail.com>'
    * 'kcliu <gjliou@cs.nctu.edu.tw>'
descritpion: 'API for Taiwan law'
scripts:
    prepublish: "node prepublish.js"
    start: "node start.js"
    test: "node test.js"
dependencies:
    async: \~0.2.6
    \deromanize-component : \0.1.x
    express: \3.x
    jade: \~0.28.2
    mongodb: \~1.2.14
    optimist: \~0.3.5
    \romanize-component : \0.1.x
    shelljs: \~0.1.2
    winston: \~0.7.1
engines:
    node: \0.10.x
devDependencies:
    chai: \1.5.0
    growl: \~1.7.0
    grunt: \~0.4.1
    \grunt-contrib-watch : \~0.3.1
    jscoverage: \~0.3.6
    karma: \0.8.4
    LiveScript: \1.1.x
    mocha: \~1.8.2
    request: \~2.16.6
    sinon: \~1.6.0
licenses:
    * type: \MIT
      url: \https://github.com/g0v/laweasyread/blob/master/LICENSE
      ...
repository:
    type: \git
    url: \http://github.com/g0v/laweasyread
bugs:
    url: \https://github.com/g0v/laweasyread/issues
