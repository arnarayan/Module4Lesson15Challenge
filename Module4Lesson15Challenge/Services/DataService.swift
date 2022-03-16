//
//  DataService.swift
//  Module4Lesson15Challenge
//
//  Created by Anand Narayan on 2022-03-15.
//


import Foundation


class DataService {
    
    static func getLocalData() -> [Book] {
        // Get path to the json file within the app bundle
        
        if let path = Bundle.main.path(forResource: "Data", ofType: "json") {
            let fileUrl = URL(fileURLWithPath: path)
            
            do{
                let data = try Data(contentsOf: fileUrl)
                let decoder = JSONDecoder()
                let response = try decoder.decode([Book].self, from: data)
                
                return response
                
            }
            catch{
                print("could not serialize")
                print(error)
            }
            
        }

        return [Book]()
    }
}
