import Foundation

//1. Напишите функцию, которая принимает Optional строку и выводит ее на экран, если она не nil.
func printString(_ string: String?) {
    if let string = string {
        print(string)
    }
}
//printString("d")

//2. Напишите функцию, которая принимает Optional число и возвращает его удвоенное значение, если оно не nil.
func doubledNumb(_ number: Int?) -> Int? {
    if let number = number {
        return number * 2
    }
    return nil
}
doubledNumb(nil)

//3. Напишите функцию, которая принимает Optional массив чисел и возвращает его длину, если массив не nil.
func arrayLength(_ array: [Int]?) -> Int? {
    guard let array = array else { return nil }
    return array.count
}

//4. Напишите функцию, которая принимает Optional строку и проверяет, содержит ли она определенное подстроку, возвращая true или false.
func isContains(string: String?, substring: String) -> Bool {
    guard let string = string else { return false }
    return string.contains(substring)
}
isContains(string: "ni2l", substring: "21")

//5. Напишите функцию, которая принимает Optional число и возвращает его в квадрате, если оно не nil.
func square(_ numb: Int?) -> Int? {
    guard let numb = numb else { return nil }
    return numb * numb
}
square(nil)

//6. Напишите функцию, которая принимает Optional массив строк и выводит каждую строку на новой строке, если массив не nil.
func printLine(_ line: [String]?) {
    guard let line = line else { return }
    for string in line {
        print(string)
    }
}
printLine(nil)

//7. Напишите функцию, которая принимает Optional строку и возвращает ее длину, если она не nil, и 0 в противном случае.
func lengthString(string: String?) -> Int {
    guard let string = string else { return 0 }
    return string.count
}
lengthString(string: nil)

//8. Напишите функцию, которая принимает Optional число и проверяет, является ли оно четным, возвращая true или false.
func isEven(_ number: Int?) -> Bool? {
    guard let number = number else { return nil }
    return number % 2 == 0
}
isEven(11)

//9. Напишите функцию, которая принимает Optional массив чисел и возвращает сумму всех элементов массива, если массив не nil.
func sumArray(_ array: [Int]?) -> Int? {
    guard let array = array else { return nil }
    return array.reduce(0, +)
}
sumArray(nil)

//10. Напишите функцию, которая принимает Optional число и возвращает true, если оно положительное, и false, если отрицательное или nil.
func isPositive(_ number: Int?) -> Bool {
    guard let number = number else { return false }
    return number >= 0
}
isPositive(-1)

//11. Напишите функцию, которая принимает Optional строку и возвращает ее в обратном порядке, если она не nil.
func reversedString(_ string: String?) -> String? {
    guard let string = string else { return nil }
    return String(string.reversed())
}
reversedString("Qwerty")

//12. Напишите функцию, которая принимает Optional массив строк и возвращает первую строку, если массив не nil и не пустой.
func firstString(array: [String]?) -> String? {
    guard let array = array else { return nil}
    return array.first
}
firstString(array: [])

//13. Напишите функцию, которая принимает Optional число и возвращает его квадратный корень, если оно не nil и положительное.
func sqrtNumber(_ number: Int?) -> Double? {
    guard let number = number else { return nil }
    return number >= 0 ? sqrt(Double(number)) : nil
}
sqrtNumber(-4)

//14. Напишите функцию, которая принимает Optional массив чисел и возвращает максимальное значение, если массив не nil и не пустой.
func maxNumber(_ array: [Int]?) -> Int? {
    guard let array = array else { return nil }
    return array.max()
}
maxNumber(nil)

//15. Напишите функцию, которая принимает Optional строку и удаляет из нее все пробелы, если строка не nil.
func separatedString(_ string: String?) -> String? {
    guard let string = string else { return nil }
    return string.filter { !$0.isWhitespace }
}

separatedString("asdasd asd asd ")

