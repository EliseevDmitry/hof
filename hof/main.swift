//
//  main.swift
//  hof
//
//  Created by Dmitriy Eliseev on 23.10.2024.
//

import Foundation


//------------------------------------------------------------2-----------------------------------------------------------------

//2. Посчитать произведение элементов в массиве
//
//[1, 2, 3, 4] -> 1 * 2 * 3 * 4 = 24
//[0, 1, 2, 3, 4] -> 0 * 1 * 2 * 3 * 4 = 0
//
//func multiplyOfElements(_ array: [Int]) -> Int {
//}
//
//assert(multiplyOfElements([1, 2, 3, 4]) == 24)
//assert(multiplyOfElements([0, 1, 2, 3, 4]) == 0)

//------------------------------------------------------------2-FOR-------------------------------------------------------------

//FOR:
//let arrayInt = [1, 2, 3, 4]
//func multiplyOfElements(_ array: [Int]) -> Int {
//    var counter = 1
//    for item in array {
//        counter *= item
//    }
//    return counter
//}
//
//let result = multiplyOfElements(arrayInt)
//print(result)

//------------------------------------------------------------2-WHILE-----------------------------------------------------------

//WHILE
//let arrayInt = [1, 2, 3, 4]
//func multiplyOfElements(_ array: [Int]) -> Int {
//    var counter = 1
//    var index = 0
//    while index < array.count {
//        counter *= array[index]
//        index += 1
//    }
//
//    return counter
//}
//
//let result = multiplyOfElements(arrayInt)
//print(result)

//------------------------------------------------------------3-----------------------------------------------------------------

//3. Возвести каждый элементв в квадрат
//
//[1, 2, 3, 4, 5] -> [1, 4, 9, 16, 25]
//
//func squareElements(_ array: inout [Int]) -> [Int] {
//}
//
//assert(multiplyOfElements([1, 2, 3, 4]) == 24)

//------------------------------------------------------------3-FOR-------------------------------------------------------------

//FOR:
//var arrayInt = [1, 2, 3, 4, 5]
//func squareElements(_ array: inout [Int]) -> [Int] {
//    var index = 0
//    for item in array {
//        array[index] = item * item
//        index += 1
//    }
//    return array
//}
//
//let result = squareElements(&arrayInt) //разобраться с inout
//print(result)

//------------------------------------------------------------3-WHILE-----------------------------------------------------------

//WHILE
//var arrayInt = [1, 2, 3, 4, 5]
//func squareElements(_ array: inout [Int]) -> [Int] {
//    var index = 0
//    while index < array.count {
//       array[index] = array[index] * array[index]
//        index += 1
//    }
//    return array
//}
//
//let result = squareElements(&arrayInt) //разобраться с inout
//print(result)

//------------------------------------------------------------4-----------------------------------------------------------------

//let num = 5
//var range = 1...num
//
////Проходимся по диапазону в цикле
//for item in 1...num {
//}
//
//4. Посчитать сумму диапазона от 1 до num
//
//2 -> 3 (1 + 2)
//8 -> 36 (1 + 2 + 3 + 4 + 5 + 6 + 7 + 8)
//
//func summation(_ num: Int) -> Int {
//}
//
//assert(summation(2) == 3)
//assert(summation(8) == 36)

//------------------------------------------------------------4-FOR-------------------------------------------------------------

//FOR:
//var num = 8
//func summation(_ num: Int) -> Int {
//    var counter = 0
//    for item in 1...num {
//      counter += item
//    }
//    return counter
//}
//
//let result = summation(num)
//print(result)


//------------------------------------------------------------4-WHILE-----------------------------------------------------------

//WHILE
//var num = 8
//func summation(_ num: Int) -> Int {
//    var counter = 0
//    var index = 1 //начальная цифра диапазона
//    while index < (1...num).count + 1 { //num не корректно использовать в диапазоне если не с 1
//        counter += index
//        index += 1
//    }
//    return counter
//}
//
//let result = summation(num)
//print(result)

//------------------------------------------------------------5-----------------------------------------------------------------

//Математическая функция возведения в степень - pow(Double, Double)
//var some = pow(2.0, 3.0) //2 в 3 степени = 8

//Конвертация Int в Double и обратно
//var a = 123
//var b = Double(a) // 123.0
//var c = Int(b) //123

//5. Возвести каждый элемент массива в куб
//
//[1, 2, 3] -> [1, 8, 27]
//
//func cube(_ array: Array<Int>) -> Array<Int> {
//}

