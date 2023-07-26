greetings = [
  "Hello!",
  "Greetings!",
  "Welcome!",
  "Hi there!",
  "Salutations!"
]

greetings.each do |greeting|
  Message.create(content: greeting)
end
