//
//  main.swift
//  hof
//
//  Created by Dmitriy Eliseev on 23.10.2024.
//

import Foundation
//------------------------------------------------------------1-----------------------------------------------------------------
//1. Посчитать сумму положительных чисел в массиве
//
//[1,-4,7,12] -> 1 + 7 + 12 = 20
//
//func sumOfPositives(_ array: [Int]) -> Int {
//}
//
//assert(sumOfPositives([1,-4,7,12]]) == 20)

//------------------------------------------------------------1-FOR-------------------------------------------------------------

//let arr = [1,-4,7,12]

//func sumOfPositives(_ array: [Int]) -> Int {
//    var counter = 0
//    for index in array {
//        if index > 0 {
//            counter += index
//        }
//    }
//    return counter
//}
//
//let result = sumOfPositives(arr)
//print(result)

//------------------------------------------------------------1-WHILE-----------------------------------------------------------

//func sumOfPositives(_ array: [Int]) -> Int {
//    var counter = 0
//    var index = 0
//    while index < array.count {
//        if array[index] > 0 {
//            counter += array[index]
//        }
//        index += 1
//    }
//    return counter
//}
//
//let result = sumOfPositives(arr)
//print(result)

//------------------------------------------------------------1-higher order functions (HOF)------------------------------------

//func sumOfPositives(_ array: [Int]) -> Int {
//    var counter = 0
//    arr.map {counter += $0 > 0 ? $0 : 0}
//    return counter
//}


//func sumOfPositives(_ array: [Int]) -> Int {
//    return arr.reduce(into: Int()) { result, item in
//        result += item > 0 ?  item : 0
//    }
//}
//
//let result = sumOfPositives(arr)
//print(result)


//func sumOfPositives(_ array: [Int]) -> Int {
//    return arr.reduce(into: 0) { $0 += $1 > 0 ?  $1 : 0 }
//}
//
//let result = sumOfPositives(arr)
//print(result)


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

//------------------------------------------------------------2-higher order functions (HOF)------------------------------------

//let arrayInt = [1, 2, 3, 4]
//func multiplyOfElements(_ array: [Int]) -> Int {
//    array.reduce(1) {result, item in
//        result * item
//    }
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

//------------------------------------------------------------3-higher order functions (HOF)------------------------------------

//var arrayInt = [1, 2, 3, 4]
//func squareElements(_ array: inout [Int]) {
//    array.enumerated().forEach { (index, item) in
//        array[index] = item * item
//    }
//}
//
//squareElements(&arrayInt)
//print(arrayInt)

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

//------------------------------------------------------------4-higher order functions (HOF)------------------------------------

//var num = 8
////func summation(_ num: Int) -> Int {
////    (0...num).reduce(0) {$0 + $1}
////}
//func summation(_ num: Int) -> Int {
//    (0...num).reduce(0) { result, item in
//        result + item
//    }
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

//------------------------------------------------------------5-higher order functions (HOF)------------------------------------

//var arrayOne = [1, 2, 3]
//func cube(_ array: Array<Int>) -> Array<Int> {
//    array.map { item in
//        Int(pow(Float(item), Float(3)))
//    }
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

//------------------------------------------------------------6-higher order functions (HOF)------------------------------------

//var arrayOne = [1, -2, 3, -4, 5]
//func invert(_ array: [Int]) -> [Int] {
//    array.map{$0 * -1}
//}
//
//let result = invert(arrayOne)
//print(result)

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

//------------------------------------------------------------7-higher order functions (HOF)------------------------------------

//var arrayOne = [34, 15, 88, 2]
//func findSmallest(_ array: [Int]) -> Int {
//    guard let min = array.min() else {return 0}
//    return min
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

//------------------------------------------------------------8-higher order functions (HOF)------------------------------------

//var arrayOne = [101, 5, 77, 505, 404]
//func minMax(_ array: [Int]) -> (Int, Int) {
//    (array.min() ?? 0, array.max() ?? 0)
//}
//
//let result = minMax(arrayOne)
//print(result)

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

//------------------------------------------------------------9-higher order functions (HOF)------------------------------------
//var number = 0
//var count = 4
//func repeatNumber(_ number: Int, count: Int) -> [Int] {
//   Array(repeating: number, count: count) //немного зачитил функцию
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

//------------------------------------------------------------10-higher order functions (HOF)------------------------------------
//var arrayOne = [-1, 2, -3, 4, -5]
//func sumOfAbs(_ array: [Int]) -> Int {
//    array.reduce(0){abs($0) + abs($1)}
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

//------------------------------------------------------------11-higher order functions (HOF)------------------------------------
//let arrayOne = [true,  true,  true,  false,
//                true,  true,  true,  true ,
//                true,  false, true,  false,
//                true,  false, false, true ,
//                true,  true,  true,  true ,
//                false, false, true,  true]
//
//func countTrues(_ array: [Bool]) -> Int {
//    array.filter{$0==true}.count
//}
//
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

//------------------------------------------------------------12-higher order functions (HOF)------------------------------------
//var numberN = 2
//var numberM = 8
//func summation(n: Int, m: Int) -> Int {
//    (n...m).reduce(0){$0 + $1}
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

//------------------------------------------------------------13-higher order functions (HOF)------------------------------------
//var arrayOne = [1, 2, 3, 4, 5]
//func average(_ marks: [Int]) -> Int {
//    marks.reduce(0){$0 + $1} / marks.count
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

//------------------------------------------------------------14-higher order functions (HOF)------------------------------------
//var number = 12
//func convert(num: Int) -> String {
//  let newArr = Array(repeating: "0", count: num)
//  return String(newArr.enumerated().map{$0.offset % 2 != 0 ? "0" : "1"})
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

//------------------------------------------------------------15-higher order functions (HOF)------------------------------------
//var arrayOne = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]
//func countOfPositivesSumOfNegatives(_ array: [Int]) -> (Int, Int) {
//    (array.filter{$0 > 0}.count, array.filter{$0 < 0}.reduce(0){$0 + $1})
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

//------------------------------------------------------------16-higher order functions (HOF)------------------------------------

//var number = 10
//var power = 6
//func numberToPower(_ number: Int, _ power: Int) -> Int {
//    Array(repeating: number, count: power).reduce(1){$0 * $1}
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

//------------------------------------------------------------17-higher order functions (HOF)------------------------------------

//var arrayOne = [0,1,2,3,4,5]
//func noOdds(array: [Int]) -> [Int] {
//    array.map{$0 % 2 == 0 ? $0 : 1}.filter{$0 != 1}
//}
//
//let result = noOdds(array: arrayOne)
//print(result)

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

//------------------------------------------------------------18-higher order functions (HOF)------------------------------------