//------------------------------------------------------------5-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [1, 2, 3]
//func cube(_ array: Array<Int>) -> Array<Int> {
//    var resultInt: [Int] = []
//    for item in array {
//        // resultInt.append(Int(pow(Float(item), 3.0))) //разобраться с decimal
//        resultInt.append(NSDecimalNumber(decimal:(pow(Decimal(NSDecimalNumber(decimal: Decimal(item)).intValue), 3))).intValue)
//    }
//    return resultInt
//}
//
//let result = cube(arrayOne)
//print(result)


//------------------------------------------------------------5-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [1, 2, 3]
//func cube(_ array: Array<Int>) -> Array<Int> {
//    var resultInt: [Int] = []
//    var index = 0
//    while index < array.count { //num не корректно использовать в диапазоне если не с 1
//        resultInt.append(Int(pow(Float(array[index]), 3.0)))
//        index += 1
//    }
//    return resultInt
//}
//
//let result = cube(arrayOne)
//print(result)

//------------------------------------------------------------6-----------------------------------------------------------------

//6. Инвертировать элементы массива
//
//[1,2,3,4,5] -> [-1,-2,-3,-4,-5]
//[1,-2,3,-4,5] -> [-1,2,-3,4,-5]
//[] -> []
//
//func invert(_ array: [Int]) -> [Int] {
//}

//------------------------------------------------------------6-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [1, -2, 3, -4, 5]
//func invert(_ array: [Int]) -> [Int] {
//    var resultInt: [Int] = []
//    for item in array {
//        resultInt.append(item * -1)
//    }
//    return resultInt
//}
//
//let result = invert(arrayOne)
//print(result)


//------------------------------------------------------------6-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [1, -2, 3, -4, 5]
//func invert(_ array: [Int]) -> [Int] {
//    var resultInt: [Int] = []
//    var index = 0
//    while index < array.count {
//        resultInt.append(array[index] * -1)
//        index += 1
//    }
//    return resultInt
//}
//
//let result = invert(arrayOne)
//print(result)


//24.10.2024

//------------------------------------------------------------7-----------------------------------------------------------------

//7. Найти минимальное число в массиве
//
//[34, 15, 88, 2] -> 2
//[34, -345, -1, 100] -> -345
//
//func findSmallest(_ array: [Int]) -> Int {
//}

//------------------------------------------------------------7-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [34, 15, 88, 2]
//func findSmallest(_ array: [Int]) -> Int {
//    var resultInt = Int()
//    if let firstElement = array.first {
//         resultInt = firstElement
//    } else {
//        return 0
//    }
//    for item in array {
//        resultInt = resultInt > item ? item : resultInt
//    }
//    return resultInt
//}
//
//let result = findSmallest(arrayOne)
//print(result)


//------------------------------------------------------------7-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [34, 15, 88, 2]
//func findSmallest(_ array: [Int]) -> Int {
//    var resultInt = Int()
//    var index = Int()
//    if let firstElement = array.first {
//         resultInt = firstElement
//    } else {
//        return 0
//    }
//    while index < array.count {
//        resultInt = resultInt > array[index] ? array[index] : resultInt
//        index += 1
//    }
//    return resultInt
//}
//
//let result = findSmallest(arrayOne)
//print(result)


//------------------------------------------------------------8-----------------------------------------------------------------

//8. Найти максимальное и минимальное число в массиве и вывести в кортеже (функция max, min)

//[101, 5, 77, 505, 404] -> (5, 505)
//
//func minMax(_ array: [Int]) -> (Int, Int) {
//}

//------------------------------------------------------------8-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [101, 5, 77, 505, 404]
//func minMax(_ array: [Int]) -> (Int, Int) {
//    var resultInt: (Int, Int) = (0, 0)
//    if let firstElement = array.first {
//         resultInt = (firstElement, firstElement)
//    } else {
//        return (0,0)
//    }
//    for item in array {
//        resultInt.0 = resultInt.0 < item ? item : resultInt.0
//        resultInt.1 = resultInt.1 > item ? item : resultInt.1
//    }
//    return resultInt
//}
//
//let result = minMax(arrayOne)
//print(result)


//------------------------------------------------------------8-WHILE-----------------------------------------------------------

//WHILE
/*
 var arrayOne = [101, 5, 77, 505, 404]
 func minMax(_ array: [Int]) -> (Int, Int) {
 var index = Int()
 var resultInt: (Int, Int) = (0, 0)
 if let firstElement = array.first {
 resultInt = (firstElement, firstElement)
 } else {
 return (0,0)
 }
 while index < array.count{
 //        resultInt.0 = resultInt.0 < array[index] ? array[index] : resultInt.0
 //        resultInt.1 = resultInt.1 > array[index] ? array[index] : resultInt.1
 resultInt = (max(resultInt.0, array[index]), min(resultInt.1, array[index]))// - чит решение
 index += 1
 }
 return resultInt
 }
 
 let result = minMax(arrayOne)
 print(result)
 */

