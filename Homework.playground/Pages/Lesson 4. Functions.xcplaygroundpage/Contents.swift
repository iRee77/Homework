import Foundation

//1. Напишите функцию, которая выводит приветствие "Привет, мир!" на экран.
func helloWord() {
    print("Привет, Мир!")
}

//2. Напишите функцию, которая принимает имя пользователя и выводит приветствие с этим именем.
func personName(name: String) {
    print("\(name)")
}
//personName(name: "Anna")

//3. Напишите функцию, которая принимает два числа и возвращает их сумму.
func sumAB(a: Int, b: Int) -> Int {
    return a + b
}
sumAB(a: 1, b: 2)

//4. Напишите функцию, которая принимает два числа и возвращает их произведение.
func productAB (a: Int, b: Int) -> Int {
    return a * b
}
productAB(a: 2, b: 10)

//5. Напишите функцию, которая принимает строку и возвращает ее длину.
func lineCount (line: String) -> Int {
    return line.count
}
lineCount(line: "12345")

//6. Напишите функцию, которая принимает массив чисел и возвращает сумму всех элементов массива.
func sumArray (_ numbers: [Int]) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumArray([1,2,3,4,5])

//7. Напишите функцию, которая принимает массив строк и выводит каждую строку на новой строке.
func eachString (_ strings: [String]) {
    for sring in strings {
        print(sring)
    }
}
//eachString(["Я", "сейчас", "буду", "выводить", "каждую", "строку"])

//8. Напишите функцию, которая принимает число и возвращает true, если оно четное, и false, если нечетное.
func isEven (_ number: Int) -> Bool {
    return number % 2 == 0
}
isEven(11)

//9. Напишите функцию, которая принимает число и возвращает true, если оно простое, и false, если составное.
// решение, если мы считаем, что по условию нужно вернуть true на простые чиста, а false на все остальные:
func isPrime (_ number: Int) -> Bool {
    if number < 2 {
        return false
    }
    if (number == 2) || (number == 3) {
        return true
    }
    if number % 2 == 0 {
        return false
    }
    if number > 3 {
        for i in stride(from: 3, through: Int(sqrt(Double(number))), by: 2) {
            if number % i == 0 {
                return false
            }
        }
    }
    return true
}
isPrime(5)

//10. Напишите функцию, которая принимает два числа и возвращает большее из них.
func whatGreater (a: Int, b: Int) -> Int {
        return a > b ? a : b
}
whatGreater(a: 1, b: 3)
    
//11. Напишите функцию, которая принимает массив чисел и возвращает массив только из четных чисел.
func intLine (_ numbers: [Int]) -> [Int] {
    var intArray = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            intArray.append(number)
        }
    }
    return intArray
}
intLine([1, 2, 3, 4, 5])

//12. Напишите функцию, которая принимает строку и возвращает ее в обратном порядке.
func reversedLine (line: String) -> String {
    var reversedString = ""
    for c in line.reversed() {
        reversedString += String(c)
    }
    return reversedString
}

func reversedLine2 (line: String) -> String {
    return String(line.reversed())
}

reversedLine(line: "qwerty")
reversedLine2(line: "qwerty")

//13. Напишите функцию, которая принимает массив строк и возвращает новый массив, содержащий только строки заданной длины.
func stringByLength (_ strings: [String], length: Int) -> [String] {
    var newArray = [String]()
    for string in strings {
        if string.count == length {
            newArray.append(string)
        }
    }
    return newArray
}
stringByLength(["a", "aa", "aaa", "aaaa", "aaaaa"], length: 5)

//14. Напишите функцию, которая принимает два числа и возвращает массив с числами в этом диапазоне.
func rangeNumb (a: Int, b: Int) -> [Int] {
    var numbArray = [Int]()
    if a == b {
        return [a]
    }
    if a < b {
        for numb in a...b {
            numbArray.append(numb)
        }
    } else {
        for numb in (b...a).reversed() {
            numbArray.append(numb)
        }
    }
    return numbArray
}

func rangeNumb2 (a: Int, b: Int) -> [Int] {
    if a == b {
        return [a]
    }
    return a < b ? Array(a...b) : Array(b...a).reversed()
}
rangeNumb(a: 5, b: -10)
rangeNumb2(a: 5, b: -10)

