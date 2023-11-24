
import Foundation

func solution(_ angle:Int) -> Int {
    
    var answer:Int
    
    switch angle {
    case 0..<90:
        answer = 1
    case 90:
        answer = 2
    case 90..<180:
        answer = 3
    case 180:
        answer = 4
    default: -1
        
    }
    
    return
    
}