//------------------------------------------------------------9-----------------------------------------------------------------

//9. Функция принимает количество и число и возвращает массив повторяющихся чисел
//
//4, 0 -> [0, 0, 0, 0]
//5, -1 -> [-1, -1, -1, -1, -1]
//
//func repeatNumber(_ number: Int, count: Int) -> [Int] {
//}

//------------------------------------------------------------9-FOR-------------------------------------------------------------

//FOR:
//var number = 0
//var count = 4
//func repeatNumber(_ number: Int, count: Int) -> [Int] {
//    var resultInt: [Int] = []
//    if count < 1 {
//        return []
//    }
//    for item in 1...count {
//        resultInt.append(number)
//    }
//    return resultInt
//}
//
//let result = repeatNumber(number, count: count)
//print(result)


//------------------------------------------------------------9-WHILE-----------------------------------------------------------

//WHILE
//var number = 0
//var count = 4
//func repeatNumber(_ number: Int, count: Int) -> [Int] {
//    var resultInt: [Int] = []
//    var index = 0
//    if count < 1 {
//        return []
//    }
//    while index < count {
//        resultInt.append(number)
//        index += 1
//    }
//
//    return resultInt
//}
//
//let result = repeatNumber(number, count: count)
//print(result)

//------------------------------------------------------------10-----------------------------------------------------------------

//let numver = -10
//let result = abs(number)
//print(result) //10

//10. Сумма всех элементов по модулю
//
//[-1, 2, -3, 4, -5] → 1 + 2 + 3 + 4 + 5 → 15
//
//func sumOfAbs(_ array: [Int]) -> Int {
//}

//------------------------------------------------------------10-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [-1, 2, -3, 4, -5]
//func sumOfAbs(_ array: [Int]) -> Int {
//    var counter = Int()
//    for item in arrayOne {
//        counter += abs(item)
//    }
//  return counter
//}
//
//let result = sumOfAbs(arrayOne)
//print(result)


//------------------------------------------------------------10-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [-1, 2, -3, 4, -5]
//func sumOfAbs(_ array: [Int]) -> Int {
//    var counter = Int()
//    var index = 0
//    while index < array.count {
//        counter += abs(array[index])
//        index += 1
//    }
//  return counter
//}
//
//let result = sumOfAbs(arrayOne)
//print(result)

//------------------------------------------------------------11-----------------------------------------------------------------

//11. Подсчитать количество true в массиве
//
//[true,  true,  true,  false,
//  true,  true,  true,  true ,
//  true,  false, true,  false,
//  true,  false, false, true ,
//  true,  true,  true,  true ,
//  false, false, true,  true] -> 17
//
//func countTrues(_ array: [Bool]) -> Int {
//}

//------------------------------------------------------------11-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [true,  true,  true,  false,
//                true,  true,  true,  true ,
//                true,  false, true,  false,
//                true,  false, false, true ,
//                true,  true,  true,  true ,
//                false, false, true,  true]
//func countTrues(_ array: [Bool]) -> Int {
//    var counter = Int()
//    for item in arrayOne {
//        counter += item == true ? 1 : 0
//    }
//    return counter
//}
//
//let result = countTrues(arrayOne)
//print(result)


//------------------------------------------------------------11-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [true,  true,  true,  false,
//                true,  true,  true,  true ,
//                true,  false, true,  false,
//                true,  false, false, true ,
//                true,  true,  true,  true ,
//                false, false, true,  true]
//func countTrues(_ array: [Bool]) -> Int {
//    var counter = Int()
//    var index = 0
//    while index < array.count {
//        counter += array[index] == true ? 1 : 0
//        index += 1
//    }
//    return counter
//}
//
//let result = countTrues(arrayOne)
//print(result)


//------------------------------------------------------------12-----------------------------------------------------------------

//12. Посчитать сумму от n до m
//
//1, 2 -> 3 (1 + 2)
//2, 8 -> 35 (2 + 3 + 4 + 5 + 6 + 7 + 8)
//
//func summation(n: Int, m: Int) -> Int {
//}

//------------------------------------------------------------12-FOR-------------------------------------------------------------

//FOR:
//var numberN = 2
//var numberM = 8
//func summation(n: Int, m: Int) -> Int {
//    var counter = Int()
//    for item in n...m {
//        counter += item
//    }
//    return counter
//}
//
//let result = summation(n: numberN, m: numberM)
//print(result)


//------------------------------------------------------------12-WHILE-----------------------------------------------------------

//WHILE
//var numberN = 2
//var numberM = 8
//func summation(n: Int, m: Int) -> Int {
//    var counter = Int()
//    var index = n
//    while index != (n...m).count + n {
//        counter += index
//        index += 1
//    }
//    return counter
//}
//
//let result = summation(n: numberN, m: numberM)
//print(result)


