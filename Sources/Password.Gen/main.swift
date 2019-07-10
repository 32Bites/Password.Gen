import Foundation
import Rainbow

func main() {
    var command : String
    var password : String
    if CommandLine.arguments.count < 2 {
        command = "help"
    } else {
        command = CommandLine.arguments[1]
    }
    
    switch command {
    case "gen":
        // ./Password.Gen gen [length] [customChars]
        switch CommandLine.arguments.count {
        case 3:
            var length = Int(CommandLine.arguments[2])!
            if length > 1024 { // I set a max length because most sites have limits, and if you generate a large enough password, it could overflow something. You can remove this check.
                print("The length is too large. Max is 1024.".lightRed)
                return
            } else if length <= 0 {
                print("The length is too small. Use at least 1.".lightRed)
                return
            }
            password = String.random(with: length)
        case 4:
            var length = Int(CommandLine.arguments[2])!
            if length > 1024 {
                print("The length is too large. Max is 1024.".lightRed)
                return
            } else if length <= 0 {
                print("The length is too small. Use at least 1.".lightRed)
                return
            }
            let characters = CommandLine.arguments[3]
            password = String.random(with: length, characters: characters)
        default:
            password = String.random(with: 16)
        }
    default:
        print("Usage: \(CommandLine.arguments[0]) gen [length] [customChars]".lightYellow + "   This is positional.".bold.blink.green)
        return
    }
    
    print("Generated password: ".lightYellow + password.lightGreen)
}

// Start the program
main()
