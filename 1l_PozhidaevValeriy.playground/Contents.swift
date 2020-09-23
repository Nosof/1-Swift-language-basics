import UIKit

// 1. Решить квадратное уравнение.

//создаём переменные коэффициентов
let a : Double = 5
let b : Double = 9
let c : Double = 3

// вычисляем дискриминант, если отрицательное - решений нет
let d : Double = (b * b) - (4 * a * c)

// если дискриминант = 0 (решенье одно)
let x = (-1 * b) / (2 * a)

// если дискриминант > 0 (решений два)
let x1 = (-b + sqrt(d)) / (2 * a)
let x2 = (-b - sqrt(d)) / (2 * a)


// 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

// катеты прямоугольного треугольника
let legA : Double = 7
let legB : Double = 9

//находим гипотенузу
let legC = sqrt((legA * legA) + (legB * legB))

// находим площадь
let square = (legA * legB) / 2
print(square)

// находим периметр
let perimeter = legA + legB + legC
print(perimeter)

// 3. * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

// присваеваем депозит и процент
let deposit = 3400
let percent = 5

var deposit1 = deposit + (deposit / 100 * percent)
var deposit2 = deposit1 + (deposit1 / 100 * percent)
var deposit3 = deposit2 + (deposit2 / 100 * percent)
var deposit4 = deposit3 + (deposit3 / 100 * percent)
var deposit5 = deposit4 + (deposit4 / 100 * percent)
//вклад через 5 лет
print(deposit5)


// конец


