//
//  CarritoView.swift
//  RocketHack
//
//  Created by Adrian Faz on 15/06/24.
//

import SwiftUI

struct CarritoView: View {
    @State private var selection = "Coca-Cola"
    var body: some View {
        VStack{
            HStack{
                Text("Tu Carrito")
                    .foregroundStyle(.redArca)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.title)
                
                Image(systemName: "cart.fill")
                    .foregroundStyle(.redArca)
                    .font(.title2)
                
                Spacer()
            }.padding(.horizontal)
            
            HStack{
                Text("Fecha de Entrega: ")
                    .fontWeight(.semibold)
                
                Picker("Fecha", selection: $selection) {
                               ForEach(["18/Junio/2024", "19/Junio/2024", "20/Junio/2024", "21/Junio/2024"], id: \.self) {
                                   Text($0)
                               }
                           }
                           .pickerStyle(.menu)
                           .background(RoundedRectangle(cornerRadius: 25).fill(.redArca))
                           .accentColor(.white)

                
                
            }
            
            Spacer()
        }
    }
}

#Preview {
    CarritoView()
}
