expect = chai.expect

describe 'Test laweasyread.controllers', (,) ->
    before (done) ->
        module \laweasyread.controllers
        done!

    describe 'TypeaheadCtrl', (,) ->
        var ctrl
        var scope
        var callback
        getLawNameList =
            get: (cb) -> callback := cb
        lawInfo =
            get: ->

        before inject ($rootScope, $controller) ->
            getLawNameListSpy = sinon.spy getLawNameList, \get

            scope := $rootScope.$new!
            ctrl := $controller \TypeaheadCtrl, do
                $scope: scope
                getLawNameList: getLawNameList
                lawInfo: lawInfo

        it 'Get law list success', (done) ->
            expect scope.laws .to.eql []
            expect getLawNameListSpy.calledWith {}, sinon.match.function .to.be.true

            callback do
                isSuccess: true
                name: [ "law_#num" for num from 1 to 20 ]

            expect scope.laws .to.eql [ "law_#num" for num from 1 to 20 ]
            done!

        it 'Get law list failed', (done) ->
            expect scope.laws .to.eql []
            expect getLawNameListSpy.calledWith {}, sinon.match.function .to.be.true

            callback do
                isSuccess: false

            expect scope.laws .to.eql []
            done!
