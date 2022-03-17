//
//  ContentView.swift
//  Module4Lesson15Challenge
//
//  Created by Anand Narayan on 2022-03-15.
//

import SwiftUI



struct BookListView: View {
    
    @EnvironmentObject var viewModel: BookViewModel
    
    
    var body: some View {
        
        GeometryReader { geo in
            NavigationView {
                ScrollView {
                    VStack(alignment:.center) {
                        ZStack {
                            ForEach(viewModel.books) { book in
                                Rectangle().frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                                    .foregroundColor(Color.green)
                                    .cornerRadius(35)
                                    .clipped()
                                NavigationLink(destination: BookQuickView()) {
                                    Text(book.title).font(Font.custom("Avenir Roman", size: 16))
                                }
                                
                                
                            }
                        }

                    }.frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                    

                }
            }

        }
        



    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView().environmentObject(BookViewModel())
    }
}
