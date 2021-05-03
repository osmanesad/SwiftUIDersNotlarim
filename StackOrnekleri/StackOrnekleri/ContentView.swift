//
//  ContentView.swift
//  StackOrnekleri
//
//  Created by Osman Esad on 3.05.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        

        // MARK:  VStack
        // Dikeyde Hizamala işlemlerinde kullanıyoruz.
        
        VStack(alignment: .trailing){
            
            Text("Hello, world!")
                .padding(.leading,10)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(Color.orange)
            Spacer().frame(height: 10)
            
            
            
            // MARK: GeometryReader
            
            GeometryReader{ geometry in
                
                HStack(spacing: 0){
                    
                    Text("Evet")
                        
                        .frame(width: geometry.size.width / 2, height: geometry.size.height / 13)
                        .background(Color.green)
                    
                    Text("Hayır")
                        
                        .frame(width: geometry.size.width / 2 , height: geometry.size.height / 13)
                        .background(Color.red)
                }
                
                
            }
            
            
            
            // MARK: HStack
            // Yatayda yapılan işlemler
            HStack{
                Text("Yatay stack denemesi!")
                Text("Nesneleri yan yana koyuyoruz.")
            }
            
            Spacer().frame(height: 10) // Boşluk bırakma.
            
            // MARK: ZStack
            // Üst üste işlemler
            ZStack{
                
                Image("photo").zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                
                Image("plus").zIndex(2.0)
                
                // .zIndex(1) ile sıralama değiştirilebilir.
            }
        }
        
        
    
        
        
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
