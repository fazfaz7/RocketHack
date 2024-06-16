//
//  PedidosView.swift
//  RocketHack
//
//  Created by Adrian Faz on 15/06/24.
//

import SwiftUI

struct PedidosView: View {
    @State private var selection = "Coca-Cola"
    let brands = ["Coca-Cola", "Ciel", "Bokados", "Sigma"]
    var body: some View {
        
        NavigationStack{
            
            VStack{
                HStack(spacing: 30) {
                    Image(systemName: "line.3.horizontal")
                        .foregroundColor(.redArca)
                        .padding(.horizontal,15)
                        .font(.title)
                    
                    
                    Picker("Select a paint color", selection: $selection) {
                        ForEach(brands, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.menu)
                    .background(RoundedRectangle(cornerRadius: 25).fill(.redArca))
                    .accentColor(.white)
                    .padding(.horizontal,15)
                    
                    
                    
                    HStack{
                        
                        Image(systemName: "bell.fill")
                            .foregroundStyle(.redArca)
                            .font(.title)
                        
                        
                        NavigationLink {
                            CarritoView()
                        } label: {
                            Image(systemName: "cart.fill")
                                .foregroundStyle(.redArca)
                                .font(.title)
                        }
                    }
                    .padding(.horizontal,2)
                    
                    
                    
                }
                .padding()
                Spacer()
            }
        }
    }
}

#Preview {
    PedidosView()
}