//var arrayOne =  [[ 1, 2, 3, 4, 5 ], [ 5, 6, 7, 8, 9 ], [ 20, 21, 34, 56, 100 ]]
//func sumOfMinimums(_ array: [[Int]]) -> Int {
//    array.reduce(0){$0 + ($1.min() ?? 0)}
//}
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

//------------------------------------------------------------19-higher order functions (HOF)------------------------------------

//var arrayOne = [6, 5, 4, 3, 2, 1]
//func sumMultiply(_ array: [Int]) -> (Int, Int) {
//    (array.prefix(array.count/2).reduce(0){$0 + $1}, array.dropFirst(array.count/2).reduce(1){$0 * $1})
//}
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
///if root * root == item
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

//------------------------------------------------------------20-higher order functions (HOF)------------------------------------

//var arrayOne = [4.0, 3.0, 9.0, 7.0, 2.0, 1.0]
//func rootOrSquare(_ array: [Double]) -> [Double] {
//    array.map{$0.squareRoot().truncatingRemainder(dividingBy: 1) == 0 ? $0.squareRoot() : pow($0, 2.0)} //это жест=ь без теории под рукой!
//}
//
//let result = rootOrSquare(arrayOne)
//print(result)

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

//------------------------------------------------------------21-higher order functions (HOF)------------------------------------

//var arrayOne = [4,3,9,7,2,1]
//func rootOrSquare(_ array: [Int]) -> [Int] {
//    array.map{Float($0).squareRoot().truncatingRemainder(dividingBy: 1) == 0 ? Int(Float($0).squareRoot()) : Int(pow(Float($0), 2.0))}
//}
//
//let result = rootOrSquare(arrayOne)
//print(result)

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

//------------------------------------------------------------22-higher order functions (HOF)------------------------------------

//var arrayOne = [1, 2, 3, 4, 6, 8, 9]
//var target = 7
//func findIndex(_ array: [Int], target: Int) -> Int {
//    var newArr = array
//    newArr.contains(target) ? () : newArr.append(target)
//    newArr.sort()
//    return newArr.firstIndex(of: target) ?? 0
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

//------------------------------------------------------------23-higher order functions (HOF)------------------------------------

//var arrayOne = [1, 2, 3, 4]
//func multiplyIndex(_ array: [Int]) -> [Int] {
//    array.enumerated().map {$0.element * $0.offset}
//}
//
//let result = multiplyIndex(arrayOne)
//print(result)

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

//------------------------------------------------------------24-higher order functions (HOF)------------------------------------

//var arrayOne = [10, 2, 5, 1]
//func multiplyPower(_ array: [Int]) -> [Int] {
//    //array.enumerated().map{Int(pow( Float($0.element) * Float($0.offset) ))} //не схавал так
//    array.enumerated().map{index, item in
//        Int(pow(Float(item), Float(index + 1)))
//    }
//}
//
//let result = multiplyPower(arrayOne)
//print(result)

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

//------------------------------------------------------------25-higher order functions (HOF)------------------------------------

//var str = "abcd"
//func convertToArray(_ string: String) -> Array<Character> {
//    Array(string)
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

//------------------------------------------------------------26-higher order functions (HOF)------------------------------------

//var str = "abcd"
//func convertToArray(_ string: String) -> [String] {
//    string.enumerated().map {"\($0.offset.description)\($0.element)"}
//}
//
//let result = convertToArray(str)
//print(result)

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

//------------------------------------------------------------27-higher order functions (HOF)------------------------------------

//var str = "place"
//func removeFirstLast(_ string: String) -> String {
////    var result = string
////    result.removeLast()
////    result.removeFirst()
////    return result
//    let result = string.dropFirst().dropLast()
//    return String(result)
//}
//
//let result = removeFirstLast(str)
//print(result)

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

//------------------------------------------------------------28-higher order functions (HOF)------------------------------------

//var str = "place"
//func removeFirstLast(_ string: String) -> String {
//        if string.count % 2 == 0 {
//            return "строка четная"
//        }
//    var str = Array(string)
//    str.remove(at: str.count/2)
//    return String(str)
//}
//
//let result = removeFirstLast(str)
//print(result)

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

//------------------------------------------------------------29-higher order functions (HOF)------------------------------------

//var arrayOne = [4, 3, 1, 2, 5, 10, 6, 7, 9, 8]
//func sumEvenNumbers(array: [Int]) -> Int {
//    array.filter{ $0 % 2 == 0 }.reduce(0,+)
//}
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
//func differenceMaxMin(array: [Int]) -> Int {
//    guard let first = array.first else {return 0}
//    var counter = (first, first)
//    for item in array {
//        counter = ((item > counter.0 ? item : counter.0), (item < counter.1 ? item : counter.1))
//    }
//    return (counter.0 - counter.1)
//}
//
//
//let result = differenceMaxMin(array: arrayOne)
//print(result)


//------------------------------------------------------------30-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [1, 434, 555, 34, 112]
//func differenceMaxMin(array: [Int]) -> Int {
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
//let result = differenceMaxMin(array: arrayOne)
//print(result)

//------------------------------------------------------------30-higher order functions (HOF)------------------------------------

//var arrayOne = [23, 3, 19, 21, 16]
//func differenceMaxMin(array: [Int]) -> Int {
//    (array.max() ?? 0) - (array.min() ?? 0)
//}
//
//let result = differenceMaxMin(array: arrayOne)
//print(result)

//------------------------------------------------------------31-----------------------------------------------------------------
//31. Дана последовательность, найти сколько пропущено между минимальным и максимальным элементом массива
//(contains)
//
//[4,6,8] -> 2 (5, 6)
//[1,2,3,4,6] -> 1 (5)
//[1,2,3] -> 0 ()
//
//func consecutive(_ array: [Int]) -> Int {
//}
//------------------------------------------------------------31-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [4,6,8]
//func consecutive(_ array: [Int]) -> Int {
//    var arrIndex = Int()
//    var counter = Int()
//    for item in array {
//        if (arrIndex + 1) < array.count {
//            counter += (item + 1) != array[arrIndex + 1] ? 1 : 0
//        }
//        arrIndex += 1
//    }
//    return counter
//}
//
//
//let result = consecutive(arrayOne)
//print(result)


//------------------------------------------------------------31-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [1,2,3,4,6]
//func consecutive(_ array: [Int]) -> Int {
//    var arrIndex = Int()
//    var counter = Int()
//    while arrIndex < array.count {
//        if (arrIndex + 1) < array.count {
//            counter += (array[arrIndex] + 1) != array[arrIndex + 1] ? 1 : 0
//        }
//        arrIndex += 1
//    }
//    return counter
//}
//
//
//let result = consecutive(arrayOne)
//print(result)

