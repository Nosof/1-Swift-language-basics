

// 1. Написать функцию, которая определяет, четное число или нет.

func evenNumber(number: Int ) {number % 2 == 0 ? true : false}

    evenNumber(number: 35)

// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func multipleOfThree(number: Int ) {
    if (number % 3 == 0) { print(true)}
    else { print(false)}
}

multipleOfThree(number: 30)

// 3. Создать возрастающий массив из 100 чисел.

var array: [Int] = []
array += 1...100
print("Возрастающий масив из 100 чисел \(array)")

// 2 вариант: Если сделать цыклом.

//var array: [Int] = []
//var i = 1
//
//while i <= 100 {
//    array1.append(i)
//    i += 1
//}

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

print("Массив из нечётных чисел не делящихся на 3")

for element in array where !(element % 2 == 0) && !(element % 3 == 0) {  // не смог вставить Функции
    array.remove(at : (array.firstIndex(of: element)!))  // подглядел в интернете
    print(element, terminator: ", ")
}
       //  этот вариант написал сам :-)  
//for i in array where !(i % 2 == 0) && !(i % 3 == 0) {
//    var newArray:[Int] = []
//    newArray.append(i)
//    print(newArray)
//}