//------------------------------------------------------------13-----------------------------------------------------------------

//13. Подсчитать среднюю оценку в массиве
//
//[1, 2, 3, 4, 5] → 3
//
//func average(_ marks: [Int]) -> Int {
//}

//------------------------------------------------------------13-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [1, 2, 3, 4, 5]
//func average(_ marks: [Int]) -> Int {
//    var counter = Int()
//    for item in marks {
//        counter += item
//    }
//    return Int(counter/marks.count)
//}
//
//let result = average(arrayOne)
//print(result)


//------------------------------------------------------------13-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [1, 2, 3, 4, 5]
//func average(_ marks: [Int]) -> Int {
//    var counter = Int()
//    var index = Int()
//    while index < marks.count {
//        counter += marks[index]
//        index += 1
//    }
//    return Int(counter/marks.count)
//}
//
//let result = average(arrayOne)
//print(result)

//------------------------------------------------------------14-----------------------------------------------------------------

//14. Конвертировать число в последовательность из 1 и 0
//
//4 -> "1010".
//12 -> "101010101010"
//
//func convert(num: Int) -> String {
//}

//------------------------------------------------------------14-FOR-------------------------------------------------------------

//FOR:
//var number = 12
//func convert(num: Int) -> String {
//    var counter = String()
//    for item in 1...num {
//        if item % 2 == 0 {
//            counter.append("0")
//        } else {
//            counter.append("1")
//        }
//    }
//    return counter
//}
//
//let result = convert(num: number)
//print(result)


//------------------------------------------------------------14-WHILE-----------------------------------------------------------

//WHILE
//var number = 12
//func convert(num: Int) -> String {
//    var counter = String()
//    var index = Int()
//    while index != num {
//        counter += index % 2 == 0 ? "1" : "0"
//        index += 1
//    }
//    return counter
//}
//
//let result = convert(num: number)
//print(result)


//------------------------------------------------------------15-----------------------------------------------------------------

//15. Посчитать количество пололожительных чисел и сумму отрицательных и вывести в кортеже
//
//[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15] → (10, -65)
//
//func countOfPositivesSumOfNegatives(_ array: [Int]) -> (Int, Int) {
//}

//------------------------------------------------------------15-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]
//func countOfPositivesSumOfNegatives(_ array: [Int]) -> (Int, Int) {
//    var counter = (Int(), Int())
//    for item in array {
//        counter = (item > 0 ? (counter.0 + 1) : (counter.0), item < 0 ? (counter.1 + item) : (counter.1))
//    }
//    return counter
//}
//
//let result = countOfPositivesSumOfNegatives(arrayOne)
//print(result)


//------------------------------------------------------------15-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]
//func countOfPositivesSumOfNegatives(_ array: [Int]) -> (Int, Int) {
//    var counter = (Int(), Int())
//    var index = Int()
//    while index < array.count {
//        counter = (array[index] > 0 ? (counter.0 + 1) : (counter.0), array[index] < 0 ? (counter.1 + array[index]) : (counter.1))
//        index += 1
//    }
//
//    return counter
//}
//
//let result = countOfPositivesSumOfNegatives(arrayOne)
//print(result)

//------------------------------------------------------------16-----------------------------------------------------------------

//16. Реализовать функцию возведения в степень

//(3, 2) -> 9 ( = 3 * 3 )
//(2, 3) -> 8 ( = 2 * 2 * 2 )
//(10, 6) -> 1000000
//
//func numberToPower(_ number: Int, _ power: Int) -> Int {
//}

//------------------------------------------------------------16-FOR-------------------------------------------------------------

//FOR:
//var number = 10
//var power = 6
//func numberToPower(_ number: Int, _ power: Int) -> Int {
//    var counter = number
//    for item in 1...power - 1 {
//        counter *= number
//    }
//    return counter
//}
//
//let result = numberToPower(number, power)
//print(result)


//------------------------------------------------------------16-WHILE-----------------------------------------------------------

//WHILE
//var number = 10
//var power = 6
//func numberToPower(_ number: Int, _ power: Int) -> Int {
//    var counter = number
//    var index = 1
//    while index != power {
//        counter *= number
//        index += 1
//    }
//    return counter
//}
//
//let result = numberToPower(number, power)
//print(result)


//------------------------------------------------------------17-----------------------------------------------------------------

//17. Почистить массив от нечетных чисел
//
//[0,1] → [0]
//[0,1,2,3,4,5] → [0,2,4]
//
//func noOdds(array: [Int]) -> [Int] {
//}
//
//(Усложненный вариант - удаление элементов из массива)
//func noOdds(array: inout [Int]) -> [Int] {
//}