//16. Напишите функцию, которая принимает Optional число и возвращает true, если оно простое, и false, если не nil и составное.
func isPrime (_ number: Int?) -> Bool? {
    guard let number = number else { return nil }
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
isPrime(31)

//17. Напишите функцию, которая принимает Optional массив строк и возвращает новый массив, содержащий только строки заданной длины, если массив не nil.
func stringByLength(_ strings: [String]?, length: Int) -> [String]? {
    guard let strings = strings else { return nil }
    return strings.filter { $0.count >= length }
}
stringByLength(["a", "aa", "aaa", "aaaa", "aaaaa"], length: 4)

//18. Напишите функцию, которая принимает Optional число и возвращает его факториал, если оно не nil и неотрицательное
func factorial(_ number: Int?) -> Int? {
    guard let number = number else { return nil }
    guard number >= 0 else { return nil }
    var factotial = 1
    if number == 0 { return 1 }
    for i in 1...number {
        factotial *= i
    }
    return factotial
}

factorial(4)

//19. Напишите функцию, которая принимает Optional массив чисел и возвращает среднее значение, если массив не nil и не пустой.
func avgValue(_ numbers: [Int]?) -> Double? {
    guard let numbers = numbers else { return nil }
    guard !numbers.isEmpty else { return nil }
    return Double(numbers.reduce(0, +)) / Double(numbers.count)
}
avgValue(nil)

//20. Напишите функцию, которая принимает Optional строку и возвращает ее в верхнем регистре, если она не nil.
func upperString(_ string:String?) -> String? {
    guard let string = string else { return nil }
    return string.uppercased()
}
upperString(nil)

//- Сложные задачи
//1. Напишите функцию, которая принимает Optional массив чисел и возвращает Optional сумму квадратов всех чисел, если массив не nil и не пустой.
func squareSum(_ numbers: [Int]?) -> Int? {
    guard let numbers = numbers else { return nil }
    guard !numbers.isEmpty else { return nil }
    var result = 0
    for number in numbers {
        result = result + (number * number )
    }
    return result
}
squareSum([4, 5])

//2. Напишите функцию, которая принимает Optional словарь с именами пользователей и их возрастом, и возвращает Optional самое старшее имя, если словарь не nil и не пустой.
func oldestName(_ ageDict: [String:Int]?) -> String? {
    guard let ageDict = ageDict else { return nil }
    guard !ageDict.isEmpty else { return nil }
    let name = ageDict.max { a, b in a.value < b.value }
    return name?.key
}
oldestName(["name1":4, "name2":5, "name3":5])

//3. Напишите функцию, которая принимает Optional строку и возвращает Optional первую цифру из строки, если она содержит цифры, и nil в противном случае.
func firstNumb(_ string: String?) -> Int? {
    guard let string = string else { return nil }
    let numb = string.filter({ $0.isNumber })
    if let firstNumb = numb.first {
        return Int(String(firstNumb))
    }
    return nil
}
firstNumb("asd")

//4. Напишите функцию, которая принимает Optional массив строк и возвращает Optional массив строк без повторений, если массив не nil.
func stringWithoutRep(_ strings: [String]?) -> [String]? {
    guard let strings = strings else { return nil }
    var line = [String]()
    for string in strings {
        if !line.contains(string) {
            line.append(string)
        }
    }
    return line
}
stringWithoutRep(["2", "asd", "2", "3"])

//5. Напишите функцию, которая принимает Optional число и возвращает его делители, если число не nil и положительное, и nil в противном случае.
func dividers(number: Int?) -> [Int]? {
    guard let number = number else { return nil }
    guard number >= 0 else { return nil }
    guard number != 0 else { return nil }
    var result = Set<Int>()
    for i in 1...Int(sqrt(Double(number))) {
        if number % i == 0 {
            result.insert(i)
            result.insert(number / i)
        }
    }

    return result.sorted()
}
dividers(number: 84)
