
import Foundation

func integerConversion (stringToConvert: String) -> (Int?) {

    //Assuming a valid string of a type "11234"
    
    var convertedInt: Int = 0
    var highestPower = stringToConvert.count - 1
    
    for char in stringToConvert {
        let this_pow:Int = Int(pow(10, Double(highestPower)))
        let digit = char.wholeNumberValue
        if digit == nil {
            return nil
        }
        convertedInt += this_pow*digit!
        highestPower -= 1
    }
    
    
    return convertedInt
}

print(integerConversion(stringToConvert: ""))

