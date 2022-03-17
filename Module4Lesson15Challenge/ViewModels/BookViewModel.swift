//
//  BookViewModel.swift
//  Module4Lesson15Challenge
//
//  Created by Anand Narayan on 2022-03-15.
//

import Foundation
import SwiftUI


class BookViewModel : ObservableObject {
    
    
    @Published var books = [Book]()
    
    init() {
        self.books = DataService.getLocalData()
    }
}