//15. Напишите функцию, которая принимает число и возвращает массив всех чисел от 0 до этого числа.
func zeroToNumb (_ numb: Int) -> [Int] {
    return numb > 0 ? Array(0...numb) : Array(numb...0).reversed()
}
zeroToNumb(0)

//16. Напишите функцию, которая принимает массив чисел и возвращает среднее значение.
func avgValue (_ numbers: [Int]) -> Double {
    if numbers.count == 0 {
        return 0
    }
    return Double(numbers.reduce(0, +)) / Double(numbers.count)
}
avgValue([0, 1])

//17. Напишите функцию, которая принимает массив чисел и возвращает количество положительных чисел.
func positiveNumb (_ numbs: [Int]) -> Int {
    var count = 0
    for numb in numbs {
        if numb >= 0 {
            count += 1
        }
    }
    return count
}
positiveNumb([0,-2,-3,-4,-5])

//18. Напишите функцию, которая принимает массив чисел и возвращает сумму квадратов этих чисел.
func sumSquar (_ numbers: [Int]) -> Int {
    var result = 0
    for number in numbers {
        result = result + (number * number )
    }
    return result
}
sumSquar([1,2,3])

//19. Напишите функцию, которая принимает массив строк и возвращает массив строк без повторений.
func lineWithoutRep (_ strings: [String]) -> [String]{
    var line = [String]()
    for string in strings {
        if !line.contains(string) {
            line.append(string)
        }
    }
    return line
}
lineWithoutRep(["2", "asd", "2", "3"])

//20. Напишите функцию, которая принимает две строки и проверяет, является ли одна строка анаграммой другой.
func isAnagram (word1: String, word2: String) -> Bool {
    var line1 = [Character:Int]()
    var line2 = [Character:Int]()
    for char in word1.lowercased() {
        if char.isLetter {
            if let count = line1[char] {
                line1[char] = count + 1
            } else {
                line1[char] = 1
            }
        }
    }
    for char in word2.lowercased() {
        if char.isLetter {
            if let count = line2[char] {
                line2[char] = count + 1
            } else {
                line2[char] = 1
            }
        }
    }
    return line1 == line2
}
isAnagram(word1: "a!pple", word2: "p lepA")

//1. Рекурсивная функция для вычисления факториала
//  Напишите рекурсивную функцию `factorial(n: Int)`, которая вычисляет факториал числа `n` (обозначается как `n!` и равен произведению всех целых чисел от 1 до `n`).
func factorial(number: Int) -> Int {
    guard number != 0 else { return 1 }
    guard number > 0 else { return 0 }
    if number == 1 {
        return 1
    } else {
        return number * factorial(number: number - 1)
    }
//    return number == 1 ? 1 : number * factorial(number: number - 1)
}
factorial(number: 0)

//2. Функция вычисления чисел Фибоначчи
//  Напишите функцию `fibonacci(n: Int)`, которая возвращает `n`-е число в последовательности чисел Фибоначчи. Числа Фибоначчи определяются как сумма двух предыдущих чисел в последовательности, начиная с 0 и 1.
// 0 1 1 2 3 5

//func fibonacci(number: Int) -> Int {
//    guard number != 1 else { return 0 }
//    guard number != 2 else { return 1 }
//    return fibonacci(number: number - 1) + fibonacci(number: number - 2)
//}
//
//fibonacci(number: 26)

var cache = [Int:Int]()
@MainActor func fibonacci(number: Int) -> Int {
    guard number != 1 else { return 0 }
    guard number != 2 else { return 1 }
    if let result = cache[number] { return result }
    let result = fibonacci(number: number - 1) + fibonacci(number: number - 2)
    cache[number] = result
    return result
}
fibonacci(number: 80)

//3. Функция сортировки массива
//  Напишите функцию `sortArray(array: [Int])`, которая принимает массив целых чисел и сортирует его в порядке возрастания или убывания.

/// Сортирует массив чисел по возрастанию или убыванию
/// - Parameters:
///   - array: массив для сортировки
///   - ASC: при true сортируем массив во возрастанию, при false - по убыванию
func sortArray(array: [Int], ASC: Bool) -> [Int] {
    return ASC ? array.sorted() : array.sorted(by: >)
}
[1,7,4,0,5,3,0]
sortArray(array: [1,7,4,0,5,3,0], ASC: true)

