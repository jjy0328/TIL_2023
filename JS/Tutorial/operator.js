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