//------------------------------------------------------------17-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [0,1,2,3,4,5]
//func noOdds(array: inout [Int]) {
//    var counter = [Int]()
//    for item in array {
//        if item % 2 == 0 {
//            counter.append(item)
//        }
//    }
//    array = counter
//}
//
//noOdds(array: &arrayOne)
//print(arrayOne)


//------------------------------------------------------------17-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [0,1,2,3,4,5, 6, 8, 5, 3, 1]
//func noOdds(array: inout [Int]) {
//    var index = Int()
//    while index < array.count {
//        //array[index] % 2 == 0 ? index += 1 : array.remove(at: index) // тернарный оператор он не съел
//        if array[index] % 2 == 0 {
//            index += 1
//        } else {
//            array.remove(at: index)
//        }
//    }
//}
//
//noOdds(array: &arrayOne)
//print(arrayOne)

//------------------------------------------------------------18-----------------------------------------------------------------

//18. Найти сумму минимальных значений
//
//[ [ 1, 2, 3, 4, 5 ], [ 5, 6, 7, 8, 9 ], [ 20, 21, 34, 56, 100 ]]
//-> 1 + 5 + 20 = 26
//
//func sumOfMinimums(_ array: [[Int]]) -> Int {
//}

//------------------------------------------------------------18-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [[ 1, 2, 3, 4, 5 ], [ 5, 6, 7, 8, 9 ], [ 20, 21, 34, 56, 100 ]]
//func sumOfMinimums(_ array: [[Int]]) -> Int {
//    var counter = Int()
//    for item in array {
//        if let minValue = item.min(){
//            counter += minValue
//        }
//    }
//    return counter
//}
//
//
//let result = sumOfMinimums(arrayOne)
//print(result)


//------------------------------------------------------------18-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [[ 1, 2, 3, 4, 5 ], [ 5, 6, 7, 8, 9 ], [ 20, 21, 34, 56, 100 ]]
//func sumOfMinimums(_ array: [[Int]]) -> Int {
//    var counter = Int()
//    var index = Int()
//    while index < array.count {
//        if let newValue = array[index].min(){
//            counter += newValue
//        }
//        index += 1
//    }
//    return counter
//}
//
//
//let result = sumOfMinimums(arrayOne)
//print(result)

//------------------------------------------------------------19-----------------------------------------------------------------

//let number: Double = 8
//let root = number.squareRoot()
//
//print(root, type(of: root))

//19. Массив четной величены, первую половину массива суммировать, вторую половину умножить и вывести в кортеже
//
//[6, 5, 4, 3, 2, 1] -> (6 + 5 + 4, 3 * 2 * 1) -> (15, 6)
//
//func sumMultiply(_ array: [Int]) -> (Int, Int) {
//}
//
//assert(sumMultiply([6, 5, 4, 3, 2, 1]) == (15, 6))

//------------------------------------------------------------19-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [6, 5, 4, 3, 2, 1]
//func sumMultiply(_ array: [Int]) -> (Int, Int) {
//    var counter = (Int(), 1)
//    for (index, item) in array.enumerated() {
//        if index < array.count / 2 {
//            counter.0 += item
//        } else {
//            counter.1 *= item
//        }
//    }
//    return counter
//}
//
//
//let result = sumMultiply(arrayOne)
//print(result)


//------------------------------------------------------------19-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [6, 5, 4, 3, 2, 1]
//func sumMultiply(_ array: [Int]) -> (Int, Int) {
//    var counter = (Int(), 1)
//    var index = Int()
//    while index < array.count {
//        index < array.count/2 ? (counter.0 += array[index]) : (counter.1 *= array[index])
//        index += 1
//    }
//
//    return counter
//}
//
//
//let result = sumMultiply(arrayOne)
//print(result)

//------------------------------------------------------------20-----------------------------------------------------------------

//let number: Double = 9
//let root = number.squareRoot()
//print(root)
//
//print(root, type(of: root))
//
////Проверка что дробное число является целым
//if root.truncatingRemainder(dividingBy: 1) == 0 {
//        print("целое число ->", root)
//}


//print(5.4.truncatingRemainder(dividingBy: 2)) - тяжелая функция для понимания

//5.4 / 2 = 2.7
//
//То есть, результат деления — 2.7.
//
//Чтобы найти остаток от деления с использованием truncatingRemainder, нужно отбросить целую часть от результата деления и умножить оставшуюся дробную часть обратно на делитель:
//
//5.4 - (2 х 2) = 1,4

//print(5.4.truncatingRemainder(dividingBy: 3))

//5,4 / 3 = 1,8
//5.4 - (1(целая часть от деления) * 3) = 5,4 - 3 = 2,4