//------------------------------------------------------------31-higher order functions (HOF)------------------------------------

//var arrayOne = [4,6,8]
//func consecutive(_ array: [Int]) -> Int {
//    let result = ((array.first ?? 0)...(array.last ?? 0)).filter{!array.contains($0)} //немного читил
//
//    return result.count
//}
//
//let result = consecutive(arrayOne)
//print(result)

//------------------------------------------------------------32-----------------------------------------------------------------
//32. Вытащить максимальные элементы из массива в заданном количестве
//
//largest(3, [7,6,5,4,3,2,1]) -> [7,6,5]
//
//func largest(count: Int, array: [Int]) -> [Int] {
//}
//------------------------------------------------------------32-FOR-------------------------------------------------------------

//FOR:
//var arrayOne = [7,6,5,4,3,2,1]
//func largest(count: Int, array: [Int]) -> [Int] {
//    var result: [Int] = []
//    var countArr = count
//    let newArr = array.sorted { $0 > $1 }
//    for item in newArr {
//        if countArr > 0 {
//            result.append(item)
//            countArr -= 1
//        }
//    }
//    return result
//}
//
//
//let result = largest(count: 3, array: arrayOne)
//print(result)


//------------------------------------------------------------32-WHILE-----------------------------------------------------------

//WHILE
//var arrayOne = [7,6,5,4,3,2,1]
//func largest(count: Int, array: [Int]) -> [Int] {
//    var result: [Int] = []
//    var index = Int()
//    let newArr = array.sorted { $0 > $1 }
//    while index < newArr.count {
//        index < count ? result.append(newArr[index]) : () //немного зачител узнав как узнать что бы ничего не делалось
//        index += 1
//    }
//    return result
//}
//
//
//let result = largest(count: 3, array: arrayOne)
//print(result)

//------------------------------------------------------------32-higher order functions (HOF)------------------------------------

//var arrayOne = [7,6,5,4,3,2,1]
//var count = 3
//    func largest(count: Int, array: [Int]) -> [Int] {
//        var newArr: [Int] = []
//        newArr.append(contentsOf: array.sorted{$0 > $1}.prefix(count))
//        return newArr
//}
//
//let result = largest(count: count, array: arrayOne)
//print(result)

//------------------------------------------------------------33-----------------------------------------------------------------
//33. По какоми индексу вставить число в отсортированном массиве
//
//([1, 2, 3, 4, 7], 5) -> 4
//([1, 2, 3, 4, 7], 0) -> 0
//([1, 1, 2, 2, 2], 2) -> 2
//
//func keepOrder(array: [Int], element: Int) -> Int {
//}
//------------------------------------------------------------33-FOR-------------------------------------------------------------

//FOR:
//let arrayOne = [1, 2, 3, 4, 7]
//let element = 5
//
//func keepOrder(array: [Int], element: Int) -> Int {
//    for (index, item) in array.enumerated() {
//        if (index + 1) < array.count {
//            if element > item && element <= array[index + 1] {
//                return index + 1
//            }
//        }
//    }
//    return 0
//}
//
//let result = keepOrder(array: arrayOne, element: element)
//print(result)


//------------------------------------------------------------33-WHILE-----------------------------------------------------------

//WHILE
//let arrayOne = [1, 1, 2, 2, 2]
//let element = 2
//
//func keepOrder(array: [Int], element: Int) -> Int {
//    var index = Int()
//    while index < array.count {
//        if (index + 1) < array.count {
//            if element > array[index] && element <= array[index + 1] {
//                return index + 1
//            }
//        }
//        index += 1
//    }
//    return 0
//}
//
//let result = keepOrder(array: arrayOne, element: element)
//print(result)

//------------------------------------------------------------33-higher order functions (HOF)------------------------------------

//По какоми индексу вставить число в отсортированном массиве
//let arrayOne = [1, 2, 3, 4, 7]
//let element = 5
//func keepOrder(array: [Int], element: Int) -> Int {
////    var newArr = array
////    newArr.append(element)
////    return newArr.sorted().firstIndex(of: element) ?? 0
//    array.firstIndex{$0 >= element} ?? 0 //немного читил
//}
//
//let result = keepOrder(array: arrayOne, element: element)
//print(result)

//------------------------------------------------------------34-----------------------------------------------------------------
//34. Порезать строку
//
//trim("He", 1) -> "H..."
//
//func trim(_ string: String, _ num: Int) -> String {
//}
//------------------------------------------------------------34-FOR-------------------------------------------------------------

//FOR:
//let str = "Не"
//let num = 1
//
//func trim(_ string: String, _ num: Int) -> String {
//    let arrChr: [Character] = Array(string)
//    var result = String()
//    for (index, item) in arrChr.enumerated() {
//        if (index) >= num {
//            result.append("...")
//            return result
//        }
//        result.append(item)
//    }
//    return result
//}
//
//let result = trim(str, num)
//print(result)




//------------------------------------------------------------34-WHILE-----------------------------------------------------------

//WHILE
//let str = "Не"
//let num = 1
//
//func trim(_ string: String, _ num: Int) -> String {
//    let arrChr: [Character] = Array(string)
//    var result = String()
//    var index = Int()
//    while index < arrChr.count {
//        if (index) >= num {
//            result.append("...")
//            return result
//        }
//        result.append(arrChr[index])
//        index += 1
//    }
//    return result
//}
//
//let result = trim(str, num)
//print(result)

//------------------------------------------------------------34-higher order functions (HOF)------------------------------------

//let str = "Нcdcdе"
//let num = 2
//
//func trim(_ string: String, _ num: Int) -> String {
////    var newString = string.prefix(num)
////    newString.append(contentsOf: "...")
////    return String(newString)
//    String(string.prefix(num).appending("..."))
//}
//
//let result = trim(str, num)
//print(result)

//------------------------------------------------------------35-----------------------------------------------------------------
//35. Каждый элемент поделить на порядок в массиве и суммировать
//
//[3,4,6] -> ( 3 / 1 ) + ( 4 / 2 ) + ( 6 / 3 ) = 7
//
//func add(array: [Int]) -> Int {
//}
//------------------------------------------------------------35-FOR-------------------------------------------------------------

//FOR:
//let arrayOne = [3,4,6]
//
//func add(array: [Int]) -> Int {
//    var result = Int()
//    for (index, item) in array.enumerated() {
//        result += item / (index + 1)
//    }
//    return result
//}
//
//
//let result = add(array: arrayOne)
//print(result)

//------------------------------------------------------------35-WHILE-----------------------------------------------------------

//WHILE
//let arrayOne = [1,4,-6,20]
//
//func add(array: [Int]) -> Int {
//    var result = Int()
//    var index = Int()
//    while index < array.count {
//        result += array[index] / (index + 1)
//        index += 1
//    }
//    return result
//}
//
//
//let result = add(array: arrayOne)
//print(result)

