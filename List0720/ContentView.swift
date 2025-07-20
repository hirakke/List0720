//
//  ContentView.swift
//  List0720
//
//  Created by Keiju Hiramoto on 2025/07/20.
//

import SwiftUI
import SwiftData

struct ContentView: View {
  
    var body: some View {
        NavigationStack{
        List{
            ForEach(Animal.allCases, id:\.self){ animal in
                NavigationLink(destination: DetailView(animal:animal)){
                    HStack{
                        Image(animal.iconName)
                        Text(animal.name)
                    }
                }
            }
            }
        .navigationTitle("動物")
        }
    }

}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
