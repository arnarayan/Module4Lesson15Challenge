//
//  Book.swift
//  Module4Lesson15Challenge
//
//  Created by Anand Narayan on 2022-03-15.
//

import Foundation


class Book: Identifiable, Decodable {
    var id:Int
    var title: String
    var author: String
    var isFavourite: Bool
    var currentPage: Int
    var rating: Int
    var content: [String]
}
