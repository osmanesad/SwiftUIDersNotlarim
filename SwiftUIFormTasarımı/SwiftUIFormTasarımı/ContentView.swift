//
//  ContentView.swift
//  SwiftUIFormTasarımı
//
//  Created by Osman Esad on 5.05.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var lastname = ""
    @State private var date = Date()
    @State private var notifications = false
    @State private var numberOfLikes = 0

    
    var body: some View {
        
        
        NavigationView{
            
            Form {
                Section(header: Text("Kullanıcı bilgileri") ) {
                    
                    
                    TextField("İsim", text: $name)
                    TextField("Soyisim", text: $lastname)
                    DatePicker("Doğum Tarihi", selection: $date, displayedComponents: .date)
                    
                }
                
                Section(header: Text("Bildirimler")){
                    Toggle("E-Posta Bildirimleri Al", isOn: $notifications)
                        .toggleStyle(SwitchToggleStyle(tint: Color("Turkuaz")))
                    Stepper("Değerlendirme Puanı", value: $numberOfLikes, in: 1...10)
                    
                    
                    
                    if numberOfLikes == 1 {
                        Text("Puan:  \(numberOfLikes), İdare eder")
                    } else if numberOfLikes == 5 {
                        Text("Puan:  \(numberOfLikes), İyi")
                    } else if numberOfLikes == 10 {
                        Text("Puan:  \(numberOfLikes), Başarılı")
                    } else {
                        Text("Puan: \(numberOfLikes)")
                    }
                    
                    Link("Daha fazla bilgi...", destination: URL(string: "https://osmanesad.com")!)
                }
                
                }
            
            .navigationTitle("Kayıt")
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button{
                        hideKeyboard()
                    } label : {
                        Image(systemName: "keyboard.chevron.compact.down")
                    }
                    
                    Button("Kaydet", action: saveUser)
                    
                    
                }
            }
            
        }.accentColor(Color("Turkuaz"))
        
    }
    
    func saveUser() {
        print("Kayıt başarılı")
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
