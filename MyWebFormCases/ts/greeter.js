function greeter(person) {
    return "Hello, " + person.firstname + " " + person.lastname;
}
var user = { firstname: "Jane", lastname: "user" };
document.body.innerHTML = greeter(user);
var Student = /** @class */ (function () {
    function Student(firstname, middleInitial, lastname) {
        this.firstname = firstname;
        this.middleInitial = middleInitial;
        this.lastname = lastname;
        this.fullName = firstname + " " + middleInitial + " " + lastname;
    }
    return Student;
}());
var stu = new Student("a", "b", "c");
var abc = "abc";
var age = 37;
var sentence = "Hello my name is " + abc + ", I'm \n" + (age + 1) + " years old";
var list = [1, 2, 3, 4];
var genericList = [5, 6, 7, 8];
var x;
x = ['hello', 10];
console.log(x[0].toUpperCase());
x[3] = 'world'; //当访问一个越界的元素，它的类型默认是联合类型（sting|number）所以不能写成 x[3]=true;
var Color;
(function (Color) {
    Color[Color["Red"] = 0] = "Red";
    Color[Color["Green"] = 1] = "Green";
    Color[Color["Blue"] = 2] = "Blue";
})(Color || (Color = {})); //enum Color { Red=2, Green, Blue } 默认从0开始，可以指定
var c = Color.Blue; //也可以 enum Color { Red=2, Green=6, Blue=8 }
console.log(Color[2]); //下标表示数值而不是索引
// any 和Object类型的区别，any可以调用任意方法，但是object却不行
// any可以用来表示元素类型不确定的数组  let list:any[]=[1,true,"free"]
function warnUser() {
    console.log("there is no value returned");
}
var unusable = undefined; //void类型只能赋值void或者null
// Not much else we can assign to these variables!
//null和undefined是所有类型的子类型这就是说可以这样 let num:number=null 
//然而，当你指定了--strictNullChecks标记，null和undefined只能赋值给void和它们各自。
var u = undefined;
var n = null;
//never类型可以表示永远不能到达或完成的函数的返回值
//never是任何类型的子类型，任何类型都不是never的父类
function error(message) {
    throw new Error(message);
}
create(undefined);
//类型断言
var somevalue = "this is a string";
var strlen = somevalue.length;
//或者
var strrlen = somevalue.length;
//两种形式是等价的。 至于使用哪个大多数情况下是凭个人喜好；然而，当你在TypeScript里使用JSX时，只有 as语法断言是被允许的。
//mm = 3;  //使用let声明的变量不能在声明之前读写
//let mm;
//在块级作用域之外访问不到用let声明的变量
//if (true) {
//    let nn = 4;
//}
//console.log(nn);
function sumMatrix(matrix) {
    var sum = 0;
    for (var i = 0; i < matrix.length; i++) {
        var currentRow = matrix[i];
        for (var i_1 = 0; i_1 < currentRow.length; i_1++) {
            sum += currentRow[i_1];
        }
    }
    return sum;
}
var o = {
    alet: "foo",
    blet: 12,
    c: "bar"
};
var alet = o.alet, blet = o.blet;
//console.log(alet, blet);
var _a = [3, 2], afirst = _a[0], bfirst = _a[1];
//let { alet, ...pass } = o;
//为属性添加默认值
var def;
var a = def.a, _b = def.b, b = _b === void 0 ? 1001 : _b;
def = { a: "a" };
//# sourceMappingURL=greeter.js.map