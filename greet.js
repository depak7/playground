function greet(name) {
  if (typeof name === 'string') {
    name = name.trim();
  }
  return "Hello, " + name + "!";
}

module.exports = { greet };
