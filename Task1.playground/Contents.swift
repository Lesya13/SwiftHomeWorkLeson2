import UIKit

// Напишите функцию, которая определяет четное число или нет

func evenNumbers (_ num1: Int) {
    if (num1 % 2 == 0) {
        print ("Данное число четное")
    } else {
        print ("Данное число не четное")
    }
}
evenNumbers(11)


// Напишите функцию, которая опреляет, делтся ли число без остатка на 3

func numbers (_ number1: Int) {
    if (number1 % 3 == 0) {
        print ("Данное число делится на 3 без остатка")
    } else {
        print ("Данное число делится на 3 с остатком")
    }
}
numbers(45)



// Создать возрастающий масси из 100 чисел

var myArray: [Int] = []

for i in 0...99 {
    myArray.append(i)
}
myArray

// Удалить из этого массива все четные числа и все числа которые не делятся на 3

for value in myArray {
    if (value % 3) != 0 || (value % 2) == 0 {
        myArray.remove (at: myArray.firstIndex(of: value)!)
    }
}
myArray


// Написать функцию, которая добавляет в массив новое число Фибаначчи, и добавить при помощи нее 100 элементов



// Заполнить массив из 100 элементов различными простыми числами. НЕ ПОЛУЧАЕТСЯ

var simpleNumbersArray: [Int] = []

for i in 2...541 {
    simpleNumbersArray.append(i)
    }
simpleNumbersArray

for value in simpleNumbersArray {
    if (value % 3) > 1 {
        simpleNumbersArray.remove(at: simpleNumbersArray.firstIndex(of: value)!)
    }
}
simpleNumbersArray
