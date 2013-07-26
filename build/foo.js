(function() {

  window.Foo = (function() {

    function Foo(name) {
      this.name = name;
    }

    Foo.prototype.sayHello = function() {
      return "Hello " + this.name + "!";
    };

    return Foo;

  })();

}).call(this);
