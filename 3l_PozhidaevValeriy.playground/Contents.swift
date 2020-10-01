import UIKit

enum EngineState {
    case start, stop
}
enum WindowState {
    case open, close
}
enum Transmission {
    case manual, auto
}


struct SportCar {
    let brand: String
    var yearOfRelease: Int
    var trunkVolumeMax = 200.00
    var trunkVolumeFill: Double
    var engineState: EngineState
    var windowState: WindowState
    let transmission: Transmission
    let color: String
    let mp3: Bool
    var km: Double

    mutating func startEngine() {          // метод старта двигателя
        self.engineState = .start
    }
    mutating func stopEngine() {           // метод остановки двигателя
        self.engineState = .stop
    }
}

func printCarProperties(car: SportCar) {     // функция вывода экземпляров в консоль
    print("Марка: \(car.brand)")
    print("Год выпуска: \(car.yearOfRelease)")
    print("Заполненость багажника: \(car.trunkVolumeFill)")
    if car.engineState == .start {
            print ("Двигатель запущен")
        } else {print("Двигатель остановлен")}
    if car.windowState == .open {
            print ("Окна открыты")
        } else {print("Окна закрыты")}
    if car.transmission == .auto {
            print ("Автомат")
        } else {print("Механика")}
    print("Цвет: \(car.color)")
    print("Поддержка mp3: \(car.mp3 ? "Да" : "Нет")")
    print("Пробег: \(car.km)")
}

struct TrunkCar {
    let brand: String
    let yearOfRelease: Int
    let bodyVolumeMax = 1000.00
    let bodyVolumeFill: Double
    var engineState: EngineState
    var windowState: WindowState
    let transmission: Transmission
    let color: String
    let trailer: Bool
    var km: Double

    init() {                            // инициализация свойств по умолчанию
        brand = "Lada"
        yearOfRelease = 1900
        bodyVolumeFill = 0.00
        engineState = EngineState.stop
        windowState = WindowState.close
        transmission = Transmission.manual
        color = "белый"
        trailer = false
        km = 0.000
    }
    
    func printDistance() {
        print("Автомобиль проехал \(km) км")
    }
}

//var trunkCar3 = TrunkCar(    // Почемуто после открытия скопки не появляется строка с "конструктором" и значениями по умолчанию. Подскажите в чём ошибка?

var trunkCar1 = TrunkCar()
print(trunkCar1)
var trunkCar2 = trunkCar1

trunkCar2.printDistance()
trunkCar2.km = 256.001
trunkCar2.printDistance()





var sportCar1 = SportCar(brand: "Lada", yearOfRelease: 2010, trunkVolumeFill: 0.00, engineState: .start, windowState: .close, transmission: .auto, color: "Белый", mp3: true, km: 10_000.326)


sportCar1.engineState  // start
sportCar1.stopEngine() // запускаем метод остановки двигателя
sportCar1.engineState // stop



printCarProperties(car: sportCar1)







