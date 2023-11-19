//
//  ContentView.swift
//  AppListNav
//
//  Created by Mikaela Nörrelökke on 2023-11-19.
//

import SwiftUI

struct ContentView: View {
    @State var addname = ""
    
    @State var people = ["Arn", "Bernt","Carl"]
    
    @State var letsgo = false
    
    var body: some View {
        
        NavigationStack{
        
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                
                NavigationLink(destination: ReadMoreView(thename: "Bjarne")){
                    Text("Läs mer här")
                }
                
                Text("secondnav")
                    .navigationDestination(isPresented:$letsgo) {
                        Text("Annan vy")
                    }
                
                Button(action: {
                    letsgo = true
                }) {
                    Text("Go")
                }
                HStack {
                    TextField("Skriv namn", text: $addname)
                    
                    Button(action: {
                        people.append(addname)
                        addname = ""
                    }){
                    Text("Lägg till")
                }
                
                }
                
                List(people, id: \.self){ person in
                    NavigationLink(destination: ReadMoreView(thename: person)){
                        PersonRowView(Personname: person)
                    }
                    
                  
                }
            }
            .padding()
        }
        Button(action: {
            people.removeAll()
        }){
            Text("Reset List")
                
        }
        .padding(.all)
    }
 
}

#Preview {
    ContentView()
}