//------------------------------------------------------------35-higher order functions (HOF)------------------------------------

//( 3 / 1 ) + ( 4 / 2 ) + ( 6 / 3 ) = 7
//let arrayOne = [3,4,6]
//func add(array: [Int]) -> Int {
//    array.enumerated().map{$0.element / ($0.offset + 1)}.reduce(0,+)
//}
//
//let result = add(array: arrayOne)
//print(result)

//-------------------------------------------------------------------------------------------------------------------------------

//4 способа создания пустого массива

//var array1: [Int] = []
//var array2: Array<Int> = []
//var array3 = [Int]()
//var array4 = Array<Int>()
//
//Напиши все способы создания пустого и заполненного - Array

//var array1: [Int] = []
//var array2: Array<Int> = []
//var array3 = [Int]()
//var array4 = Array<Int>()
//var array5: Array = [] as Array<Int>
//var array6: Array = Array<Int>()
//var array7 = [] as [Int]
//var array8: [Int] = Array()
//var array9 = Array() as [Int]
//var array10 = Array<Int>.init()
//var array11 = Array<Int>([])

//Напиши все способы создания пустого и заполненного - Set

//var setOne: Set<Int> = []
//var setTwo = Set<Int>()
//var setThree: Set = Set<Int>()
//var setFour: Set<Int> = Set()
//var setFive = Set<Int>()
//var setSix = [] as Set<Int>
//var setSeven = Set<Int>([])
//var setEight = Set<Int>.init()

//Напиши все способы создания пустого и заполненного - Dictionary

//var dictOne = [String : Int]()
//var dictTwo = [String() : Int()]
//var dictFour: [String : Int] = [:]
//var dictFive = Dictionary<String, Int>()
//var dictSix = Dictionary<String, Int>.init()
//var dictSeven: [AnyHashable : Int] = [:]


//------------------------------------------------------------36-----------------------------------------------------------------
//36. Найти минимальный элемент в массиве и удалить его из массива
//
//func removeSmallest(_ array: [Int]) -> [Int] {
//}
//
//[1,2,3,4,5] -> [2,3,4,5]
//[5,3,2,1,4] -> [5,3,2,4]
//[2,1,2,1,2,1] -> [2,2,2]
//[0,1,0,1,0] -> [1,1]
//------------------------------------------------------------36-FOR-------------------------------------------------------------

//FOR:
//let arrayOne = [1,2,3,4,5]
//func removeSmallest(_ array: [Int]) -> [Int] {
//    guard let first = array.first else {return []}
//    var smallValue = first
//    for item in array {
//        smallValue = smallValue > item ? item : smallValue
//    }
//    var resultArr = [Int]()
//    for item in array {
//        item == smallValue ? () : resultArr.append(item)
//    }
//    return resultArr
//}
//
//
//let result = removeSmallest(arrayOne)
//print(result)

//------------------------------------------------------------36-WHILE-----------------------------------------------------------

//WHILE
//let arrayOne = [0,1,0,1,0]
//func removeSmallest(_ array: [Int]) -> [Int] {
//    guard let first = array.first else {return []}
//    var smallValue = first
//    var index = Int()
//    while index < array.count {
//        smallValue = smallValue > array[index] ? array[index] : smallValue
//        index += 1
//    }
//    index = 0
//    var resultArr = [Int]()
//    while index < array.count {
//        smallValue == array[index] ? () : resultArr.append(array[index])
//        index += 1
//    }
//    return resultArr
//}
//
//let result = removeSmallest(arrayOne)
//print(result)

//------------------------------------------------------------35-higher order functions (HOF)------------------------------------


//let arrayOne = [0,1,0,1,0]
//func removeSmallest(_ array: [Int]) -> [Int] {
//   array.filter{$0 != array.min()}
//}
//
//let result = removeSmallest(arrayOne)
//print(result)

//------------------------------------------------------------37-----------------------------------------------------------------!!!!!!
//37. Один массив прибавить ко второму массиву - все способы
//
//[1, 2, 3] + [4, 5] -> [1, 2, 3, 4, 5]
//
//func sumArrays(lhs: [Int], rhs: [Int]) -> [Int] {
//}
//------------------------------------------------------------37-FOR-------------------------------------------------------------

//FOR:
//let arrayOne = [1, 2, 3]
//let arrayTwo = [4, 5]
//func sumArrays(lhs: [Int], rhs: [Int]) -> [Int] {
//    var arrOne = lhs
//    var arrTwo = rhs
//    for item in arrTwo {
//        arrOne.append(item)
//    }
//    return arrOne
//}
//
//
//let result = sumArrays(lhs: arrayOne, rhs: arrayTwo)
//print(result)

//------------------------------------------------------------37-WHILE-----------------------------------------------------------

//WHILE
//let arrayOne = [1, 2, 3]
//let arrayTwo = [4, 5]
//func sumArrays(lhs: [Int], rhs: [Int]) -> [Int] {
//    var arrOne = lhs
//    var arrTwo = rhs
//    var index = Int()
//    while index < arrTwo.count {
//        arrOne.append(arrTwo[index])
//        index += 1
//    }
//    return arrOne
//}
//
//
//let result = sumArrays(lhs: arrayOne, rhs: arrayTwo)
//print(result)

//------------------------------------------------------------35-higher order functions (HOF)------------------------------------

//let arrayOne = [1, 2, 3]
//let arrayTwo = [4, 5]
//func sumArrays(lhs: [Int], rhs: [Int]) -> [Int] {
//    lhs + rhs
//    
//    //[lhs, rhs].flatMap{ $0 } // зачитил
//    //rhs.reduce(lhs){$0 + [$1]} // зачитил
//}
//
//let result = sumArrays(lhs: arrayOne, rhs: arrayTwo)
//print(result)

//------------------------------------------------------------способы сложения массивов:-----------------------------------------------------------
//1
//let arrayOne = [1, 2, 3]
//let arrayTwo = [4, 5]
//let arrayThree = arrayOne + arrayTwo
//print(arrayThree)
//2
//var arrayOne = [1, 2, 3]
//let arrayTwo = [4, 5]
//arrayOne.append(contentsOf: arrayTwo)
//print(arrayOne)
//3
//var arrayOne = [1, 2, 3]
//let arrayTwo = [4, 5]
//arrayOne.append(contentsOf: arrayTwo)
//print(arrayOne)

//------------------------------------------------------------38-----------------------------------------------------------------!!!!!!
//38. Вернуть первый непоследовательный элемент и его индекс
//
//[1, 2, 3, 4, 5, 7, 8, 9] -> (7, 5)
//
//func firstNonConsequitive(array: [Int]) -> (Int, Int) {
//}
//------------------------------------------------------------38-FOR-------------------------------------------------------------

