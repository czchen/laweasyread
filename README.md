# Introduction
[![Build Status](https://travis-ci.org/g0v/laweasyread.png)](https://travis-ci.org/g0v/laweasyread)
[![Dependencies Status](https://gemnasium.com/g0v/laweasyread.png)](https://gemnasium.com/g0v/laweasyread)

# API
All APIs support [JSONP](http://en.wikipedia.org/wiki/JSONP) so it can be
called with callback parameter.

The date related fields in JSON are all ISO-8601 format (ex: 2013-03-31).

## /api/law/:query
This API returns law information. Thq query shall be a full law name like
`中華民國憲法`. The return is a JSON with the following information:

    {
        'isSuccess': boolean // This API call is success or not
        'law': { // Will not exist if IsSuccess is false
            'name': [ // Name of law might be changed, so it is an array to record all its names.
                {
                    'name': string // Name of law
                    'date': string // Start date of name
                }
            ]
            'history': // TBD
            'lyID': string // lyID is used in http://lis.ly.gov.tw/lgcgi/lglaw
            'PCode': string // PCode is used in http://law.moj.gov.tw/
        }
    }

## /api/statute/:query
This API returns article in law.

The following is return JSON:

    {
        'article': string // Article no. The format is \d+(-\d+)
        'content': string // Article content. The leading two whitespaces are removed.
        'lyID': string // lyID is used in http://lis.ly.gov.tw/lgcgi/lglaw
        'passed_date': string // Article passed date.
    }

## /api/suggestion/:query
This API returns possible law names from query.

The following is return JSON:

    [
        {
            'law': string // law name
        }
        ...
    ]

# Environment Variable

## LAWEASYREAD\_COV
The `LAWEASYREAD_COV` is used to indicate that we are generating coverage report
now. In this case, we need to require different source to do so. The coverage
source is generated by [jscoverage](https://npmjs.org/package/jscoverage) in
[test.js](https://github.com/g0v/laweasyread/blob/master/test.js). The path of
coverage code is `lib-cov`. To require correct `lib` or `lib-cov`, you need to
require root directory, and then index.js in root directory will require the
correct one for you.

# Unit Test
Use the following command to run unit test for this package

    npm test

Use the following command to generate coverage report

    node test.js --coverage > report.html

# Reference
* [https://github.com/g0v/twlaw](https://github.com/g0v/twlaw)
* [立法院法律系統](http://lis.ly.gov.tw/lgcgi/lglaw)
