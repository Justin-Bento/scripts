const timeOfDay = require("../time-of-day");

test("returns Good Afternoon for 14:00 (2 PM)", () => {
  expect(timeOfDay(14)).toBe("Good Afternoon");
});
