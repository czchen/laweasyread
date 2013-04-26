// Karma configuration
// Generated on Sat Apr 13 2013 02:25:04 GMT+0800 (CST)


// base path, that will be used to resolve files and exclude
basePath = './';

preprocessors = {
  // app
  'public/js/*.js': 'coverage'
};

// list of files / patterns to load in the browser
files = [
  MOCHA,
  MOCHA_ADAPTER,

  // lib
  'public/js/lib/angular.js',
  'public/js/lib/angular-resource.js',
  'public/js/lib/ui-bootstrap-tpls-0.2.0.js',

  // test lib
  'node_modules/chai/chai.js',
  'node_modules/sinon/lib/sinon.js',
  'node_modules/sinon/lib/sinon/spy.js',
  'test/lib/angular/angular-mocks.js',

  // app
  'public/js/*.js',

  // test
  'test/client/*.js'
];


// list of files to exclude
exclude = [

];


// test results reporter to use
// possible values: 'dots', 'progress', 'junit'
reporters = ['coverage', 'progress'];

coverageReporter = {
    type: 'html',
    dir: 'coverage/',
}


// web server port
port = 9876;


// cli runner port
runnerPort = 9100;


// enable / disable colors in the output (reporters and logs)
colors = true;


// level of logging
// possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
logLevel = LOG_INFO;


// enable / disable watching file and executing tests whenever any file changes
autoWatch = true;


// Start these browsers, currently available:
// - Chrome
// - ChromeCanary
// - Firefox
// - Opera
// - Safari (only Mac)
// - PhantomJS
// - IE (only Windows)
browsers = ['Chrome'];


// If browser does not capture in given timeout [ms], kill it
captureTimeout = 60000;


// Continuous Integration mode
// if true, it capture browsers, run tests and exit
singleRun = false;
