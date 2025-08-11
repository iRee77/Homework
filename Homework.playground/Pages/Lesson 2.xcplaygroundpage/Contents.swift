//Создайте массив с именами 5 ваших друзей.
var friends = ["Bob", "Alice", "Charlie", "Sam", "Anna"]

//Добавьте еще два имени в этот массив.
friends += ["Alex", "Helly"]

//Удалите последнее имя из массива.
friends.removeLast()

//Выведите имя третьего друга в списке.
print(friends[2])

//Проверьте, есть ли в массиве имя "Bob".
friends.contains("Bob")

//Создайте множество из пяти различных чисел.
var setNumbers:Set = [1, 2, 3, 4, 5]

//Добавьте еще одно число в это множество.
setNumbers.insert(6)
//setNumbers.union([7])

//Удалите одно число из множества.
setNumbers.removeFirst()
//setNumbers.remove(6)

//Проверьте, есть ли число 7 в вашем множестве.
setNumbers.contains(7)

// Создайте словарь, где ключи - это имена ваших друзей, а значения - их любимый цвет.
var favoriteColor = ["Bob": "red", "Alice": "orange", "Charlie": "yellow", "Sam": "green", "Anna": "blue"]

// Выведите любимый цвет вашего друга Bob.
print(favoriteColor["Bob"] ?? "unknown name")

// Измените любимый цвет вашего друга Alice на зеленый.
favoriteColor["Alice"] = "green"

// Удалите данные вашего друга Charlie из словаря.
favoriteColor.removeValue(forKey: "Charlie")
//favoriteColor["Charlie"] = nil

// Проверьте, есть ли в словаре данные вашего друга Sam.
favoriteColor.keys.contains("Sam")

// Создайте словарь с ключами-строками и значениями-integers. Используйте цикл for-in для итерации по словарю и печати каждого значения.
let calendar = ["Январь": 31, "Февраль": 28, "Март": 31, "Апрель": 30]
for (month, days) in calendar {
    print("В месяце \(month) содержится \(days) дней")
}

// Создайте множество из пяти фруктов, затем добавьте еще один и выведите количество фруктов в множестве.
var fruits:Set = ["apple", "banana", "orange", "pear", "grape"]
fruits.insert("coconut")
print("В множестве находится \(fruits.count) фруктов")

// Создайте словарь, где ключи это идентификационные номера студентов, а значения - это их имена. Далее выведите имя студента с определенным идентификационным номером.
let students = [1: "Анна", 2: "Иван", 3: "София", 4: "Роман", 5: "Аркадий"]
print(students[1] ?? "number not found")

// Создайте массив с пятью различными числами. Затем отсортируйте массив в порядке возрастания.
var arrayNumbers = [4, 9, 1, 1, 0]
arrayNumbers.sorted()
//arrayNumbers.sort(by: <)

// Создайте множество с именами всех европейских стран, затем проверьте является ли Франция частью этого множества.
let countries:Set = ["Великобритания", "Германия", "Франция", "Нидерланды", "Швейцария", "Австрия", "Польша", "Чехия", "Венгрия", "Румыния", "Греция", "Швейцария", "Италия", "Португалия", "Испания", "Дания", "Швеция", "Финляндия"]
countries.contains("Франция")

// Создайте словарь, где ключи - это названия городов, а значения - это количество населения этих городов. Измените население одного из городов.
var cities = ["Москва": "12,6", "Санкт-Петербург": "5,6", "Новосибирск": "1,6", "Екатеринбург": "1,5", "Казань": "1,3", "Челябинск": "1,2", "Омск": "1,1"]
cities["Москва"] = "13,2"

//Найдите наиболее часто встречающийся элемент в массиве чисел.
let arrayNumbersTest = [4, 0, 5, 4, 1, 9, 3]
var dictNumber: [Int: Int] = [:]
for number in arrayNumbersTest {
    if let count = dictNumber[number] {
        dictNumber[number] = count + 1
    }
    else {
        dictNumber[number] = 1
    }
}

var maxNumber = 0
for (number, count) in dictNumber {
    if count == dictNumber.values.max() {
        maxNumber = number
        break
    }
}

//Создайте словарь, в котором ключами будут имена пользователей, а значениями - их списки покупок. Затем объедините списки покупок всех пользователей в один общий список.
let purchases = [
    "Анна": "шоколад, кофе, вафли",
    "Иван": "булочка, кефир",
    "София": "спагетти, мясо, томаты, сливки",
    "Аркадий": "газировка, снэки, мороженое"]
let unionPurchases = purchases.values.joined(separator: ", ")

//Объедините два массива чисел в один и отсортируйте его по возрастанию.
let arrayList1 = [1, 5, 8, 3, 2]
let arrayList2 = [6, 9, 0, 4, 7]
var unionArrayList = arrayList1 + arrayList2
unionArrayList.sort(by: <)

//Дан массив с целыми числами. Найдите два числа, которые в сумме дают 0. Если таких нет, то верните пустой массив. Если есть несколько пар, верните любую. Задача ставится в условиях, что она решается без применения вспомогательных функций и алгоритмов сортировки.
let arrayListForSum = [0, 0, 2, 9, 1, 4, 0, 0, 2]
var arraySum: [Int] = []
for i in 0..<arrayListForSum.count {
    for j in (i + 1)..<arrayListForSum.count {
        if arrayListForSum[i] == 0 { // если не хотим показывать пару 0 + 0
            break
        }
        if arrayListForSum[i] + arrayListForSum[j] == 0 {
            arraySum = [arrayListForSum[i], arrayListForSum[j]]
        }
    }
}

//Дан словарь, где ключи - это имена студентов, а значения - это их оценки. Выведите имена студентов, у которых оценка выше 85. Задачу необходимо решить без использования вспомогательных функций и алгоритмов сортировки.
let studentsDict = ["Екатерина": 32,  "Дмитрий": 0, "Алиса": 100, "Константин": 85, "Дарья": 86]
for (studentName, grade) in studentsDict {
    if grade > 85 {
        print(studentName)
    }
}
