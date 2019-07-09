import Foundation

extension String {
    func random(with ofLength: Int) -> String {
        let characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
        var randomString : String = ""
        var i : Int = 0
        while i != ofLength {
            randomString += "\(Array(characters).randomElement()!)"
            i += 1
        }
        return randomString
    }
    func random(with ofLength: Int, characters: String) -> String {
        var randomString : String = ""
        var i : Int = 0
        while i != ofLength {
            randomString += "\(Array(characters).randomElement()!)"
            i += 1
        }
        return randomString
    }
}
