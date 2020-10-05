import UIKit

enum Gender {
    case male, female
}

struct BirthDay {
    var day: Int
    var mounth : Int
    var year : Int
}

class User {
    var name: String = ""
    var gender: Gender
    var birthDay: BirthDay
    
    static var userCount = 0
    
    init(name: String, gender: Gender, birthDay: BirthDay) {
        self.name = name
        self.gender = gender
        self.birthDay = birthDay
        
        User.userCount += 1
    }
    
    deinit {
        User.userCount -= 1
    }
    
    static func countInfo() {
        print("Заведенно \(self.userCount) пользователей.")
    }
    
    func howOldAreYou() {
        let age = 2018 - birthDay.year
        print("\(name): \(age) лет")
    }
    
    func printInfo() {
        print("Информация о \(name): пол: \(gender), День рождения: \(birthDay.day).\(birthDay.mounth).\(birthDay.year)")
        print(howOldAreYou())
    }
    
}

class ProfileAboutMe: User {
    var hobbie : String
    var myFavoriteBook : String
    var myFavoriteFilm : String
    var myFavoriteMusic : String
    var myFavoriteFood: String

    init(name: String, gender: Gender, birthDay: BirthDay, hobbie: String, myFavoriteBook: String, myFavoriteFilm: String, myFavoriteMusic: String, myFavoriteFood: String) {
        self.hobbie = hobbie
        self.myFavoriteBook = myFavoriteBook
        self.myFavoriteFilm = myFavoriteFilm
        self.myFavoriteMusic = myFavoriteMusic
        self.myFavoriteFood = myFavoriteFood
        
        super.init(name: name, gender: gender, birthDay: birthDay)
    }
    
    override func printInfo() {
        super.printInfo()
        print("А вот информация о вещах \(name): Хобби: \(hobbie), Любимая книга: \(myFavoriteBook), Любимый фильм: \(myFavoriteFilm), Любимая музыка: \(myFavoriteMusic), Любимая еда: \(myFavoriteFood)")
    }
    
}

class ProfileForJobSearching : User {
    var education : String
    var speciality : String
    var experience : String
    
    init(name: String, gender: Gender, birthDay: BirthDay, education: String, speciality: String, experience: String) {
        self.education = education
        self.speciality = speciality
        self.experience = experience
        
        super.init(name: name, gender: gender, birthDay: birthDay)
    }
    
    func addExperience(newExperience: String) {
        self.experience = experience + "," + newExperience
    }
    
    override func printInfo() {
        super.printInfo()
        print ("\(name) образование: \(education), специальность: \(speciality), опыт работы: \(experience)")
    }
}

var user1 = ProfileForJobSearching(name: "Наталья", gender: .female, birthDay: .init(day: 1, mounth: 5, year: 1989), education: "высшее", speciality: "Повар", experience: "Готовка первых блюд")
user1.printInfo()
user1.addExperience(newExperience: "Столовая №10 (2010-2015)")
user1.printInfo()

var user2 = ProfileAboutMe(name: "Алекскей", gender: .male, birthDay: .init(day: 5, mounth: 1, year: 1998), hobbie: "Собирает мишек", myFavoriteBook: "'Три мушкетёра' А. Дюма", myFavoriteFilm: "Операция Ы", myFavoriteMusic: "Квин", myFavoriteFood: "пельмени")
user2.printInfo()

print(User.countInfo())
