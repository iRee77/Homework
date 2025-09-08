//Легкие задачи
//1. Напишите замыкание, которое выводит на экран приветствие "Привет, мир!".
let helloWord = { print("Привет, мир!") }
helloWord()

//2. Напишите замыкание, которое принимает два числа и возвращает их сумму.
let summ = { (a: Int, b: Int) -> Int in return a + b }
summ(2, 3)

//3. Напишите замыкание, которое принимает строку и возвращает ее длину.
let stringLength = { (line: String) -> Int in return line.count }
stringLength("123")

//4. Напишите замыкание, которое принимает массив чисел и возвращает сумму всех элементов массива.
let allSum = { (numbers: Array) -> Int in return numbers.reduce(0, +)}
allSum([1, 2, 3, 4, 5])

//5. Напишите замыкание, которое проверяет, является ли число четным, и возвращает true или false.
let isEven = { (number: Int) -> Bool in return number % 2 == 0 ? true : false }
isEven(2)

//6. Напишите замыкание, которое принимает два числа и возвращает большее из них.
let greaterNumber = { (a: Int, b: Int) -> Int in return a > b ? a : b}
greaterNumber(50, 50)

//7. Напишите замыкание, которое принимает строку и преобразует ее в верхний регистр.
let upperString = { (line: String) -> String in return line.uppercased()}
upperString("приветики")

//8. Напишите замыкание, которое принимает массив строк и выводит каждую строку на новой строке.
let eachPrintString = { (strings: [String]) in
    for string in strings {
        print(string)
    }
}
eachPrintString(["asd", "asd3"])

let eachPrintString2 = { (strings: [String]) in
    strings.forEach { print($0) }
}
eachPrintString2(["asd", "asd3"])

//9. Напишите замыкание, которое принимает массив чисел и возвращает новый массив с квадратами всех элементов.
let squarNumbers = { (numbers: [Int]) -> [Int] in
    numbers.map { $0 * $0 }
}
squarNumbers([1,2,3])

//10. Напишите замыкание, которое принимает два числа и возвращает их разность.
let diffNumber = { (a: Int, b: Int) -> Int in return a - b }
diffNumber(50,100)

//11. Напишите замыкание, которое принимает опциональную строку и возвращает ее длину, если она не nil.
let stringOptionalLength = { (line: String?) -> Int? in
    if let line = line { return line.count} else { return nil }
}
stringOptionalLength(nil)

//12. Напишите замыкание, которое принимает два числа и возвращает их произведение.
let productNumber = { (a: Int,b: Int) -> Int in return a * b }
productNumber(2,10)

//13. Напишите замыкание, которое принимает массив строк и возвращает новый массив с длиной каждой строки.
let lenghthEachString = { (strings: [String]) -> [Int] in
    return strings.map { $0.count }
}
lenghthEachString(["", "1", "22", "333", "4444", ""])

var test = -01
var test2 = "-1"
String(test)
Int(test2)

//14. Напишите замыкание, которое принимает число и возвращает его в обратном порядке.
let reversedNumber = { (number: Int) -> Int in
    var result = ""
    for numb in String(abs(number)) {
        result = String(numb) + result
    }
    return Int(result) ?? 0
}
reversedNumber(-123)

//15. Напишите замыкание, которое принимает массив чисел и возвращает новый массив с только положительными числами.
let positiveNumbers = { (numbers:[Int]) -> [Int] in
    return numbers.filter { $0 >= 0 }
}
positiveNumbers([1,2,3,-5,0])

//16. Напишите замыкание, которое принимает два числа и возвращает true, если они равны, и false в противном случае.
let equalNumbers = { (a: Int, b: Int) -> Bool in
    return a == b }
equalNumbers(5,5)

//17. Напишите замыкание, которое принимает строку и возвращает true, если она является палиндромом, и false в противном случае.
let isPalindrome = { (string: String) -> Bool in
    let prepareString = Array(string.lowercased().filter { $0.isLetter || $0.isLetter} )
    guard !string.isEmpty else { return false }
    for i in (0..<prepareString.count / 2) {
        if prepareString[i] != prepareString[prepareString.count - i - 1] {
            return false
        }
    }
    return true
}
isPalindrome("а роза упала на лапу Азора!")

//18. Напишите замыкание, которое принимает массив чисел и возвращает среднее значение.
let avgValue = { (numbers: [Int]) -> Double in
    return Double(numbers.reduce(0, +)) / Double(numbers.count)
}
avgValue([1, 2])

