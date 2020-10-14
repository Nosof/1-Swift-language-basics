import UIKit

// Касса по продпже билетов в кинотеатр
struct Item {
    var price: Int
    var place: Int
    let product: Film
}

// Кинофильм
struct Film {
    let title: String
}

enum BoxOfficeError: Error {
    case notFilm
    case noPlace
    case littleMoney
}
// Касса
class BoxOffice {
    var cashRegister =
        [Item(price: 250, place: 45, product: Film(title: "Довод")),
         Item(price: 60, place: 14, product: Film(title: "Мулан")),
         Item(price: 150, place: 0, product: Film(title: "Вратарь Галактики"))
        ]

    var money = 200
    
    func watchingMovies(title: String) throws -> Film {
        guard let item = cashRegister.first(where: { $0.product.title == title }) else {
            throw BoxOfficeError.notFilm
        }
        if item.place == 0 {
            throw BoxOfficeError.noPlace
        }
        if item.price > money {
            throw BoxOfficeError.littleMoney
        }
        return item.product
    }
}

let boxOffice = BoxOffice()

do {
    _ = try boxOffice.watchingMovies(title: "Мулан")
    print("Пошли смотреть, уже третий звонок")
} catch BoxOfficeError.notFilm {
    print("Такого кинА сегодня не будет")
} catch BoxOfficeError.noPlace {
    print("На этот фильм места закончились")
} catch BoxOfficeError.littleMoney {
    print("Нужно монет дать")
} catch {
    print("Обратитесь к администратору")
}



