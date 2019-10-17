
import Foundation
enum Transaction:Error {
    case inactiveUseAccount
    case WithdrawalError
}
class Bank {
    var initial = 500
    var my_bal = 1000
    var withdrawal = 300
    var user :Bool = true
    func CheckData()throws {
        if user == false {
            throw Transaction.inactiveUseAccount
        }
        else {
            print("Your Account is Active ")
        }
    }
    func WithdrawalBal ()throws {
        if my_bal <= initial || withdrawal > my_bal {
            throw Transaction.WithdrawalError
        }
        else {
            print("Total balance is \(my_bal-withdrawal)")
        }
    }
    
}


var B1 = Bank()

do{
  try B1.CheckData()
}
catch let c {
    print(c)
}




