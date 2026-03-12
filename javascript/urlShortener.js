function urlShortener(string) {
  return string.toLowerCase().replace(/'/g, "-");
}

module.exports = urlShortener;
