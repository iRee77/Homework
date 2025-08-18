import Foundation

//1. Напишите код, который проверяет, является ли число положительным, отрицательным или нулем.
let checkNumber = 89
if checkNumber > 0 {
    print("Число \(checkNumber) положительное")
} else if checkNumber < 0 {
    print("Число \(checkNumber) отрицательное")
} else {
    print("Число равно нулю")
}

//2. [1, 2, 3, 4, 5] - инкриментируйте каждый элемент в этом массиве.
let arrayList = [1, 2, 3, 4, 5]
var incrementedList = [Int]()
for number in arrayList {
    incrementedList.append(number+1)
}

//3. Используя цикл for-in, выведите все числа от 10 до 1 в обратном порядке.
for i in (1...10).reversed() {
    print(i)
}

//4. Используйте условие if для проверки, является ли переменная четным числом.
if checkNumber % 2 == 0 {
    print("Число \(checkNumber) чётное")
} else {
    print("Число \(checkNumber) не чётное")
}

//5. Используйте switch чтобы классифицировать оценку буквой (A, B, C…)
switch checkNumber {
case 90...100:
    print("\(checkNumber) - это A")
case 80..<90:
    print("\(checkNumber) - это B")
case 70..<80:
    print("\(checkNumber) - это C")
case 60..<70:
    print("\(checkNumber) - это D")
case 0..<60:
    print("\(checkNumber) - это F")
default:
    print("\(checkNumber) - вне диапазона")
}

//6. Напишите цикл while, который добавляет элементы в массив до тех пор, пока его размер не достигнет 10.
var arrayForWhile = [Int]()
while arrayForWhile.count < 10 {
    arrayForWhile.append(Int.random(in: 1..<10))
}

//7. Напишите цикл, который удваивает значение каждого элемента в массиве integer.
var doubledList = [Int]()
for i in arrayList {
    doubledList.append(i * 2)
}

//8. Используйте оператор if-else, чтобы проверить, равны или нет две строки.
let string1 = ""
let string2 = "asd"
var equal: Bool

if string1 == string2 {
    equal = true
} else {
    equal = false
}

//9. Создайте словарь с ключами-строками и значениями-integers. Используйте цикл for-in для итерации по словарю и печати каждого значения.
let dictStrInt = ["A": 1, "B": 2, "C": 3, "D": 4, "E": 5, "F": 6, "G": 7, "H": 8]
for (key, value) in dictStrInt {
    print("Значение ключа \(key) = \(value)")
}

//10. Напишите цикл for, который выведет только четные числа в диапазоне от 1 до 100.
let range1_100 = 1...100
for i in range1_100 {
    if i % 2 == 0 {
        print(i)
    }
}

//11. Создайте строку с именем firstName. Используйте if-else, чтобы проверить, если firstName равно вашему имени, напечатайте 'Hello, me!', в противном случаенапечатайте 'Hello, (имя)!'
let firstName = "Anna"
if firstName == "Vlad" {
    print("Hello, me!")
} else {
    print("Hello, \(firstName)!")
}

//12. Выводите все элементы массива, которые больше среднего значения.
let avgList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let avgValue = avgList.reduce(0, +) / avgList.count
for i in avgList {
    if i > avgValue {
                print("Элемент массива \(i) больше среднего значение суммы элементов массива")
    }
}

//13. Напишите код, который осуществляет вывод чисел от 1 до 100. Но для кратных трём пусть вместо числа выводится слово "Fizz", а для кратных пяти — слово "Buzz". Если число кратно и 3, и 5, то выведите "FizzBuzz".
range1_100
for i in range1_100 {
    if (i % 3 == 0) && (i % 5 == 0) {
                print("FizzBuzz")
    } else if i % 3 == 0 {
                print("Fizz")
    } else if i % 5 == 0 {
                print("Buzz")
    } else {
               print(i)
    }
}

//14. Используйте цикл for-in, чтобы перебрать массив слов и напечатать длину каждого слова.
var wordsList = ["три(6)", "Карл у Клары украл коралы", "Алалалалалла", "Привет, как дела?", "", "пусто", "1234567890"]
for word in wordsList {
    //    print(word.count)
}

//15. Используйте цикл, чтобы перебрать массив чисел и создайте новый массив соответствующими строковыми представлениями каждого числа.
let numbersArray = [1, 5, 7, 3, 0, 6, 2]
var stringArray = [String]()
for number in numbersArray {
    stringArray.append("\(number)")
}

//16. Напишите цикл, который превращает массив строк в массив всех строк в верхнем регистре.
for i in 0..<wordsList.count {
    wordsList[i] = wordsList[i].uppercased()
}

//17. Создайте цикл while, который продолжает генерировать случайные числа до тех пор,пока не будет сгенерировано число, равное 50.
var randomNumb = 0
while randomNumb != 50 {
    randomNumb = Int.random(in: 1...1000)
}

