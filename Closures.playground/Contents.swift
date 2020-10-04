import UIKit
/*
//func은 아웃풋이 될수도 인풋이 될 수도 있다. 그 방법은...

func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    
    return operation(n1, n2)
    
}

func add(no1: Int, no2: Int) -> Int {
    return no1 + no2
}
//boiling down the fuction
//(Int, Int) -> Int

func multiply (no1: Int, no2: Int) -> Int {
    return no1 * no2
}

calculator(n1: 2, n2: 3, operation: multiply)

*/
//이런 과정들은 closure로 대체될 수 있다.
//closure형태: func와 이름을 지우고 bracket을 앞으로 뺀다. 그리고 in을 반환 데이터 타입 앞에 붙인다.
/*
{ (firstNumber:Int, secondNumber:Int) -> Int in
    return firstNumber + secondNumber
}
*/
func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}


calculator(n1: 2, n2: 3, operation: {(no1: Int, no2: Int) -> Int in
    return no1 * no2
})

//Int 없애기 등 다양하게 줄일 것 줄이면 ...
//함수의 마지막에 operation{}형태이면 operation생략가능
//dollar sign with 0 refers to the first parameter, dollar sign with 1 refers to the second parameter,, so on and so forth
calculator(n1: 2, n2: 3){$0 * $1}


//MARK - Closure Explanation Version 2

//Closure /Lambda

//Closure is simply a function that can be passed around, In computer science, it is also caleed Lambda

//Notice a function can be a data type
var myFunction: ((Int) -> Bool)?

func isGreaterThanThree(number: Int) -> Bool {
    if number > 3 {
        return true
    }
    return false
}
