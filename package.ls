name: \laweasyread
version: \0.0.1
contributors:
    * 'ChangZhuo Chen <czchen@gmail.com>'
    * 'kcliu <gjliou@cs.nctu.edu.tw>'
descritpion: 'API for Taiwan law'
scripts:
    prepublish: """
        ./node_modules/.bin/lsc -cj package.ls
        ./node_modules/.bin/continuation -p lib/parse.ls > lib/parse.js
        ./node_modules/.bin/continuation -p lib/twlaw.ls > lib/twlaw.js
        ./node_modules/.bin/continuation -p app.ls > app.js
    """
    test: """
        ./node_modules/.bin/continuation test/roman.ls
    """
dependencies:
    express: \3.x
    \romanize-component : \0.1.x
    \deromanize-component : \0.1.x
engines:
    node: \0.10.x
devDependencies:
    LiveScript: \1.1.x
    continuation: \~0.1.2
    should: \1.2.x
licenses:
    * type: \MIT
      url: \https://github.com/g0v/laweasyread/blob/master/LICENSE
repository:
    type: \git
    url: \http://github.com/g0v/laweasyread
bugs:
    url: \https://github.com/g0v/laweasyread/issues
