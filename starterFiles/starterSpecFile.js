var mod = require('../testFile');
var should = require('chai').should();

/*
  Make sure to include the modules in each of your test files. See the foloowing for an example
  var module = module || {};
  module.exports = {};
*/

describe('testFile', function() {

  beforeEach(function() {
    //before each test
  });

  it('should be correct', function() {
    false.should.equal(true);
  });

  it('should be require a mod', function() {
    mod.someMethod().should.equal(true);
  });
});
