(function() {

  describe("Foo", function() {
    var foo;
    foo = null;
    beforeEach(function() {
      return foo = new Foo("Keyvan");
    });
    return it("says hello", function() {
      return expect(foo.sayHello()).to.eql("Hello Keyvan!");
    });
  });

}).call(this);
