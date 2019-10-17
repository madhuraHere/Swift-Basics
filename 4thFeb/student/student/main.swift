
import Foundation
enum student : Error{
    case tooShortLen
}
class checkstudentName {
    func myname (str : String)throws -> String{
        guard str.count > 5 else {
            throw student.tooShortLen
        }
        return "My name is \(str)"
    }
}
var s = checkstudentName()
var res = try? s.myname(str: "ad")
print(res)