//FOR:
//let arrayOne = [1, 2, 3, 4, 5, 7, 8, 9]
//func firstNonConsequitive(array: [Int]) -> (Int, Int) {
//
//    guard let first = array.first else {return (0, 0)}
//    var result = (first, Int())
//
//    for (index, item) in array.enumerated() {
//        if (index + 1) < array.count {
//            result = ((item + 1) != array[index + 1] ? array[index + 1] : result.0, (item + 1) != array[index + 1] ? (index + 1) : result.1)
//        }
//    }
//    return result
//}
//
//let result = firstNonConsequitive(array: arrayOne)
//print(result)
//------------------------------------------------------------38-WHILE-----------------------------------------------------------

//WHILE
//let arrayOne = [1, 2, 3, 4, 5, 7, 8, 9]
//func firstNonConsequitive(array: [Int]) -> (Int, Int) {
//    guard let first = array.first else {return (0, 0)}
//    var result = (first, Int())
//    var index = 0
//    while index < array.count {
//        if (index + 1) < array.count {
//            result = ((array[index] + 1) != array[index + 1] ? array[index + 1] : result.0, (array[index] + 1) != array[index + 1] ? (index + 1) : result.1)
//        }
//        index += 1
//    }
//    return result
//}
//
//let result = firstNonConsequitive(array: arrayOne)
//print(result)

//------------------------------------------------------------38-higher order functions (HOF)------------------------------------

//ОСТАВЛЯЕМ-------------------------!!!!!!!!!!!!!!!

//38. Вернуть первый непоследовательный элемент и его индекс

//let arrayOne = [1, 2, 3, 4, 5, 7, 8, 9]
//func firstNonConsequitive(array: [Int]) -> (Int, Int) {
//    
//}
//   
//
//
//
//let result = firstNonConsequitive(array: arrayOne)
//print(result)

//------------------------------------------------------------39-----------------------------------------------------------------!!!!!!
//39. Проверить что массив монотонно убывающий
//
//[10, 9, 8, 7, 6, 6, 5] -> true
//[10, 9, 8, 8, 7, 9] -> false
//[10,10,10] -> true
//
//func isIncreasing(array: [Int]) -> Bool {
//}
//------------------------------------------------------------39-FOR-------------------------------------------------------------

//FOR:
//let arrayOne = [10,10,10]
//func isIncreasing(array: [Int]) -> Bool {
//    for (index, item) in array.enumerated() {
//        if (index + 1) < array.count {
//            if item >= array[index + 1] { continue } else {
//                return false
//            }
//        }
//    }
//    return true
//}
//
//let result = isIncreasing(array: arrayOne)
//print(result)
//------------------------------------------------------------39-WHILE-----------------------------------------------------------

//WHILE
//let arrayOne = [10, 9, 8, 7, 6, 6, 5]
//func isIncreasing(array: [Int]) -> Bool {
//    var index = Int()
//    while index < array.count {
//        if (index + 1) < array.count {
//            let item = array[index] >= array[index + 1] ? true : false
//            if !item {
//                return false
//            }
//        }
//        index += 1
//    }
//    return true
//}
//
//let result = isIncreasing(array: arrayOne)
//print(result)

//------------------------------------------------------------ЗАПОМНИТЬ-----------------------------------------------------------
//Как хранить оператор сравнения больше/меньше  в переменной
//var comparator: (Double, Double) -> Bool = (<)
//let result = comparator(1.0, 2.0)
//print(result)
//------------------------------------------------------------ЗАПОМНИТЬ-----------------------------------------------------------

//-----------------------------------------------------------39-higher order functions (HOF)------------------------------------
//Проверить что массив монотонно убывающий

//let arrayOne = [10, 9, 8, 8, 7, 9]
//func isIncreasing(array: [Int]) -> Bool {
//    zip(array, array.dropFirst()).allSatisfy{$0 >= $1} //немного читил
//}
//
//let result = isIncreasing(array: arrayOne)
//print(result)

//------------------------------------------------------------40-----------------------------------------------------------------!!!!!!
//40. Написать функцию которая принимает массив чисел и проверяет монотонный он или нет
//
//
//[1,3,6,8] → true
//[6, 3, 2, 1] → true
//[5,5] → true
//[1, 2, 2, 5, 5, 7] → true
//[1, 2, 3, 3, 3, 1] → false
//[5, 4, 3, 2, 1, 2, 3] → false
//
//func isMonotone(_ array: [Int]) -> Bool { //ошибка
//}
//------------------------------------------------------------40-FOR-------------------------------------------------------------Несделан

//FOR:
//let arrayOne = [5, 4, 3, 2, 1, 2, 3]
//func isMonotone(_ array: [Int]) -> Bool {
//    var upChecker: (Int, Int) -> Bool = (<=)  //СПРОСИТЬ
//    if array.count == 0 || array.count == 1 {
//        return true
//    }
//    for (index, item) in array.enumerated() {
//        if (index + 1) < array.count {
//            if item < array[array.index(after: array.startIndex)] {
//                upChecker = (<=)
//                break
//            } else if item > array[array.index(after: array.startIndex)] {
//                upChecker = (>=)
//                break
//            } else if item == array[array.index(after: array.startIndex)] {
//                if index == array.count - 1 {
//                    return true
//                } else {
//                    continue
//                }
//            }
//        }
//    }
//    for (index, item) in array.enumerated() {
//        if (index + 1) < array.count {
//            let result = upChecker(item, array[index + 1])
//            if !result {
//                return false
//            }
//        }
//    }
//    return true
//}
//
//let result = isMonotone(arrayOne)
//print(result)
//------------------------------------------------------------40-WHILE-----------------------------------------------------------

//WHILE
//let arrayOne = [1,3,6,8]
//func isMonotone(_ array: [Int]) -> Bool {
//    var upChecker: (Int, Int) -> Bool = (<=)  //СПРОСИТЬ
//    if array.count == 0 || array.count == 1 {
//        return true
//    }
//    var index = 0
//    while index < array.count {
//        if (index + 1) < array.count {
//            if array[index] < array[index + 1] {
//                upChecker = (<=)
//                break
//            } else if array[index] > array[index + 1]  {
//                upChecker = (>=)
//                break
//            } else if array[index] == array[index + 1]  {
//                if index == array.count - 1 {
//                    return true
//                } else {
//                    continue
//                }
//            }
//        }
//        index += 1
//    }
//    index = 0
//    while index < array.count {
//        if (index + 1) < array.count {
//            let result = upChecker(array[index], array[index + 1])
//            if !result {
//                return false
//            }
//        }
//        index += 1
//    }
//    return true
//}
//
//let result = isMonotone(arrayOne)
//print(result)

