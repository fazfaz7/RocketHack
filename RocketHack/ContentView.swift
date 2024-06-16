//
//  ContentView.swift
//  RocketHack
//
//  Created by Adrian Faz on 15/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack {
                
                TabView {
                    PedidosView()
                        .tabItem {
                            Label("Inicio",systemImage: "house.fill")
                        }
                    
                    PedidosView()
                        .tabItem {
                            Label("Productos",systemImage: "waterbottle.fill")
                            
                        }
                    
                    PedidosView()
                        .tabItem {
                            Label("Pedidos",systemImage: "list.bullet")
                        }
                    
                    PedidosView()
                        .tabItem {
                            Label("Soporte",systemImage:"ellipsis.message.fill")
                        }
                }
            }
        }.ignoresSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
