function timeOfDay(hours) {
  if (hours >= 5 && hours <= 11) {
    return "Good Morning"; // We 'return' the string so Jest can catch it
  } else if (hours >= 12 && hours <= 17) {
    return "Good Afternoon";
  } else if (hours >= 18 && hours <= 20) {
    return "Good Evening";
  } else {
    return "Good Night";
  }
}

// Export the function itself, not the result of calling it!
module.exports = timeOfDay;
