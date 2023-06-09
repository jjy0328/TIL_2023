'use strict';

/* 
    1. Variable
    let (added in ES6)
    블럭 안에 있는 변수는 블럭 밖에서는 사용할 수 없다.
    global scope은 블럭 안팎으로 사용가능하다.
    그러나 global은 실행부터 끝까지 항상 메모리에 탑재되어있기 때문에 가능하면 피하는 것이 좋다.
 */


let globalName = 'global name';

{
let name = 'Zero';
console.log(name);
name = 'hello';
console.log(name);
console.log(globalName);
}

// console.log(name);
console.log(globalName);

/*
    1-1. var
    var : js에서는 var을 사용하지 않는다.
    var hoisting : 선언을 맨 위로 끌어올려주는 것
    var는 block scope이 없다.
*/

/*
    2. Constant
    한 번 선언하면 값이 절대 변하지 않는다.
    immutable data type
    1) 보안상의 이유
    2) 쓰레드 안전성
    3) 실수를 방지
*/
const daysInWeek = 7;
const maxNumber = 5;

/*
    3. Variable types
    primitive, single item : number, string, boolean, null, undefined, symbol
        primitive : 더이상 작은 단위로 나눠질 수 없는 한가지의 아이템
    object, box container (작은 단위를 묶어서 한 박스로 관리할 수 있게 해줌)
    function, first-class function
        function도 다른 데이터 타입처럼 변수에 할당이 가능하고, 함수의 파라미터로도 전달이 되고, 리턴타입으로도 리턴이 가능하다.
*/

const count = 17; // integer
const size = 17.1; // decimal number
console.log(`value : ${count}, type : ${typeof count}`);
console.log(`value : ${size}, type : ${typeof size}`);


// number - special numeric values : infinity, -infinity, NaN
// 연산시 값이 valid한 값인지 확인 필요
const infinity = 1 / 0;
const negativeInfinity = -1 / 0;
const nAn = 'not a number' / 2;
console.log(infinity);
console.log(negativeInfinity);
console.log(nAn);

// bigInt (fairly new, don't use it yet)
// 숫자 뒤에 n을 붙이면 bigInt로 인식
const bigInt = 1234567890123456789012345678901234567890n;
console.log(`value : ${bigInt}, type : ${typeof bigInt}`);

// string
const char = 'c';
const brendan = 'brendan';
const greeting = 'hello' + brendan;
console.log(`value : ${greeting}, type : ${typeof greeting}`);
const helloBob = `hi ${brendan}!`; // template literals (string)
console.log(`value : ${helloBob}, type : ${typeof helloBob}`);

// boolean
// false : 0, null, undefined, NaN, ''
// true : any other value
const canRead = true;
const test = 3 < 1; // false
console.log(`value : ${canRead}, type : ${typeof canRead}`);
console.log(`value : ${test}, type : ${typeof test}`);

// null
// 명확하게 null을 값으로 할당한 것
const nothing = null;

// undefined
// 선언은 되었지만 값이 지정되지 않은 것
let x;
console.log(`value : ${x}, type : ${typeof x}`);

// symbol, create unique identifiers for objects
// 고유한 식별자가 필요하거나 동시다발적으로 일어날 수 있는 코드에서 우선순위를 주고 싶을 때 사용
// 식별자를 string으로 쓰는 경우가 있는데 string은 다른 파일에서 동일한 문자로 썼을 때 동일한 식별자로 간주함
// symbol은 동일한 식별자로 간주하지 않음
const symbol1 = Symbol('id');
const symbol2 = Symbol('id');
console.log(symbol1 === symbol2); // false

// 동일한 식별자로 만들고 싶을 때
const gSymbol1 = Symbol.for('id');
const gSymbol2 = Symbol.for('id');
console.log(gSymbol1 === gSymbol2); // true
console.log(`value : ${symbol1.description}, type : ${typeof symbol1}`);

// object, real-life object, data structure
// 물건과 물체를 대표할 수 있는 박스형태
// 한 번 할당된 object는 다른 object로 변경 불가하다.
const zero = { name : 'zero', age : 20 };
console.log(`value : ${zero.name}, type : ${typeof zero.name}`);
zero.age = 21;
console.log(`value : ${zero.age}, type : ${typeof zero.age}`);

/*
    4. Dynamic typing : dynamically typed language
    런타임 시에 타입이 결정됨
    프로토타입을 만들고싶을 때 유용하게 쓸 수 있음
    아래의 예시는 type이 string에서 number로 바뀌는 것을 보여줌
*/
let text = 'hello';
console.log(`value : ${text}, type : ${typeof text}`);
text = 1;
console.log(`value : ${text}, type : ${typeof text}`);
text = '7' + 5;
console.log(`value : ${text}, type : ${typeof text}`);  // string
text = '8' / 2;
console.log(`value : ${text}, type : ${typeof text}`);  // number