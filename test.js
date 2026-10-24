const assert = require('assert');
const { greet } = require('./greet');

assert.strictEqual(greet('World'), 'Hello, World!');
assert.strictEqual(greet('  Alice  '), 'Hello, Alice!');
console.log('ok');
