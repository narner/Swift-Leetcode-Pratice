//https://leetcode.com/problems/reformat-date/

/*
 Given a date string in the form Day Month Year, where:

 Day is in the set {"1st", "2nd", "3rd", "4th", ..., "30th", "31st"}.
 Month is in the set {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"}.
 Year is in the range [1900, 2100].
 Convert the date string to the format YYYY-MM-DD, where:

 YYYY denotes the 4 digit year.
 MM denotes the 2 digit month.
 DD denotes the 2 digit day.
  

 Example 1:

 Input: date = "20th Oct 2052"
 Output: "2052-10-20"
 Example 2:

 Input: date = "6th Jun 1933"
 Output: "1933-06-06"
 Example 3:

 Input: date = "26th May 1960"
 Output: "1960-05-26"

 */

class ReformatDate {

    var monthsDict:[String : Int] = [
        
        "Jan" : 01,
        "Feb" : 02,
        "Mar" : 03,
        "Apr" : 04,
        "May" : 05,
        "Jun" : 06,
        "Jul" : 07,
        "Aug" : 08,
        "Sep" : 09,
        "Oct" : 10,
        "Nov" : 11,
        "Dec" : 12
    ]
    
    
    
    func reformatDate(_ date: String) -> String {
        
        let dateArr = date.components(separatedBy:" ")

        let yearStr = dateArr[2]
        var monthStr = dateArr[1]
        var dayStr = dateArr[0]
            
        let formattedMonth: Int = monthsDict[monthStr]!
        monthStr = String(formattedMonth)
        dayStr = dayStr.replacingOccurrences(of: "th", with: "")
        
        let formattedString = yearStr + "-" + monthStr + "-" + dayStr
        return formattedString
        
    }
}
