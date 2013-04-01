name: \laweasyread
version: \0.0.1
contributors:
    * 'ChangZhuo Chen <czchen@gmail.com>'
    * 'kcliu <gjliou@cs.nctu.edu.tw>'
descritpion: 'API for Taiwan law'
scripts:
    prepublish: "node prepublish.js"
    start: "node server/start.js"
    test: "node test.js"
dependencies:
    async: \~0.2.6
    \deromanize-component : \0.1.x
    express: \3.x
    mongodb: \~1.2.14
    optimist: \~0.3.5
    \romanize-component : \0.1.x
    shelljs: \~0.1.2
engines:
    node: \0.10.x
devDependencies:
    LiveScript: \1.1.x
    should: \1.2.x
licenses:
    * type: \MIT
      url: \https://github.com/g0v/laweasyread/blob/master/LICENSE
repository:
    type: \git
    url: \http://github.com/g0v/laweasyread
bugs:
    url: \https://github.com/g0v/laweasyread/issues
