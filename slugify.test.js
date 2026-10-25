const test = require('node:test');
const assert = require('node:assert');
const { slugify } = require('./slugify');

test('lowercases and joins words with single dashes', () => {
  assert.strictEqual(slugify('Hello  World!'), 'hello-world');
});

test('trims leading and trailing separators', () => {
  assert.strictEqual(slugify('  --Foo, Bar--  '), 'foo-bar');
});

test('empty input gives empty string', () => {
  assert.strictEqual(slugify(''), '');
});
