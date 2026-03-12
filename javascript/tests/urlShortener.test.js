const urlShortener = require("../urlShortener");

test("converts uppercase to lowercase", () => {
  expect(urlShortener("HELLO")).toBe("hello");
});

test("replaces apostrophes with dashes", () => {
  expect(urlShortener("it's-a-me")).toBe("it-s-a-me");
});

test("handles a full URL string", () => {
  expect(urlShortener("Justin's-Project")).toBe("justin-s-project");
});
