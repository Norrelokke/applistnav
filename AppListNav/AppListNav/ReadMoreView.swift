//
//  ReadMoreView.swift
//  AppListNav
//
//  Created by Mikaela Nörrelökke on 2023-11-19.
//

import SwiftUI

struct ReadMoreView: View {
    
    var thename = "X"
    
    var body: some View {
        VStack{
            Text("Läs mer om")
                .padding(.all)
            Text(thename)
        }
    
    }
}

#Preview {
    ReadMoreView()
}
