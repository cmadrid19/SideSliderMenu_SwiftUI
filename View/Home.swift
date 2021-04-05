//
//  Home.swift
//  SideSliderMenu
//
//  Created by Maxim Macari on 5/4/21.
//

import SwiftUI

struct Home: View {
    
    @State var showMenu: Bool = false
    
    var body: some View {
        
        ZStack {
            GeometryReader{ geo in
                VStack{
                    ZStack{
                        HStack{
                            Button(action: {
                                withAnimation{
                                    showMenu.toggle()
                                }
                            }, label: {
                                Image(systemName: "list.dash")
                                    .font(.title)
                                    .padding(.trailing, 30)
                                
                            })
                            
                            Spacer()
                            
                            Text("Home")
                        }
                        .padding()
                        .overlay(Rectangle().stroke().ignoresSafeArea(.all))
                        
                        Spacer()
                    }
                }
                HStack{
                    Menu(show: $showMenu)
                        
                        .offset(x: showMenu ? 0 : -UIScreen.main.bounds.width / 1.4)
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