//Условие задачи:
//20. Возвести в квадрат число если не берется корень или взять корень числа  и вернуть массив
//
//[4.0, 3.0, 9.0, 7.0, 2.0, 1.0] -> [2.0, 9.0, 3.0, 49.0, 4.0, 1.0]
//
//func rootOrSquare(_ array: [Double]) -> [Double] {
//}

//------------------------------------------------------------20-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [4.0, 3.0, 9.0, 7.0, 2.0, 1.0]
//func rootOrSquare(_ array:  inout [Double]) {
//    for (index, item) in array.enumerated() {
//        //жестко - сделал с теорией которая была по ссылке задачи
//        item.squareRoot().truncatingRemainder(dividingBy: 1) == 0 ? (array[index] = item.squareRoot()) : (array[index] = pow(item, 2))
//    }
//
//}
//
//rootOrSquare(&arrayOne)
//print(arrayOne)


//------------------------------------------------------------20-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [4.0, 3.0, 9.0, 7.0, 2.0, 1.0]
//func rootOrSquare(_ array:  inout [Double]) {
//    var index = Int()
//    while index < array.count {
//        array[index].squareRoot().truncatingRemainder(dividingBy: 1) == 0 ? (array[index] = array[index].squareRoot()) : (array[index] = pow(array[index], 2))
//        index += 1
//    }
//    
//}
//
//rootOrSquare(&arrayOne)
//print(arrayOne)

//------------------------------------------------------------21-----------------------------------------------------------------

//21. Возвести в квадрат число если не берется корень или взять корень числа  и вернуть массив
//
//[4,3,9,7,2,1] -> [2,9,3,49,4,1]
//
//func rootOrSquare(_ array: [Int]) -> [Int] {
//}

//------------------------------------------------------------21-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [4,3,9,7,2,1]
//func rootOrSquare(_ array:  inout [Int]) {
//    for (index, item) in array.enumerated() {
//        //приведение типов
//        Float(item).squareRoot().truncatingRemainder(dividingBy: 1) == 0 ? (array[index] = Int(Float(item).squareRoot())) : (array[index] = Int(pow(Float(item), 2)))
//    }
//
//}
//
//rootOrSquare(&arrayOne)
//print(arrayOne)


//------------------------------------------------------------21-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [4,3,9,7,2,1]
//func rootOrSquare(_ array:  inout [Int]) {
//    var index = Int()
//    while index < array.count {
//        Float(array[index]).squareRoot().truncatingRemainder(dividingBy: 1) == 0 ? (array[index] = Int(Float(array[index]).squareRoot())) : (array[index] = Int(pow(Float(array[index]), 2)))
//        index += 1
//    }
//
//}
//
//rootOrSquare(&arrayOne)
//print(arrayOne)

//------------------------------------------------------------22-----------------------------------------------------------------

//22. Есть отсортированный массив. Найти индекс числа или
//если нет числа индекс где он должен быть
//
//target = 7
//[1, 2, 3, 4, 6, 8, 9] -> 5
//[1, 2, 7, 9] -> 2
//
//func findIndex(_ array: [Int], target: Int) -> Int {
//}
//Исключил все условия!

//------------------------------------------------------------22-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [1, 2, 3, 4, 6, 8, 9]
//var target = 7
//func findIndex(_ array: [Int], target: Int) -> Int {
//    var result = Int()
//    for (index, item) in array.enumerated() {
//        if array.index(after: index) < array.endIndex {
//            if target > item && target < array[array.index(after: index)] {
//                result = (index + 1)
//                break
//            }
//        }
//        if target == item {
//            result = index
//            break
//        }
//        if index == 0 && target < item {
//            result = array.startIndex
//            break
//        }
//        if array.index(after: index) == array.endIndex && result == 0 {
//            result = array.endIndex
//            break
//        }
//    }
//return result
//}
//
//let result = findIndex(arrayOne, target: target)
//print(result)


//------------------------------------------------------------22-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [1, 2, 3, 4, 6, 8, 9]
//var target = 7
//func findIndex(_ array: [Int], target: Int) -> Int {
//    var result = Int()
//    var index = Int()
//    while index < array.endIndex {
//        if array.index(after: index) < array.endIndex {
//            if target > array[index] && target < array[array.index(after: index)] {
//                result = (index + 1)
//                break
//            }
//        }
//        if target == array[index] {
//            result = index
//            break
//        }
//        if index == 0 && target < array[index] {
//            result = array.startIndex
//            break
//        }
//        if array.index(after: index) == array.endIndex && result == 0 {
//            result = array.endIndex
//            break
//        }
//        index += 1
//    }
//return result
//}
//
//let result = findIndex(arrayOne, target: target)
//print(result)

//------------------------------------------------------------23-----------------------------------------------------------------

