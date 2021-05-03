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
        
        VStack{
            
            Text("Hello, world!")
                .padding()
            Text("Merhaba Dünya!")
                .padding()
            
            
            // MARK: HStack
            // Yatayda yapılan işlemler
            HStack{
                Text("Yatay stack denemesi!")
                Text("Nesneleri yan yana koyuyoruz.")
            }
            
            // MARK: ZStack
            // Üst üste işlemler
            ZStack{
                Image("firebase") // 1. Sıra
                Image("plus") // 2. Sıra Yani 1'in üstüne gelen sıra
                
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
