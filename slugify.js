function slugify(title) {
  return String(title)
    .toLowerCase()
    .split(/[^a-z0-9]+/)
    .filter(Boolean)
    .join('-');
}

module.exports = { slugify };