//18. Создайте цикл, который умножает каждое число в массиве на два.
var doubledArray = [Int]()
for number in numbersArray {
    doubledArray.append(number * 2)
}

//19. Разработайте программу с использованием if-else, которая проверяет, является линомер года високосным.
let year = 2400
if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0){
    print("\(year) - это високосный год")
} else {
    print("\(year) - это не високосный год")
}

//20. Разработайте программу, которая с помощью switch выводит количество дней в каждом месяце.
let month = "Май"
switch month {
case "Январь", "Март", "Май", "Июль", "Август", "Октябрь", "Декабрь":
    print("В месяце \(month) 31 день")
case "Апрель", "Июнь", "Сентябрь", "Ноябрь":
    print("В месяце \(month) 30 дней")
case "Февраль":
    print("В феврале 28 или 29 дней")
default:
    print("Некорректное значение")
}

//1. Создайте программу, которая определяет, является ли данная строка палиндромом. Палиндром - это слово или фраза, которые одинаково читаются слева направо и справаналево. Учтите пробелы и знаки препинания.
let palindromeTest = "а роза упала на лапу Азора!"
var prePalindrome = ""
for char in palindromeTest.lowercased() {
    if char.isLetter || char.isNumber {
        prePalindrome.append(char)
    }
}

var isPalindrome = false
let palindromeArray = Array(prePalindrome)
for i in (0..<palindromeArray.count/2) {
    if palindromeArray[i] == palindromeArray[palindromeArray.count-i-1] {
        isPalindrome = true
    } else {
        isPalindrome = false
        break
    }
}

//2. Напишите программу, которая проверяет, является ли введенное число простым.
let checkNumb = 15
var isPrime = true

if checkNumb < 2 {
    isPrime = false
} else if checkNumb > 3 {
    let sqrtNumb = Int(sqrt(Double(checkNumb)))
    for i in 2...sqrtNumb {
        if checkNumb % i == 0 {
            isPrime = false
            break
        }
    }
}

//3. Напишите программу, которая вычисляет факториал числа.
let inputFactorialNumb = 4
var factorial = 1
if inputFactorialNumb < 0 {
    print("Введите число больше или равное 0")
} else if inputFactorialNumb == 0 {
    print("0! = 1")
} else {
    for i in 1...inputFactorialNumb {
        factorial *= i
    }
    print("\(inputFactorialNumb)! = \(factorial)")
}

//4. Напишите цикл, который выводит все числа Фибоначчи до заданного значения.
// 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89
let inputFibonacciNumb = 6
var fibonacci = [0, 1]

if inputFibonacciNumb == 0 {
    fibonacci = [0]
    print(fibonacci)
} else if inputFibonacciNumb < 0 {
    print("Введите число больше или равное 0")
} else if inputFibonacciNumb == 1 {
    print(fibonacci)
} else {
    for i in 1..<inputFibonacciNumb {
        fibonacci.append(fibonacci[i]+fibonacci[i-1])
    }
    print(fibonacci)
}

//5. Напишите программу, которая по заданному числу N выводит все простые числа до N. Для этого используйте вложенные циклы и условные операторы для проверки делителей каждого числа.

// Первое решение. Решето Эратозбека (через позор и боль, но работает)
let primeToNumb = 3
var primeArray = [Int]()

if primeToNumb <= 1 {
    primeArray = []
    print(primeArray)
} else {
    primeArray = Array(2...primeToNumb)
    let sqrtNumb = Int(sqrt(Double(primeToNumb)))
    for i in 0...sqrtNumb {
        if i >= primeArray.count {
            continue
        }
        if primeArray[i] == 0 {
            continue
        } else {
            for j in (i+1)..<primeArray.count {
                if (primeArray[j] % primeArray[i] == 0) && (primeArray[j] != 0) {
                    primeArray[j] = 0
                }
            }
        }
    }
    var primeNumbers = [Int]()
    for i in 0..<primeArray.count {
        if primeArray[i] != 0 {
            primeNumbers.append(primeArray[i])
        }
    }
    print("Решето Эратозбека \(primeNumbers)")
}

// Второе решение. Классическое Решето Эратосфена (красиво-модно-лаконично)
var sieve = [Bool]()

if primeToNumb <= 1 {
    sieve = []
    print(sieve)
} else {
    var sqrtNumb = Int(sqrt(Double(primeToNumb))) + 1
    var primeNumbersSieve = [Int]()
    for i in 0...primeToNumb {
        sieve.append(true)
    }
    sieve[0] = false
    sieve[1] = false
    for i in 2...sqrtNumb{
        for j in (i+1)..<sieve.count{
            if j % i == 0 {
                sieve[j] = false
            }
        }
    }
    for (i,b) in sieve.enumerated() {
        if b == true {
            primeNumbersSieve.append(i)
        }
    }
    print("Решето Эратосфена \(primeNumbersSieve)")
}
