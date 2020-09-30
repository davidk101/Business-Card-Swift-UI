//
//  ContentView.swift
//  Business Card
//
//  Created by David Kumar 
//  Copyright © 2020 David Kumar. All rights reserved.
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // overlapping child views
        ZStack{
            Color(red: 0.0, green: 0.72, blue: 0.58).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            // ordering child views in a vertical line
            VStack {
                Image("developer").resizable().aspectRatio(contentMode: .fit).frame(width: 300.0, height: 300.0)
                
                Text("David Kumar").font(.custom("", size: 50)).bold().foregroundColor(.white).padding(.bottom)
                
                Text("Software Developer")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                
                // separating vertical content within stack view
                Divider()
                ContactBar(sf_symbol: "phone.fill", text: "+1 (101) 001-1101")
                
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

// customizing information bars
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
