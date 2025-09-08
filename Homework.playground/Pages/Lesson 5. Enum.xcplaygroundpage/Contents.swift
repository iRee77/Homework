import Foundation

//1. Создайте перечисление `Weekdays`, представляющее дни недели.
enum Weekdays {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}
//2. Объявите перечисление `Months`, включающее названия всех месяцев года.
enum Months {
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
}

//3. Определите перечисление `Direction`, представляющее четыре основных направления: север, юг, восток и запад.
enum Direction1 {
    case север
    case юг
    case запад
    case восток
}

//4. Создайте перечисление `Coin`, содержащее номиналы монет: penny, nickel, dime и quarter.
enum Coin {
    case penny
    case nickel
    case dime
    case quarter
}

//5. Объявите перечисление `TrafficLight`, представляющее цвета светофора: красный, желтый и зеленый.
enum TrafficLight:String {
    case red = "красный"
    case yellow = "жёлтый"
    case green = "зелёный"
}

//6. Определите перечисление `Suit`, представляющее масти игральных карт: пики, червы, бубны и трефы.
enum Suit: String {
    case diamonds = "бубны"
    case hearts = "червы"
    case spades = "пики"
    case clubs = "трефы"
}

//7. Создайте перечисление `Daytime`, содержащее периоды суток: утро, день, вечер и ночь.
enum Daytime: String {
    case morning = "утро"
    case day = "день"
    case evening = "вечер"
    case night = "ночь"
}

//8. Объявите перечисление `DirectionArrow`, представляющее стрелки направлений: вверх, вниз, влево и вправо.
enum DirectionArrow: String {
    case up = "вверх"
    case down = "вниз"
    case left = "влево"
    case right = "вправо"
}

//9. Определите перечисление `Weather`, содержащее погодные условия: солнечно, дождливо, облачно и ветрено.
enum Weather: String {
    case sunny = "солнечно"
    case rainy = "дождливо"
    case cloudy = "облачно"
    case windy = "ветрено"
}

//10. Создайте перечисление `Season`, представляющее времена года: весна, лето, осень и зима.
enum Season: String {
    case spring = "весна"
    case summer = "лето"
    case autumn = "осень"
    case winter = "зима"
}

//11. Создайте перечисление `CardSuit`, представляющее масти игральных карт: пики, червы, бубны и трефы. Напишите функцию, которая принимает масть карты и возвращает ее название на русском.
enum CardSuit: String {
    case diamonds = "бубны"
    case hearts = "червы"
    case spades = "пики"
    case clubs = "трефы"
}

func card(suit: CardSuit) -> String {
    return suit.rawValue
}
card(suit: CardSuit.clubs)

//12. Объявите перечисление `ShapeType`, представляющее различные типы геометрических фигур: круг, квадрат, треугольник и прямоугольник. Напишите функцию, которая принимает тип фигуры и возвращает ее площадь.
enum ShapeType {
    case circle(radius: Double)
    case square(side: Double)
    case triangle(side1: Double, side2: Double, side3: Double)
    case rectangle(side1: Double, side2: Double)
}

func figureArea(shape: ShapeType) -> Double {
    switch shape {
    case .circle(radius: let radius):
        return Double.pi * radius * radius
    case .square(side: let side):
        return side * side
    case .triangle(side1: let side1, side2: let side2, side3: let side3):
        let p = (side1 + side2 + side3) / 2.0
        return sqrt(p * (p - side1) * (p - side2) * (p - side3))
    case .rectangle(side1: let side1, side2: let side2):
        return side1 * side2
    }
}
figureArea(shape: .circle(radius: 18))
figureArea(shape: .square(side: 20))
figureArea(shape: .triangle(side1: 5, side2: 5, side3: 7))
figureArea(shape: .rectangle(side1: 5, side2: 8))

//13. Определите перечисление `TrafficSignal`, содержащее типы светофорных сигналов: красный, желтый и зеленый. Напишите функцию, которая принимает сигнал и возвращает время его длительности в секундах.
enum TrafficSignal: Int {
    case red = 20
    case yellow = 5
    case green = 60
}

func signalDuration(signal: TrafficSignal) -> Int {
    return signal.rawValue
}
signalDuration(signal: .red)
signalDuration(signal: TrafficSignal.yellow)

//14. Создайте перечисление `DayType`, представляющее дни недели: будний день и выходной день. Напишите функцию, которая принимает день недели и возвращает его тип.
enum DayType {
    case weekday
    case weekend
    case invalid
    
    var days: [String] {
        switch self {
        case .weekday:
            return ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
        case .weekend:
            return ["Saturday", "Sunday"]
        case .invalid:
            return ["invalid"]
        }
    }
}
func dayType(day: String) -> DayType {
    if DayType.weekday.days.contains(day) {
        return .weekday
    }
    else if DayType.weekend.days.contains(day) {
        return .weekend
    }
    else {
        return .invalid
    }
}
dayType(day: "Monday")
dayType(day: "Saturday")
dayType(day: "asd")

