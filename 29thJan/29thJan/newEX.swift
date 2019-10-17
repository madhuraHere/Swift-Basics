

import Foundation
class shape {
    var centerX : Int
    var centerY : Int
    
    init(centerX : Int,centerY : Int) {
        self.centerX = centerX
        self.centerY = centerY
    }
    func displayShape () {
        print("CenterX : \(centerX) CenterY : \(centerY)")
    }
    
}

