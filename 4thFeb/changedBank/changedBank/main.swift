import Foundation

enum Transaction:Error {
    case inactiveUseAccount
    case WithdrawalError
}
class Bank {
    var initial = 500
    var my_bal = 1000
    
    var active:Bool = false
    
    func CheckData(withdrawal:Int)throws {
        if !active {
            throw Transaction.inactiveUseAccount
        }
      if my_bal <= initial || withdrawal >= my_bal {
            throw Transaction.WithdrawalError
        }
        else {
        print("Active account")
        print("Withrawal amount is \(withdrawal)")
        print("Total balance is \(my_bal-withdrawal)")
        }

    
}
}
var b1 = Bank()
do{
    try b1.CheckData(withdrawal: 300)
}
catch let m {
    print(m)
}







