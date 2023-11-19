//
//  PersonRowView.swift
//  AppListNav
//
//  Created by Mikaela Nörrelökke on 2023-11-19.
//

import SwiftUI

struct PersonRowView: View {
    
    var Personname = "X"
    
    var body: some View {
        
        HStack{
            Text("Namn: ")
            Text(Personname)
        }
       
    }
       
}

#Preview {
    PersonRowView()
}
