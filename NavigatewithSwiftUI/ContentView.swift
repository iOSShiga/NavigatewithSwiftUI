//
//  ContentView.swift
//  NavigatewithSwiftUI
//
//  Created by shiga on 04/03/20.
//  Copyright © 2020 shiga. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showCategoriesSheet = false
    
    var body: some View {
        NavigationView {
            
            VStack {
                NavigationLink(destination: Text("Categories content view"), isActive: $showCategoriesSheet) {
                    EmptyView()
                }
            
        List {
            NavigationLink(destination: Text("My Row 1 Content")) {
        Text("Hello, World!")
            }
            
            NavigationLink(destination: Text("My Row 2 Content")) {
        Text("Hello, World!")
            }
            NavigationLink(destination: Text("My Row 3 Content")) {
        Text("Hello, World!")
            }
        }
    .navigationBarTitle(Text("Medium"))
        .navigationBarItems(trailing: Button(action: {
            self.showCategoriesSheet = true
        }, label: {
            Text("Categories")
        }))
            /*
            .sheet(isPresented: $showCategoriesSheet) {
                Text("Categories Sheet content")
            } */
    }
            }

        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
