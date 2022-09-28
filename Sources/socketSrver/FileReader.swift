//
//  File.swift
//  
//
//  Created by Anuar on 28/9/22.
//
class FileReader{
    
    
    public func loadLevelFromFile(levelName: String) -> [[Int8]]{
        var allWords = [String]()
        var array:[[Int8]] = []
        if let startWordsURL = Bundle.main.url(forResource: levelName, withExtension: ".sok") {
            if let startWords = try? String(contentsOf: startWordsURL) {
                allWords = startWords.components(separatedBy: "\n")
            }
        }
        for i in 0..<allWords.count{
            let elem = allWords[i]
            var arrElem: [Int8] = []
            for j in 0..<elem.count{
                let index = elem.index(elem.startIndex, offsetBy: j)
                if (elem[index] >= "0" && elem[index] <= "4"){
                    let elemIndex: Int = Int(String(elem[index]))!
                    arrElem.append(Int8(elemIndex))
                }
            }
            array.append(arrElem)
        }
        
        if allWords.isEmpty {
            allWords = ["silkworm"]
        }
        
        return array
    }
}