//-----------------------------------------------------------40-higher order functions (HOF)------------------------------------
//Проверить что массив монотонно убывающий

//let arrayOne = [5,5] //[1, 2, 3, 3, 3, 1] //[6, 3, 2, 1] //[1,3,6,8]
//func isMonotone(_ array: [Int]) -> Bool {
//    if array.count <= 1 {
//        return true
//    }
//    return zip(array, array.dropFirst()).allSatisfy { $0 <= $1 } || zip(array, array.dropFirst()).allSatisfy { $0 >= $1 }
//}
//
//let result = isMonotone(arrayOne)
//print(result)


//------------------------------------------------------------41-----------------------------------------------------------------
//41. Маскировать кредитную карту
//
//"12345678" -> "****4678" //опечатка в задании
//"1234" -> "1234"
//"123456" -> "**3456"
//
//func masked(string: String) -> String {
//}
//------------------------------------------------------------41-FOR-------------------------------------------------------------
//FOR:
//let str = "12345678"
//func masked(string: String) -> String {
//    var newString = String()
//    var index = 0
//    for (index, item) in string.reversed().enumerated() {
//        if index < 4 {
//            newString.append(item)
//        } else {
//            newString.append("*")
//        }
//    }
//    return String(newString.reversed())
//}
//
//let result = masked(string: str)
//print(result)
//------------------------------------------------------------41-WHILE-----------------------------------------------------------

//WHILE
//let str = "12345678"
//func masked(string: String) -> String {
//    var newString = String()
//    var index = string.index(before: string.endIndex)
//
//    while index >= string.startIndex {
//        if string.distance(from: index, to: string.endIndex) < 5 {
//            newString.insert(string[index], at: newString.startIndex)
//        } else {
//            newString.insert("*", at: newString.startIndex)
//        }
//        if index != string.startIndex {
//            index = string.index(before: index)
//        } else {
//            break
//        }
//    }
//    return newString
//}
//
//let result = masked(string: str)
//print(result)

//-----------------------------------------------------------41-higher order functions (HOF)------------------------------------

//let str = "11112345678"
//func masked(string: String) -> String {
//    return String([Array(string.reversed().prefix(4)), Array(repeating: "*", count: Array(string).count - 4)].flatMap{$0}.reversed())
//}
//let result = masked(string: str)
//print(result)


//------------------------------------------------------------42-----------------------------------------------------------------
//42. Сконвертироват значение типа Any в тип данных Int
//
//func someToInt(_ value: Any) → Int {
//
//        if let value = value as? Int {
//                return value
//        }
//        return 0
//}
//------------------------------------------------------------42-FOR-------------------------------------------------------------
//FOR:
//let arrayOne: [Any] = [1, "4", "Hello", Character("x"), 2.5]
//
//func conver(array: [Any]) -> [Int] {
//    var newArr = [Int]()
//    for item in array {
//        newArr.append(someToInt(item))
//    }
//    return newArr
//}
//
//func someToInt(_ value: Any) -> Int {
//    if let value = value as? Int {
//        return value
//    }
//    return 0
//}
//
//let result = conver(array: arrayOne)
//print(result)
//------------------------------------------------------------42-WHILE-----------------------------------------------------------

//WHILE
//let arrayOne: [Any] = [1, "4", "Hello", Character("x"), 2.5]
//
//func conver(array: [Any]) -> [Int] {
//    var newArr = [Int]()
//    var index = Int()
//    while index < array.count {
//        newArr.append(someToInt(array[index]))
//        index += 1
//    }
//    return newArr
//}
//
//func someToInt(_ value: Any) -> Int {
//    if let value = value as? Int {
//        return value
//    }
//    return 0
//}
//
//let result = conver(array: arrayOne)
//print(result)

//-----------------------------------------------------------42-higher order functions (HOF)------------------------------------

//let arrayOne: [Any] = [1, "4", "Hello", Character("x"), 2.5]
//func conver(array: [Any]) -> [Int] {
//    array.compactMap{$0 as? Int}
//}
//let result = conver(array: arrayOne)
//print(result)

//------------------------------------------------------------43-----------------------------------------------------------------
//43. Написать фукнцию суммирования всех элементов массива неопределенных элементов (использовать интерполяцию или type casting)
//
//["1", 2, 3.5, Character(4)] -> 10.5 //ошибка Character("4")
//
//
//func sumOfValues(array: [Any]) -> Double {
//}
//------------------------------------------------------------43-FOR-------------------------------------------------------------
//FOR:
//let arrayOne: [Any] = ["1", 2, 3.5, Character("4")]
//func conver(array: [Any]) -> Double {
//    var result = Double()
//    for item in array {
//        
//        result += Double("\(item)") ?? 0
////        if let element = someToDouble(item) {
////            result += element
////        }
//    }
//    return result
//}
//
//func someToDouble(_ value: Any) -> Double? {
//    var result: Double?
//    if let newValue = value as? String {
//       result = Double(newValue)
//    } else if let newValue = value as? Int {
//        result = Double(newValue)
//    } else if let newValue = value as? Double{
//        result = newValue
//    } else if let newValue = value as? Character {
//        result = Double(String(newValue))
//    }
//    if result != nil {
//        return result
//    }
//    return nil
//}
//
//let result = conver(array: arrayOne)
//print(result)
//------------------------------------------------------------43-WHILE-----------------------------------------------------------

//WHILE
//let arrayOne: [Any] = ["1", 2, 3.5, Character("4")]
//func conver(array: [Any]) -> Double {
//    var result = Double()
//    var index = Int()
//    while index < array.count {
//        if let element = someToDouble(array[index]) {
//            result += element
//        }
//        index += 1
//    }
//    return result
//}
//
//func someToDouble(_ value: Any) -> Double? {
//    var result: Double?
//    if let newValue = value as? String {
//       result = Double(newValue)
//    } else if let newValue = value as? Int {
//        result = Double(newValue)
//    } else if let newValue = value as? Double{
//        result = newValue
//    } else if let newValue = value as? Character {
//        result = Double(String(newValue))
//    }
//    if result != nil {
//        return result
//    }
//    return nil
//}
//
//let result = conver(array: arrayOne)
//print(result)

//-----------------------------------------------------------43-higher order functions (HOF)------------------------------------

//let arrayOne: [Any] = ["1", 2, 3.5, Character("4")]
//func conver(array: [Any]) -> Double {
//  let result = array.compactMap{ value in
//        if let newValue = value as? String, let returnValue = Double(newValue) {
//               return returnValue
//            } else if let newValue = value as? Int {
//                return Double(newValue)
//            } else if let newValue = value as? Double{
//                return newValue
//            } else if let newValue = value as? Character, let returnValue = Double(String(newValue)){
//                return returnValue
//            }
//      return nil
//    }
//    return result.reduce(0){$0 + $1}
//}
//
//let result = conver(array: arrayOne)
//print(result)

