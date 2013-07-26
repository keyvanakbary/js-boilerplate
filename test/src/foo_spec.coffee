describe "Foo", ->

  foo = null

  beforeEach ->
    foo = new Foo("Keyvan")

  it "says hello", ->
    expect(foo.sayHello()).to.eql("Hello Keyvan!")