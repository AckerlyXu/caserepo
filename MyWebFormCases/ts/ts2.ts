interface SquareConfig {
    color?: string;
    width?: number;
}
let mySquare: SquareConfig = { colour: "red", width: 100 } as SquareConfig;
interface func {
    (a: string, b: number): boolean
}

let myfunc: func;
myfunc = function (c: string, d: number): boolean{
    return d > 4;
}
myfunc = function (m, n) {
    return 6>5;
}

