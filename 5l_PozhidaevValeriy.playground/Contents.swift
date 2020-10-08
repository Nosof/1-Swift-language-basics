import UIKit


protocol FullNameProtocol {
    var fullName: String {get}
}

extension FullNameProtocol {
    var release: Int {return self as! Int}
}

class Doctor: FullNameProtocol {
    var name : String
    var profession : String
    
    var release: Int
    
    init(name: String, profession: String, release: Int) {
        self.name = name
        self.profession = profession
        self.release = release
    }
    
    var fullName: String {
        return name + ", " + profession
    }
}

let whoIsExpert = Doctor(name: "Катерина", profession: "Стомотолог", release: 2002)

extension Doctor: CustomStringConvertible {
    var description : String {
        return "Я и моя профессия: \(fullName), окончание ВУЗа в: \(release)"
    }
}

print(whoIsExpert.description)


class SportMan: FullNameProtocol {
    var surname : String
    var sport : String
    
    var release: Int
    
    init(surname: String, sport: String, release: Int) {
        self.surname = surname
        self.sport = sport
        self.release = release
    }
    
    var fullName: String {
        return surname + ", " + sport
    }
}

let whoIsSportMan = SportMan(surname: "Александр", sport: "Футбол", release: 1980)

extension SportMan: CustomStringConvertible {
    var description : String {
        return "Я и мой вид спорта: \(fullName), в \(release) году мне купили мячик"
    }
}

print(whoIsSportMan.description)