//19. Напишите замыкание, которое принимает массив чисел и возвращает массив только с четными числами.
let evenNumbers = { (numbers: [Int]) in
    numbers.filter { $0 % 2 == 0}
}
evenNumbers([1,2,3,4,5,6,7,8,0,-1,-2])

//20. Напишите замыкание, которое принимает строку и возвращает ее без пробелов.
let stringWithoutSpace = { (string: String) in
    string.filter { !$0.isWhitespace }
}
stringWithoutSpace("asd asd asd asd")

//Сложные задачи
//1. Функция вычисления степени числа через замыкание
//  Напишите функцию `power(of: Int, usingClosure: (Int) -> Int) -> Int`, которая принимает число `of` и замыкание `usingClosure`, принимающее и возвращающее целое число. Функция должна использовать переданное замыкание для вычисления степени числа `of`. Например, если `of` равно 2, а замыкание умножает число на себя, то функция должна вернуть 4.
func power(of: Int, usingClosure: (Int) -> Int) -> Int {
    return usingClosure(of)
}
power(of: 5) { number in number * number }

//2. Сортировка массива с использованием замыкания
//  Напишите функцию `sortArray(_ array: [Int], usingClosure: (Int, Int) -> Bool) -> [Int]`, которая принимает массив целых чисел и замыкание, которое определяет порядок сортировки. Функция должна вернуть отсортированный массив с использованием переданного замыкания. Например, если замыкание сравнивает числа в порядке убывания, то функция должна вернуть массив отсортированный по убыванию.
let usingClosure2 = { (a: Int, b: Int) -> Bool in a > b}
usingClosure2(2,3)
func sortArray(_ array: [Int], usingClosure: (Int, Int) -> Bool) -> [Int] {
    var result = array
    for i in 0..<result.count {
        for j in i+1..<result.count {
            if usingClosure(result[i], result[j]) == false {
                let temp = result[i]
                result[i] = result[j]
                result[j] = temp
            }
        }
    }
    return result
}
sortArray([5,3,2,1]) { $0 < $1 }

//3. Поиск наибольшего элемента в массиве с помощью замыкания
//  Напишите функцию `findMax(in array: [Int], usingClosure: (Int, Int) -> Bool) -> Int?`, которая принимает массив целых чисел и замыкание, которое определяет критерий для поиска максимального элемента. Функция должна вернуть наибольший элемент массива с использованием переданного замыкания. Например, если замыкание сравнивает числа по модулю, то функция должна вернуть максимальный по модулю элемент.
func findMax(in array: [Int], usingClosure: (Int, Int) -> Bool) -> Int? {
    guard var result = array.first else { return nil}
    for i in 1..<array.count {
        if usingClosure(result, array[i]) == true {
                print("max: \(result), array[i]: \(array[i])")
                result = array[i]
                print("new max: \(result)")
        }
    }
    return result
}

// 1 < 2 == true
findMax(in: [1,2,-3,4,-5]) { a, b in
    a < b
}
findMax(in: [5,3,2,1]) { abs($0) < abs($1) }

//4. Фильтрация массива с помощью замыкания
//  Напишите функцию `filterArray(_ array: [Int], usingClosure: (Int) -> Bool) -> [Int]`, которая принимает массив целых чисел и замыкание, которое определяет условие для фильтрации элементов. Функция должна вернуть новый массив, содержащий только те элементы, для которых переданное замыкание возвращает true.
func filterArray(_ array: [Int], usingClosure: (Int) -> Bool) -> [Int] {
    var result = [Int]()
    for number in array {
        if usingClosure(number) {
            result.append(number)
        }
    }
    return result
}
filterArray([1,2,-3,4,-5,0]) { $0 % 2 == 0}

//5. Генерация последовательности чисел через замыкание
//  Напишите функцию `generateSequence(startingFrom: Int, length: Int, usingClosure: (Int) -> Int) -> [Int]`, которая принимает начальное значение `startingFrom`, длину последовательности `length` и замыкание `usingClosure`, которое определяет правило генерации следующего числа на основе предыдущего. Функция должна вернуть массив чисел, сгенерированных с использованием переданного замыкания. Например, если начальное значение равно 1, длина равна 5, а замыкание умножает число на 2, то функция должна вернуть массив `[1, 2, 4, 8, 16]`.
func generateSequence(startingFrom: Int, length: Int, usingClosure: (Int) -> Int) -> [Int] {
    var result: [Int] = [startingFrom]
    var currentLngth = length
    while currentLngth > 1 {
        if let last = result.last {
            result.append(usingClosure(last))
        }
        currentLngth -= 1
    }
    return result
}
generateSequence(startingFrom: 1, length: 3) { $0 * 2 }
