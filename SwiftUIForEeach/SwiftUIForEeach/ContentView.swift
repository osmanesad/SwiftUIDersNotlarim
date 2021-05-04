//
//  ContentView.swift
//  SwiftUIForEeach
//
//  Created by Osman Esad on 3.05.2021.
//

import SwiftUI

struct ContentView: View {
    
    let colors: [Color] = [.blue, .green, .orange, .pink, .black , .yellow]
    
    var body: some View {
        
        ScrollView{ // Ekranın dışına taşan durumlarda kaydırma işlemi gerçekleşir
            // Yataya hareket için ScrollView(.horizontal) ifadesi kullanılıyor
            
            VStack{
                
                // Döngü ile nesnleri çoğaltmak
                
                ForEach(0...5, id: \.self){ // id: \.self Döngü içerisindeki her bir nesneye otomatik değer vermek için yani indeks vermek için kullanılır
                    
                    Spacer().frame(height: 15)
                    Text("Sonuç:  \($0)").foregroundColor(self.colors[$0])
                    // $0 Değeri döngünün içerisindeki değerleri çağırır
                    
                        .frame(width: 200, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.purple)
                }
                
                Text("Son")
            }
            
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