//------------------------------------------------------------44-----------------------------------------------------------------
//44. Перемешайте массив со сдвигом N
//
//[1,1,1,2,2,2], N = 3 -> [1,2,1,2,1,2]
//
//func shuffleArray(array: [Int], offset: Int) -> [Int] {
//}
//------------------------------------------------------------44-FOR-------------------------------------------------------------
//FOR:
//let arrayOne = [1,1,1,2,2,2]
//let offset = 3
//func shuffleArray(array: [Int], offset: Int) -> [Int]{
//    var newArray = [Int]()
//    var indexes = Set<Int>()
//    for (index, item) in array.enumerated() {
//        if !indexes.contains(index) {
//            indexes.insert(index)
//            newArray.append(item)
//            if (index + offset) < array.count {
//                if !indexes.contains(index + offset) {
//                    indexes.insert(index + offset)
//                    newArray.append(array[index + offset])
//                }
//            }
//        }
//    }
//    return newArray
//}
//
//let result = shuffleArray(array: arrayOne, offset: offset)
//print(result)
//------------------------------------------------------------44-WHILE-----------------------------------------------------------

//WHILE
//let arrayOne = [1,1,1,2,2,2]
//let offset = 3
//func shuffleArray(array: [Int], offset: Int) -> [Int]{
//    var newArray = [Int]()
//    var indexes = Set<Int>()
//    var index = Int()
//    while index < array.count {
//        if !indexes.contains(index) {
//            indexes.insert(index)
//            newArray.append(array[index])
//            if (index + offset) < array.count {
//                if !indexes.contains(index + offset) {
//                    indexes.insert(index + offset)
//                    newArray.append(array[index + offset])
//                }
//            }
//        }
//        index += 1
//    }
//    return newArray
//}
//
//let result = shuffleArray(array: arrayOne, offset: offset)
//print(result)

//-----------------------------------------------------------44-higher order functions (HOF)------------------------------------

//ОСТАВЛЯЕМ-------------------------!!!!!!!!!!!!!!!

//------------------------------------------------------------45-----------------------------------------------------------------
//45. Найти все непоследовательные элементы в массиве
//
//[1, 2, 3, 4, 5, 7, 8, 9, 11] -> [7,11]
//
//func findFirstNonConsecutive(array: [Int]) -> [Int] {
//}
//------------------------------------------------------------45-FOR-------------------------------------------------------------
//FOR:
//let arrayOne = [1, 2, 3, 4, 5, 7, 8, 9, 11]
//func findFirstNonConsecutive(array: [Int]) -> [Int] {
//    var result = [Int]()
//    for (index, item) in array.enumerated() {
//        if (index + 1) < array.count {
//            if (item + 1) != array[index + 1] {
//                result.append(array[index + 1])
//            }
//        }
//    }
//    return result
//}
//
//let result = findFirstNonConsecutive(array: arrayOne)
//print(result)
//------------------------------------------------------------45-WHILE-----------------------------------------------------------

//WHILE
//let arrayOne = [1, 2, 3, 4, 5, 7, 8, 9, 11]
//func findFirstNonConsecutive(array: [Int]) -> [Int] {
//    var index = Int()
//    var result = [Int]()
//    while index < array.count {
//        if (index + 1) < array.count {
//            (array[index] + 1) != array[index + 1] ? result.append(array[index + 1]) : ()
//        }
//        index += 1
//    }
//    return result
//}
//
//let result = findFirstNonConsecutive(array: arrayOne)
//print(result)

//-----------------------------------------------------------45-higher order functions (HOF)------------------------------------

//ОСТАВЛЯЕМ-------------------------!!!!!!!!!!!!!!!

//------------------------------------------------------------46-----------------------------------------------------------------
//46. Дан массив цен, нужно найти самый дорогой продукт на котрый хватит хватил кеш
//
//13, [3, 10, 300, 15, 3] -> 10
//
//func mostExpensive(cash: Int, products: [Int]) -> Int {
//}
//------------------------------------------------------------46-FOR-------------------------------------------------------------
//FOR:
//let arrayOne =  [3, 10, 300, 15, 3]
//let cash = 13
//func mostExpensive(cash: Int, products: [Int]) -> Int {
//    var maxCash = Int()
//    for item in products {
//        if item <= cash {
//            maxCash = maxCash < item ? item : maxCash
//        }
//    }
//    return maxCash
//}
//
//let result = mostExpensive(cash: cash, products: arrayOne)
//print(result)
//------------------------------------------------------------46-WHILE-----------------------------------------------------------

//WHILE
//let arrayOne =  [3, 10, 300, 15, 3]
//let cash = 13
//func mostExpensive(cash: Int, products: [Int]) -> Int {
//    var maxCash = Int()
//    var index = Int()
//    while index < products.count {
//        if products[index] <= cash {
//            maxCash = maxCash < products[index] ? products[index] : maxCash
//        }
//        index += 1
//    }
//    return maxCash
//}
//
//let result = mostExpensive(cash: cash, products: arrayOne)
//print(result)

//-----------------------------------------------------------46-higher order functions (HOF)------------------------------------

//let arrayOne =  [3, 10, 300, 15, 3]
//let cash = 13
//func mostExpensive(cash: Int, products: [Int]) -> Int {
//    products.filter{$0 < cash}.max() ?? 0
//}
//
//let result = mostExpensive(cash: cash, products: arrayOne)
//print(result)

//------------------------------------------------------------47-----------------------------------------------------------------
//47. Дан массив нужно сгруппировать в массив другого вида
//
//[1, 2, 2, 3, 3, 3] -> [[1], [2,2], [3, 3, 3]]
//
//func groupElements(array: [Int]) -> [[Int]] {
//}
//------------------------------------------------------------47-FOR-------------------------------------------------------------
//FOR:
//let arrayOne = [1, 2, 2, 3, 3, 3]
//func groupElements(array: [Int]) -> [[Int]] {
//    var result: [[Int]] = []
//    var iterator: [Int] = []
//    guard let first = array.first else {return [[]]}
//    var counter = first
//    for item in array {
//        if counter == item {
//            iterator.append(item)
//        } else {
//            result.append(iterator)
//            iterator.removeAll()
//            counter = item
//            iterator.append(item)
//        }
//    }
//    result.append(iterator)
//    return result
//}
//
//let result = groupElements(array: arrayOne)
//print(result)
//------------------------------------------------------------47-WHILE-----------------------------------------------------------