//4. Функция для поиска наибольшего общего делителя (НОД)
//  Напишите функцию `gcd(a: Int, b: Int)`, которая находит наибольший общий делитель (НОД) двух целых чисел `a` и `b`. НОД - это наибольшее число, на которое делятся оба числа без остатка.

//func gcd(a: Int, b: Int) -> Int? {
//    guard !(a == 0 || b == 0) else { return nil }
//    var divisorListA = Set<Int>()
//    var divisorListB = Set<Int>()
//    let maxNumber = a < b ? abs(b) : abs(a)
//    print(maxNumber)
//    
//    for number in 1...maxNumber {
//        if a % number == 0 {
//            divisorListA.insert(number)
//        }
//        if b % number == 0 {
//            divisorListB.insert(number)
//        }
//    }
//    return (divisorListA.intersection(divisorListB)).max()
//}
//gcd(a: 12, b: 10000)

// https://younglinux.info/algorithm/euclidean хорошее объяснение алгоритма с блок схемами
func gcd(a: Int, b: Int) -> Int {
    var a = abs(a)
    var b = abs(b)
    while a != 0 && b != 0 {
        if a > b { a = a % b }
        else { b = b % a }
    }
    return a + b
}
gcd(a: 133, b: 20)

//5. Функция для проверки палиндрома
//  Напишите функцию `isPalindrome(word: String)`, которая проверяет, является ли данное слово палиндромом. Палиндром - это слово, которое читается одинаково как слева направо, так и справа налево, игнорируя пробелы и знаки препинания.
func isPalindrome (word: String) -> Bool {
    let prepareWord = Array(word.lowercased().filter { $0.isLetter || $0.isNumber })
    guard !prepareWord.isEmpty else { return false }
    for i in (0..<prepareWord.count / 2) {
        if prepareWord[i] != prepareWord[prepareWord.count - i - 1] {
            return false
        }
    }
    return true
}
isPalindrome(word: "а роза упала на лапу Азора!")

var tempArray1 = [2,3,4,5]
tempArray1.remove(at: 0)
tempArray1
tempArray1.dropFirst()
tempArray1
tempArray1.removeFirst()
tempArray1
// Домашняя задача 2: есть два отсортированных массива чисел, нужно их соединить в один отсортированный массив с помощью рекурсии
func mergedArrays(array1: [Int], array2: [Int]) -> [Int] {
    guard !array1.isEmpty else { return array2}
    guard !array2.isEmpty else { return array1}
    var result = [Int]()
    
    if let first1 = array1.first {
//        print("first1: \(first1)")
        if let first2 = array2.first {
//            print("first2: \(first2)")
            if first1 < first2 {
                result.append(first1)
//                print("true: append(first1): \(first1)")
//                print("Убираем: \(array1[0])")
//                print("Отдаём в функцию: \(Array(array1.dropFirst())) и \(array2)")
                result = result + mergedArrays(array1: Array(array1.dropFirst()), array2: array2)
//                print("Текущий result: \(result)")
            } else {
                result.append(first2)
//                print("false: append(first2): \(first2)")
//                print("Убираем: \(array2[0])")
//                print("Отдаём в функцию: \(array1) и \(Array(array2.dropFirst()))")
                result = result + mergedArrays(array1: array1, array2: Array(array2.dropFirst()))
//                print("Текущий result: \(result)")
            }
        }
    }
    return result
}
mergedArrays(array1: [1, 3, 5, 7], array2: [2, 4, 6, 8])
mergedArrays(array1: [1, 1, 1, 1], array2: [1, 1, 1, 1])
mergedArrays(array1: [1, 3], array2: [2, 4, 6, 8])
mergedArrays(array1: [1, 3, 5, 7], array2: [2, 4])

// Написать свой flatMap, который разворачивает массивы любого уровня неравномерной вложенности
// Например: [ [[[1, 2, 3]]], [[4, 5, 6]], [7, 8, 9]] -> [1, 2, 3, 4, 5, 6, 7, 8, 9]
var test = [ [[[1, 2, 3]]], [[4, 5, 6]], [7, 8, 9]]
test[0]
func flattenArrays(array: [Int]) -> [Int] {
    
}