//23. Написать функцию которая умножает каждый элемент на индекс
//
//[1, 2, 3, 4] -> [1 * 0, 2 * 1, 3 * 2, 4 * 3] -> [0, 2, 6, 12]
//
//func multiplyIndex(_ array: [Int]) -> [Int] {
//}

//------------------------------------------------------------23-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [1, 2, 3, 4]
//func multiplyIndex(_ array: inout [Int]) {
//    for (index, item) in array.enumerated() {
//        array[index] = (index * item)
//    }
//}
//
//multiplyIndex(&arrayOne)
//print(arrayOne)


//------------------------------------------------------------23-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [1, 2, 3, 4]
//func multiplyIndex(_ array: inout [Int]) {
//    var index = Int()
//    while index < array.count {
//        array[index] = index * array[index]
//        index += 1
//    }
//}

//multiplyIndex(&arrayOne)
//print(arrayOne)


//------------------------------------------------------------24-----------------------------------------------------------------

//24. Написать функцию которая возводит каждый элемент в степень по счету
//
//
//[10, 2, 5, 1] -> [10 ^ 1, 2 ^ 2, 5 ^ 3, 1 ^ 4] -> [10, 4, 125, 1]
//
//func multiplyPower(_ array: [Int]) -> [Int] {
//}

//------------------------------------------------------------24-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [10, 2, 5, 1]
//func multiplyIndex(_ array: inout [Int]) {
//    for (index, item) in array.enumerated() {
//        array[index] = Int(pow(Float(item), Float(index + 1)))
//    }
//}
//
//multiplyIndex(&arrayOne)
//print(arrayOne)


//------------------------------------------------------------24-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [10, 2, 5, 1]
//func multiplyIndex(_ array: inout [Int]) {
//    var index = Int()
//    while index < array.count {
//        array[index] = Int(pow(Float(array[index]), Float(index + 1)))
//        index += 1
//    }
//}
//
//multiplyIndex(&arrayOne)
//print(arrayOne)

//------------------------------------------------------------25-(косяк в условии)-----------------------------------------------------------------
//Преобразование строки в массив
//"abc" ->  ["a","b","c"]

//let string = "abcdefgh"
//let array: [Character] = Array(string)

//Преобразование массива в строку
// ["a","b","c"] ->  "abc"

//let array: [Character] = ["a","b","c"]
//let string1 = String(array)

//25. Написать функцию которая конвертирует строку в массив Character и добавляет индекс
//
//"abcd" -> ["a", "b", "c", "d"]
//
//func convertToArray(_ string: String) -> Array<Character> {
//}

//------------------------------------------------------------25-FOR-------------------------------------------------------------

//FOR:
//var str = "abcd"
//func convertToArray(_ string: String) -> Array<Character> {
//    var result: [Character] = []
//    for item in string {
//        result.append(item)
//    }
//    return result
//}
//
//let result = convertToArray(str)
//print(result)


//------------------------------------------------------------25-WHILE-----------------------------------------------------------

//WHILE
//var str = "abcd"
//func convertToArray(_ string: String) -> Array<Character> {
//    var index = string.startIndex
//    var result: [Character] = []
//    while index < string.endIndex {
//        result.append(string[index])
//        index = string.index(after: index)
//    }
//    return result
//}
//
//let result = convertToArray(str)
//print(result)


//------------------------------------------------------------26-----------------------------------------------------------------
//26. Написать функцию которая конвертирует строку в массив Character и добавляет индекс
//
//"abcd" -> ["a0", "b1", "c2", "d3"]
//
//func convertToArray(_ string: String) -> Array<String> {
//}

//------------------------------------------------------------26-FOR-------------------------------------------------------------

//FOR:
//var str = "abcd"
//func convertToArray(_ string: String) -> Array<String> {
//    var result: [String] = []
//    for (index,item) in string.enumerated() {
//        result.append("\(item)\(index)")
//    }
//    return result
//}
//
//let result = convertToArray(str)
//print(result)


//------------------------------------------------------------26-WHILE-----------------------------------------------------------

//WHILE
//var str = "abcd"
//func convertToArray(_ string: String) -> Array<String> {
//    var result: [String] = []
//    var index = string.startIndex
//    while index < string.endIndex {
//        result.append("\(string[index])\(string.distance(from: string.startIndex, to: index))")
//        index = string.index(after: index)
//    }
//    return result
//}
//
//let result = convertToArray(str)
//print(result)

//преобразование String.index в Int только через функцию строки вычисленияя "distance"


//------------------------------------------------------------27-----------------------------------------------------------------
//27. Удалить первый и последний элемент строки
//
//"place" -> "lac"
//
//func removeFirstLast(_ string: String) -> String {
//}

//------------------------------------------------------------27-FOR-------------------------------------------------------------