//WHILE
//func groupElements(array: [Int]) -> [[Int]] {
//    var result: [[Int]] = []
//    var iterator: [Int] = []
//    var index = Int()
//    guard let first = array.first else {return [[]]}
//    var counter = first
//    while index < array.count {
//        if counter == array[index] {
//            iterator.append(array[index])
//        } else {
//            result.append(iterator)
//            iterator.removeAll()
//            counter = array[index]
//            iterator.append(array[index])
//        }
//        if index + 1 < array.count {
//            index += 1
//        } else {
//            result.append(iterator)
//            break
//        }
//    }
//    return result
//}
//
//let result = groupElements(array: arrayOne)
//print(result)

//-----------------------------------------------------------47-higher order functions (HOF)------------------------------------

//ОСТАВЛЯЕМ-------------------------!!!!!!!!!!!!!!!
//let arrayOne = [1, 2, 2, 3, 3, 3]
//func groupElements(array: [Int]) -> [[Int]] {
//    
//}
//
//let result = arrayOne(arrayOne)
//print(result)

//------------------------------------------------------------48-----------------------------------------------------------------
//48. Проверить что массив является горой
//
//[1, 2, 3, 2, 1] -> true
//[1, 2, 3, 4, 5] -> false
//
//func isValidMountain(array: [Int]) -> Bool {
//}
//------------------------------------------------------------48-FOR-------------------------------------------------------------
//FOR:
//let arrayOne = [1, 2, 3, 2, 1]
//func isValidMountain(array: [Int]) -> Bool {
//    if array.count % 2 == 0 {
//        return false
//    }
//    let arrCenter = (array.count - 1)/2
//    for (index, item) in array.enumerated() {
//        if index < arrCenter {
//            if item == array[array.endIndex - index - 1] {
//                continue
//            } else {
//                return false
//            }
//        }
//        if index == arrCenter {
//            if item >= array[index - 1] {
//                return true
//            } else {
//                return false
//            }
//        }
//    }
//    return false
//}
//
//let result = isValidMountain(array: arrayOne)
//print(result)
//------------------------------------------------------------48-WHILE-----------------------------------------------------------

//WHILE
//let arrayOne = [1, 2, 3, 4, 5]
//func isValidMountain(array: [Int]) -> Bool {
//    if array.count % 2 == 0 {
//        return false
//    }
//    let arrCenter = (array.count - 1)/2
//    var index = Int()
//    while index <= arrCenter {
//        if index < arrCenter {
//            if array[index] == array[array.endIndex - index - 1] {
//                index += 1
//                continue
//            } else {
//                return false
//            }
//        }
//        if index == arrCenter {
//            if array[index] >= array[index - 1] {
//                return true
//            } else {
//                return false
//            }
//        }
//        index += 1
//    }
//    return false
//}
//
//let result = isValidMountain(array: arrayOne)
//print(result)

//-----------------------------------------------------------48-higher order functions (HOF)------------------------------------

//let arrayOne = [1, 2, 3, 2, 1]
//func isValidMountain(array: [Int]) -> Bool {
//    var newArr:[Int] = array
//    newArr.remove(at: (newArr.count - 1)/2)
////    let one = newArr.prefix(newArr.count/2)
////    print(one)
////    let two = Array(newArr.reversed().prefix(newArr.count/2))
////    print(two)
////    let three = Array(newArr.prefix(newArr.count/2)).last ?? 0
////    print(three)
////    let four = array.firstIndex(of: (array.count - 1)/2) ?? 0
////    print(four)
////    return one.elementsEqual(two) && three > four ? true : false
//    return (newArr.prefix(newArr.count/2)).elementsEqual(Array(newArr.reversed().prefix(newArr.count/2))) && Array(newArr.prefix(newArr.count/2)).last ?? 0 > array.firstIndex(of: (array.count - 1)/2) ?? 0 ? true : false
////это никогда не прочитать
//}
//
//let result = isValidMountain(array: arrayOne)
//print(result)

//------------------------------------------------------------49-----------------------------------------------------------------
//49. Дано число N нужно вывести массив с O до N и от N до 0
//
//4 -> [0, 1, 2, 3, 4, 3, 2, 1]
//
//func thereAndBack(_ num: Int) -> [Int] {
//}
//------------------------------------------------------------49-FOR-------------------------------------------------------------
//FOR:
//let num = 5
//func thereAndBack(_ num: Int) -> [Int] {
//    var result: [Int] = []
//    var counter = Int()
//    for item in (0...(2 * num)) {
//        counter <= num ? result.append(counter) : result.append(num - (counter - num))
////        if counter <= num {
////            result.append(counter)
////        }
////        if counter > num {
////            result.append(num - (counter - num))
////        }
//        counter += 1
//    }
//    return result
//}
//
//let result = thereAndBack(num)
//print(result)
//------------------------------------------------------------49-WHILE-----------------------------------------------------------

//WHILE
//let num = 4
//func thereAndBack(_ num: Int) -> [Int] {
//    var result: [Int] = []
//    var counter = Int()
//    while counter < (0...(2 * num)).count {
//        counter <= num ? result.append(counter) : result.append(num - (counter - num))
//        counter += 1
//    }
//    return result
//}
//
//let result = thereAndBack(num)
//print(result)

//------------------------------------------------------------50-----------------------------------------------------------------
//50. Дан массив четной длины, нужно перемножить первую половину массива, просуммировать вторую половину массива
//
//[1, 2, 3, 4, 5, 6] -> (1 * 2 * 3, 4 + 5 + 6) -> (6, 15)
//
//func multiplyAndSum(_ array: [Int]) -> (Int, Int) {
//}
//------------------------------------------------------------50-FOR-------------------------------------------------------------
//FOR:
//let arrayOne = [1, 2, 3, 4, 5, 6]
//func multiplyAndSum(_ array: [Int]) -> (Int, Int) {
//    guard let first = array.first else {return (0, 0)}
//    var result = (first, Int())
//    for (index, item) in array.enumerated() {
//        result = (index < array.count/2 ? result.0 * item : result.0, index >= array.count/2 ? result.1 + item : result.1)
//    }
//    return result
//}
//
//let result = multiplyAndSum(arrayOne)
//print(result)
//------------------------------------------------------------50-WHILE-----------------------------------------------------------

//WHILE
//let arrayOne = [1, 2, 3, 4, 5, 6]
//func multiplyAndSum(_ array: [Int]) -> (Int, Int) {
//    guard let first = array.first else {return (0, 0)}
//    var result = (first, Int())
//    var index = Int()
//    while index < array.count {
//        result = (index < array.count/2 ? result.0 * array[index] : result.0, index >= array.count/2 ? result.1 + array[index] : result.1)
//        index += 1
//    }
//    return result
//}
//
//let result = multiplyAndSum(arrayOne)
//print(result)
