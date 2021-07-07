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

for item in increasingArray{
    
    if item%2 == 0 || item%3 != 0 {
        increasingArray.remove(at: increasingArray.firstIndex(of: item)!)
    }
    
}
print(increasingArray)

/* Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.

Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.*/
func fibo (){
    
}
