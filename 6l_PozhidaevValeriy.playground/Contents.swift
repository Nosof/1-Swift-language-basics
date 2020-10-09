import UIKit

class Car {
    var speed: Double
    var timeH: Double
    
    func km() -> Double {
        return speed + timeH
    }
    
    init(s: Double, tH: Double) {
        self.speed = s
        self.timeH = tH
    }
}

class Human {
    var time: Double
    
    func km() -> Double {
        return 5.0 * time
    }
    
    init(tH: Double) {
        self.time = tH
    }
}


struct GenericQueue<T> {
    private var something: [T] = []
    
    mutating func push(_ element: T) {
        something.append(element)
    }
    
    mutating func pop() -> T? {
        guard something.count > 0 else { return nil }
        return something.removeFirst()            // вот здесь изюминка
    }
}

var queueCar = GenericQueue<Car>()
var queueHumen = GenericQueue<Human>()


queueCar.push(Car(s: 100, tH: 2))
queueCar.push(Car(s: 2, tH: 3))
queueHumen.push(Human(tH: 5))
queueHumen.push(Human(tH: 7))

queueCar.pop()
queueCar.pop()
queueCar.pop()    // тут нил смотрим
queueHumen.pop()
queueHumen.pop()
queueHumen.pop()


extension GenericQueue {
    
    subscript(something: Int ...) -> Double {  // Доступ к стеку по индексу
        var tH = 0.0
    
        for index in something where index >= 0 && index < self.something.count {
            tH += self.something.tH         //тут не смог адаптировать
        }
        return tH
    }
}

var subscriptQueue = GenericQueue<Car>()
subscriptQueue.push(Car(s: 1, tH: 3))
subscriptQueue.push(Car(s: 2, tH: 2))
subscriptQueue.push(Car(s: 3, tH: 5))
subscriptQueue.push(Car(s: 4, tH: 11))
subscriptQueue[]

subscriptQueue[1]




// Взял эти варианты, так как без сокращений ... тоесть более понятны для меня

// Определяет число НЕ делящееся на 3
let divisibleThree: (Int) -> Bool = { (element: Int) -> Bool in
    return element % 3 != 0
}

// Определяет число делящееся на 3
let notDivisibleThree: (Int) -> Bool = { (element: Int) -> Bool in
    return element % 3 == 0
}

var array = Array(0...20)

func filter(array: [Int], predicate: (Int) -> Bool ) -> [Int] {
    var tmpArray = [Int]()
    for element in array {
        if predicate(element) {
            tmpArray.append(element)
        }
    }
    return tmpArray                     
}

filter(array: array, predicate: divisibleThree)
filter(array: array, predicate: notDivisibleThree)

array.map { $0 + 2 }


