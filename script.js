function sayHello(){

const messages = [
"Welcome to my page!",
"Thanks for visiting!",
"I'm learning programming!",
"Someday I'll build amazing apps!",
"Keep coding and dreaming ✨"
];

const random = Math.floor(Math.random() * messages.length);

document.getElementById("message").innerText = messages[random];

}