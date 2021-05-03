//
//  ContentView.swift
//  StateSwiftUI
//
//  Created by Osman Esad on 3.05.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sayac = 0
    
    // State özelliği verilen değişken kodlama içerisinde yer aldığı tüm alanlarda otomatik değerini güncelliyor.
    
    var body: some View {
        
        
        VStack{
            Button(action: {self.sayac = self.sayac + 1}, label: {
                Text("Tıkla")
            })
            
            
            Text("Sonuc: \(sayac)") // Burada eski usulde olduğu yerde değil yani Butonun kodları içerisinde yazılmadan değişiklikleri görebiliyoruz.
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