//15. Объявите перечисление `Temperature`, содержащее типы температур: низкая, средняя и высокая. Напишите функцию, которая принимает температуру в градусах Цельсия и возвращает ее тип.
enum Temperature {
    case low(Int)
    case average(Int)
    case high(Int)
    case invalid
    
    init(value: Int) {
        switch value {
        case -237..<10:
            self = .low(value)
        case 10..<24:
            self = .average(value)
        case 24...:
            self = .high(value)
        default:
            self = .invalid
        }
    }
}
func temperatureType (_ temperature: Int) -> Temperature {
    return Temperature.init(value: temperature)
}
temperatureType(-238)

//16. Определите перечисление `TrafficLightState`, представляющее состояния светофора: включен, выключен и мигающий. Напишите функцию, которая принимает состояние светофора и возвращает соответствующее ему описание.
enum TrafficLightState: String {
case on = "Включен"
case off = "Выключен"
case flashing = "Мигающий"
}

func trafficLightState(state: TrafficLightState) -> String {
    return state.rawValue
}
trafficLightState(state: .on)

//17. Создайте перечисление `DirectionType`, содержащее направления движения: вперед, назад, влево и вправо. Напишите функцию, которая принимает два направления и определяет, являются ли они противоположными.
enum DirectionType {
    case up
    case down
    case left
    case right
}
func isOpposite (direction1: DirectionType, direction2: DirectionType) -> Bool {
    if (.down == direction1 && .up == direction2) || (.up == direction1 && .down == direction2) {
        return true
    }
    else if (.left == direction1 && .right == direction2) || (.right == direction1 && .left == direction2) {
        return true
    }
    else {
        return false
    }
}
isOpposite(direction1: .up, direction2: .up)
isOpposite(direction1: .right, direction2: .up)
isOpposite(direction1: .right, direction2: .left)
isOpposite(direction1: .left, direction2: .right)

//18. Объявите перечисление `OperatingSystem`, представляющее операционные системы: iOS, Android, Windows и macOS. Напишите функцию, которая принимает операционную систему и возвращает ее популярность среди пользователей.
enum OperatingSystem: String {
    case iOS = "Высокая"
    case Android = "Очень высокая"
    case Windows = "Средняя"
    case macOS = "Низкия"
}

func popularOS(OS: OperatingSystem) -> String {
    return OS.rawValue
}
popularOS(OS: .iOS)
//19. Определите перечисление `PaymentMethod`, содержащее способы оплаты: наличные, кредитная карта, электронные деньги и банковский перевод. Напишите функцию, которая принимает способ оплаты и возвращает его комиссию.
enum PaymentMethod: Double {
    case cash = 0
    case credit = 3
    case electronicMoney = 1.5
    case bankTransfer = 2
}

func comission(_ payment: PaymentMethod) -> Double {
    return payment.rawValue
}
comission(.electronicMoney)
//20. Создайте перечисление `WeatherCondition`, содержащее погодные условия: ясно, облачно, дождь и снег. Напишите функцию, которая принимает погодные условия и возвращает рекомендацию по одежде.
enum WeatherCondition: String {
case clear
case cloudy
case rain
case snow
    
    var clothes: String {
        switch self {
        case .clear:
            return "футболка, шорты, солнцезащитные очки, кепка. лёгкая обувь"
        case .cloudy:
            return "джинсы, кофта, толстовка, лёгкая обувь"
        case .rain:
            return "джинсы, кофта, непромокаемая обувь, зонт"
        case .snow:
            return "зимняя куртка, тёплый свитер, термобельё, шапка"
        }
    }
}
func getClothing (weather: WeatherCondition) -> String {
    weather.clothes
}
getClothing(weather: .clear)

//Сложные задачки
//1. Создайте перечисление `Unit` для различных единиц измерения (например, метры, километры, футы, дюймы и т. д.). Напишите функцию, которая принимает значение, единицу измерения и целевую единицу измерения, а затем конвертирует значение из одной единицы в другую.
enum Unit {
    // длина
    case meters         // метры
    case kilometers     // километры
    case feet           // футы
    case inches         // дюймы
    // масса
    case gram           // грамм
    case kilogram       // килограмм
    case pound          // фунт
    case ounce          // унция
    
    var coefficient: Double {
        switch self {
            // длина
        case .meters: return 1            // метры
        case .kilometers: return 1000     // километры
        case .feet: return 0.3048         // футы
        case .inches: return 0.0254       // дюймы
            // масса
        case .gram: return 1              // грамм
        case .kilogram: return 1000       // килограмм
        case .pound: return 453.592       // фунт
        case .ounce: return 28.3495       // унция
        }
    }
    var type: String {
        switch self {
        case .meters, .kilometers, .feet, .inches: return "length"
        case .gram, .kilogram, .pound, .ounce: return "mass"
        }
    }
}

