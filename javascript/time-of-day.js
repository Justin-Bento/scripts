const currentTime = new Date();
const hours = currentTime.getHours();

if (hours >= 5 && hours <= 11) {
  console.log("Good Morning");
} else if (hours >= 12 && hours <= 17) {
  console.log("Good Afternoon");
} else if (hours >= 18 && hours <= 20) {
  console.log("Good Evening");
} else {
  console.log("Good Night");
}
