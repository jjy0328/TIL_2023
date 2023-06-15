// 1. String concatenation
console.log('my' + ' cat');
console.log('1' + 2);
console.log(`string literals: 1 + 2 = ${1 + 2}`);

// 2. Numeric operators
console.log(1 + 1); // add
console.log(1 - 1); // substract
console.log(1 / 1); // divide
console.log(1 * 1); // multiply
console.log(5 % 2); // remainder
console.log(2 ** 3); // exponentiation

// 3. Increment and decrement operators
let counter = 2;
const preIncrement = ++counter; // counter = counter + 1; preIncrement = counter;
console.log(`preIncrement : ${preIncrement}, counter : ${counter}`);
const postIncrement = counter++; // postIncrement = counter; counter = counter + 1;
console.log(`postIncrement : ${postIncrement}, counter : ${counter}`);

const preDecrement = --counter;
console.log(`preDecrement : ${preDecrement}, counter : ${counter}`);
const postDecrement = counter--;
console.log(`postDecrement : ${postDecrement}, counter : ${counter}`);

// 4. Assignment operators
let x = 3;
let y = 6;
x += y; // x = x + y;
x -= y; // x = x - y;
x *= y; // x = x * y;
x /= y; // x = x / y;

// 5. Comparison operators
console.log(10 < 6); // less than
console.log(10 <= 6); // less than or equal
console.log(10 > 6); // greater than
console.log(10 >= 6); // greater than or equal

// 6. Logical operators : || (or), && (and), ! (not)
const value1 = true;
const value2 = 4 < 2;

// || (or), finds the first truthy value
function check() {
    for (let i = 0; i < 10; i++) {
        // wasting time
        console.log('🤣');
    }
    return true;
}

// 연산을 많이 하는 함수를 뒤에 두는 것이 좋음
console.log(`or : ${value1 || value2 || check()}`);
// &&은 null 체크할 때도 많이 쓰임
console.log(`and : ${value1 && value2 && check()}`);

// ! (not)
console.log(!value1);


// 7. Equality
const stringFive = '5';
const numberFive = 5;

// == loose equality, with type conversion
console.log(stringFive == numberFive); // true
console.log(stringFive != numberFive); // false

// === strict equality, no type conversion
// 웬만하면 === 사용
console.log(stringFive === numberFive); // false
console.log(stringFive !== numberFive); // true

// object equality by reference
// object는 메모리에 탑재될 때 reference가 저장됨
const zero1 = { name: 'zero' };
const zero2 = { name: 'zero' };
const zero3 = zero1;
console.log(zero1 == zero2); // false : 실제로 메모리는 다르기 때문에 서로 다른 object
console.log(zero1 === zero2); // false  refer 값이 다름
console.log(zero1 === zero3); // true

// equality - puzzler
console.log(0 == false); // true : 0은 false로 간주
console.log(0 === false); // false : 0은 boolean 타입이 아님
console.log('' == false); // true : ''은 false로 간주
console.log('' === false); // false : ''은 boolean 타입이 아님
console.log(null == undefined); // true : null과 undefined는 같은 것으로 간주
console.log(null === undefined); // false : null과 undefined는 다른 타입


// 8. Conditional operators : if
const name = 'hi';
if (name === 'zero') {
    console.log('Welcome, Zero!');
} else if (name === 'coder') {
    console.log('You are amazing coder');
} else {
    console.log('unknown');
}

// 9. Ternary operator : ?
// condition ? value1 : value2;
// 간단할 때만 사용
console.log(name === 'zero' ? 'yes' : 'no');

// 10. Switch statement
// use for multiple if checks
// use for enum-like value check
// use for multiple type checks in TS
const browser = 'IE';
switch(browser) {
    case 'IE':
        console.log('go away!');
        break;
    case 'Chrome':
    case 'Firefox':
        console.log('love you!');
        break;
    default:
        console.log('same all!');
        break;
}

// 11. Loops
let i = 3;
while (i > 0) {
    console.log(`while : ${i}`);
    i--;
}

// do while : 블럭을 먼저 실행하고 조건을 확인
do {
    console.log(`do while : ${i}`);
    i--;
} while (i > 0);

// for loop, for(begin; condition; step)
for (i = 3; i > 0; i--) {
    console.log(`for : ${i}`);
}
for (let i = 3; i > 0; i = i - 2) {
    // inline variable declaration
    console.log(`inline variable for : ${i}`);
}

// nested loops : O(n^2) : CPU에 좋지 않음
for (let i = 0; i < 10; i++) {
    for(let j = 0; j < 10; j++) {
        console.log(`i : ${i}, j : ${j}`);
    }
}

// break, continue
// Q1. iterate from 0 to 10 and print only even numbers (use continue)

for (let i = 0; i < 11; i ++) {
    if (i % 2 !== 0){
        continue;
    } else {
        console.log(i);
    }
}
// Q2. iterate from 0 to 10 and print numbers until reaching 8 (use break)
for (let i = 0; i < 11; i ++) {
    if (i > 8){
        break;
    } else {
        console.log(i);
    }
}