func converter(value: Double, from: Unit, to: Unit) -> Double? {
    guard from.type == to.type else { return nil}
    let baseValue = value * from.coefficient
    return baseValue / to.coefficient
}
converter(value: 100, from: .ounce, to: .kilogram)

//2. Реализуйте перечисление `Direction` для направлений: север, юг, восток и запад. Напишите функцию `nextDirection`, которая принимает текущее направление и возвращает следующее направление на 90 градусов по часовой стрелке.
enum Direction {
    case north
    case south
    case west
    case east
    
    var nextDirection: Direction {
        switch self {
        case .north: return .east
        case .east: return .south
        case .south: return .west
        case .west: return .north
        }
    }
}
func nextDirection(_ direction: Direction) -> Direction {
    return direction.nextDirection
}
nextDirection(.north)

//3. Создайте перечисление `GameState`, которое представляет различные состояния игры (начало игры, игра в процессе, победа, поражение и т. д.). Напишите функции, которые изменяют состояние игры в зависимости от действий игрока.
enum GameState {
    case started    // -> progress, started
    case progress   // -> paused, won, lost, started
    case paused     // -> progress, started
    case won        // -> started, started
    case lost       // -> started, started
}

func startedGame(currentState: inout GameState) {
    guard currentState == .started else { return }
    currentState = .progress
}

func pauseGame(currentState: inout GameState) {
    guard currentState == .progress else { return }
    currentState = .paused
}

func unpauseGame(currentState: inout GameState) {
    guard currentState == .paused else { return }
    currentState = .progress
}

func winGame(currentState: inout GameState) {
    guard currentState == .progress else { return }
    currentState = .won
}

func loseGame(currentState: inout GameState) {
    guard currentState == .progress else { return }
    currentState = .lost
}
func newGame(currentState: inout GameState) {
    currentState = .started
}

var state: GameState = .started

winGame(currentState: &state)
startedGame(currentState: &state)
unpauseGame(currentState: &state)
pauseGame(currentState: &state)
unpauseGame(currentState: &state)
newGame(currentState: &state)
startedGame(currentState: &state)
winGame(currentState: &state)
newGame(currentState: &state)
startedGame(currentState: &state)
loseGame(currentState: &state)

//4. Создайте перечисление `ProductType` для различных типов товаров в магазине (одежда, продукты, электроника и т. д.). Напишите функции для обработки добавления, удаления и обновления товаров в зависимости от их типа.
enum ProductType {
    case clothes
    case food
    case electronic
}

// [type: [name:price]]
var storage = [ProductType: [String:Double]]()

//storage[.clothes] = ["Футболка":1]
//storage[.clothes]?["Джинсы"] = 1
//let product = (storage[.clothes])
//product!["Джинсы"]
//let price = (storage[.clothes])!["Джинсы"]

// Добавить товар
@MainActor func addGoods(type: ProductType, name: String, price: Double) {
    if storage[type] == nil {
        storage[type] = [name:price]
    }
        storage[type]?[name] = price
}

// Удалить товар
@MainActor func deleteGoods(type: ProductType, name: String) {
    storage[type]?[name] = nil
}

// Найти товар
@MainActor func findProduct(type: ProductType, productName name: String) -> [String:Double]? {
    if let product = storage[type], let price = product[name] {
        return [name:price]
    }
    return nil
}
findProduct(type: .clothes, productName: "Джинсы")
storage
addGoods(type: .clothes, name: "Джинсы", price: 30)
storage
deleteGoods(type: .food, name: "Джинсыsв")
storage
deleteGoods(type: .clothes, name: "Джинсы")
storage
findProduct(type: .clothes, productName: "Джинсыs")

//5. Реализуйте перечисление `LogLevel`, представляющее уровни логирования (debug, info, warning, error). Напишите функцию, которая принимает уровень логирования и сообщение, и выполняет логирование только если уровень логирования выше определенного порога
enum LogLevel {
    case debug
    case info
    case warning
    case error
    
    var logging: [String] {
        switch self {
            case .debug: return ["debug", "info", "warning", "error"]
            case .info: return ["info", "warning", "error"]
            case .warning: return ["warning", "error"]
            case .error: return ["error"]
        }
    }
}

@MainActor func logging(level: LogLevel, message: String) {
    let currentLoggingLevel = "debug"
    if level.logging.contains(currentLoggingLevel) {
        let addedMessage = "\(level): \(message)"
        logs.append(addedMessage)
    }
}

var logs = [String]()
logs = ["asd"]
logs.append("111")

logging(level: .debug, message: "test")
logs
