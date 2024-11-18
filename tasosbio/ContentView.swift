//
//  ContentView.swift
//  tasosbio
//
//  Created by Anastasios Rigatos on 18/11/2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        
            ZStack(){
                Color(UIColor(red: 0.10, green: 0.74, blue: 0.61, alpha: 1.00))
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack{
                    Image("james_bond")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150 , height: 150)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white,lineWidth: 5))
                        
                    
                    Text("Anastasios Rigatos").font(Font.custom("Pacifico-Regular", size: 40)).bold().foregroundColor(.white)
                    Text("iOS Developer")
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                    
                    Divider().background(Color.black).fontWeight(.bold)
                    ZStack{
//                        RoundedRectangle(cornerRadius: 25)
//                            .frame(height: 50) //no need for width, it takes  horizontal available space.
//                            .foregroundColor(.white)
//                            .overlay(Text("Phone Number: 0426350226"))
//                            .padding(10)
                        VStack(spacing:16){
                            
                            UserInfoCard(title: "Phone",value: "0402302301230", image: Image(systemName: "phone"))
                                .padding(.top,20)
                            
                            UserInfoCard(title: "Mail",value: "anastasios.rig@gmail.com", image: Image(systemName: "mail"))
                            
                        }
                    }
                }
            }
        }
    }

#Preview {
    ContentView()
}
