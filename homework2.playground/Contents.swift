import UIKit

// 1. Написать функцию, которая определяет, четное число или нет.

func evenNumber (inptNumber number: Int) {
    if (number%2) == 0 {
        print("Число \(number) четное")
    }else {
        print("Число \(number) нечетное")
    }
    
}
evenNumber(inptNumber: 3)

// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func oddNumber (inptNumber number: Int) {
    if (number%3) == 0 {
        print("Число \(number) делится на 3 без остатка")
    }else {
        print("Число \(number) делится на 3 с остатком")
    }
    
}
oddNumber(inptNumber: 10)

// 3. Создать возрастающий массив из 100 чисел.
var increasingArray = [Int] ()
for i in 1...100{
    increasingArray.append(i)
}
//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for item in increasingArray where item%2 == 0 || item%3 != 0{
        increasingArray.remove(at: increasingArray.firstIndex(of: item)!)
}
print(increasingArray)

/* Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.

Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.*/

func fibo (countArray: Int) -> [Int]{
    var resultArray = [Int]()
    for _ in 1...countArray{
        var result = 0
        var fib1 = 0
        var fib2 = 1
        let n = Int.random(in: 1...countArray)
        var i = 0
        if n >= 2{
            while i < n - 2{
                let fibSum = fib1 + fib2
                fib1 = fib2
                fib2 = fibSum
              i += 1
            }
            result = fib2
        }
        else{
            result = fib1
        }
        resultArray.append(result)
    }
    print(resultArray)
    return resultArray
}
fibo(countArray: 10)


/*
 6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:

a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
b. Пусть переменная p изначально равна двум — первому простому числу.
c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p..
d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
e. Повторять шаги c и d, пока возможно.
 */
func firstArray (count: (Int)) -> [Int]{
    var increasingArray = [Int] ()
    for i in 0...count{
        increasingArray.append(i)
    }
    return increasingArray
}

var n = 228
var p = 2
var secondArray = firstArray(count: n+1)
secondArray[1] = 0
while p <= n{
    if secondArray[p] != 0{
        var j: Int
        j = p + p
        while j <= n{
           secondArray[j] = 0
            j = j + p
    }
    }
    p += 1
}
for num in secondArray{
    if num == 0 {
        secondArray.remove(at: secondArray.firstIndex(of: num)!)
    }
}
secondArray.count
print(secondArray)

