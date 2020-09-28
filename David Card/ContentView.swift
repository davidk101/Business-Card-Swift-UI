//
//  ContentView.swift
//  Business Card
//
//  Created by David Kumar 
//  Copyright © 2020 David Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.0, green: 0.72, blue: 0.58).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                
                // image name from assets folder
                Image("developer").resizable().aspectRatio(contentMode: .fit).frame(width: 300.0, height: 300.0)
                
                Text("David Kumar").font(.custom("", size: 50)).bold().foregroundColor(.white).padding(.bottom)
                
                Text("Software Developer")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                Divider()
                // no width inputed by default covers the width of screen
                ContactBar(sf_symbol: "phone.fill", text: "+1 (281) 203-4128")
                
                ContactBar(sf_symbol: "envelope.fill", text: "david.dn.kumar@gmail.com")
                
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContactBar: View {
    
    let sf_symbol: String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25).frame(height: 50.0).foregroundColor(.white)
            .overlay(HStack {
                
                Image(systemName: sf_symbol).foregroundColor(.orange)
                
                Text(text)
            }).padding(.all)
    }
}
