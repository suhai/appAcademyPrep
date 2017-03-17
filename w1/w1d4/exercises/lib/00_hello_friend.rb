class Friend
  # TODO: your code goes here!
  attr_reader :name
  def initialize(name = "Bob")
    @name = name
  end

  def greeting(name = nil)
    name ? "Hello, #{name}!": "Hello!"
  end
end
