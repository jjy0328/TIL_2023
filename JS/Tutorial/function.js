/* 
    function
    - 프로그램 안에는 각각 저마다의 기능을 수행하는 함수 기능이 있음
    - procedure language에서는 function을 sub-program이라고 함
    - function은 input을 받아 output을 return하는 것
/*

/*
    1. function
    function name(param1, param2) { body... return; }
    one finction === one thing
    naming : doSomething, command, verb
    e.g. createCardAndPoint -> createCard, createPoint
    function is object in JS
*/

function printHello() {
    console.log('Hello');
}
printHello();   

function log(message) {
    console.log(message);
}
log('Hello@');
log(1234);

/*
    2. Parameters
    premitive parameters : passed by value
    object parameters : passed by reference
*/
function changeName(obj) {
    obj.name = 'coder';
}
const zero = { name : 'zero' };
changeName(zero);
console.log(zero);

// 3. Default parameters (added in ES6)
function showMessage(message, from = 'Zero') {
    console.log(`${message} by ${from}`);
}
showMessage('Hi!');

// 4. Rest parameters (added in ES6)
// 배열 형태로 전달됨
function printAll(...args) {
    for (let i = 0; i < args.length; i++) {
        console.log(args[i]);
    }

    for (const arg of args) {
        console.log(arg);
    }

    args.forEach((arg) => console.log(arg));
}
printAll('dream', 'coding', 'zero');