//FOR:
//var str = "place"
//func removeFirstLast(_ string: inout String) {
//    let arrChar:[Character] = Array(string)
//    string.removeAll()
//    for (index, item) in arrChar.enumerated() {
//        if index == 0 || index == arrChar.count - 1 {
//            continue
//        } else {
//            string.append(item)
//        }
//    }
//}
//
//removeFirstLast(&str)
//print(str)


//------------------------------------------------------------27-WHILE-----------------------------------------------------------

//WHILE
//var str = "place"
//func removeFirstLast(_ string: inout String) {
//    var index = string.startIndex
//    while index < string.endIndex {
//        if index == string.startIndex {
//            string.remove(at: index)
//        }
//        if index == string.index(before: string.endIndex){
//            string.remove(at: index)
//            break
//        }
//            index = string.index(after: index)
//    }
//}
//
//removeFirstLast(&str)
//print(str)


//------------------------------------------------------------28-----------------------------------------------------------------
//28. Удалить элемент строки по-середине
//
//"place" -> "plce"
//
//func removeCenter(_ string: String) -> String {
//}
//------------------------------------------------------------28-FOR-------------------------------------------------------------

//FOR:
//var str = "place"
//func removeFirstLast(_ string: inout String) {
//    var arrChar: [Character] = Array(string)
//    if arrChar.count % 2 == 0 {
//        return
//    }
//    string.removeAll()
//    let centerIndex = (arrChar.count - 1)/2
//    for (index, item) in arrChar.enumerated() {
//        if index == centerIndex {
//            continue
//        }
//        string.append(item)
//    }
//}
//
//removeFirstLast(&str)
//print(str)


//------------------------------------------------------------28-WHILE-----------------------------------------------------------

//WHILE
//var str = "place"
//func removeFirstLast(_ string: inout String) {
//    var index = string.startIndex
//    if string.distance(from: string.startIndex, to: string.endIndex) % 2 == 0 {
//        return
//    }
//    while index < string.endIndex {
//        if index == string.index(string.startIndex, offsetBy: ((string.distance(from: string.startIndex, to: string.endIndex)-1)/2)) {
//            string.remove(at: index)
//        }
//       index = string.index(after: index)
//    }
//}
//
//removeFirstLast(&str)
//print(str)

//------------------------------------------------------------29-----------------------------------------------------------------
//29. Суммировать четные числа
//
//[4, 3, 1, 2, 5, 10, 6, 7, 9, 8]  -> 4 + 2 + 10 + 6 + 8 -> 30
//
//func sumEvenNumbers(array: [Int]) -> Int {
//}
//------------------------------------------------------------29-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [4, 3, 1, 2, 5, 10, 6, 7, 9, 8]
//func sumEvenNumbers(array: [Int]) -> Int {
//    var counter = Int()
//    for item in array {
//       counter += item % 2 == 0 ? item : 0
//    }
//    return counter
//}
//
//
//let result = sumEvenNumbers(array: arrayOne)
//print(result)


//------------------------------------------------------------29-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [4, 3, 1, 2, 5, 10, 6, 7, 9, 8]
//func sumEvenNumbers(array: [Int]) -> Int {
//    var counter = Int()
//    var index = Int()
//    while index < array.count {
//        counter += array[index] % 2 == 0 ? array[index] : 0
//        index += 1
//    }
//    return counter
//}
//
//
//let result = sumEvenNumbers(array: arrayOne)
//print(result)

//------------------------------------------------------------30-----------------------------------------------------------------
//30. Посчитать разницу между максимальным и минимальным
//
//[23, 3, 19, 21, 16] -> 20 (23 - 3)
//[1, 434, 555, 34, 112] -> 554 (555 - 1)
//
//func differenceMaxMin(_ array: [Int]) -> Int {
//}
//------------------------------------------------------------30-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [23, 3, 19, 21, 16]
//var arrayOne = [1, 434, 555, 34, 112]
//func sumEvenNumbers(array: [Int]) -> Int {
//    guard let first = array.first else {return 0}
//    var counter = (first, first)
//    for item in array {
//        counter = ((item > counter.0 ? item : counter.0), (item < counter.1 ? item : counter.1))
//    }
//    return (counter.0 - counter.1)
//}
//
//
//let result = sumEvenNumbers(array: arrayOne)
//print(result)


//------------------------------------------------------------30-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [1, 434, 555, 34, 112]
//func sumEvenNumbers(array: [Int]) -> Int {
//    guard let first = array.first else {return 0}
//    var counter = (first, first)
//    var index = 0
//    while index < array.count {
//        counter = ((array[index] > counter.0 ? array[index] : counter.0), (array[index] < counter.1 ? array[index] : counter.1))
//        index += 1
//    }
//    return (counter.0 - counter.1)
//}
//
//
//let result = sumEvenNumbers(array: arrayOne)
//print(result)
