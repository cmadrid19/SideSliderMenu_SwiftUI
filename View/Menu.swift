//
//  Menu.swift
//  SideSliderMenu
//
//  Created by Maxim Macari on 5/4/21.
//

import SwiftUI

struct Menu: View {
    
    @Binding var show: Bool
    
    var body: some View {
        VStack{
            HStack(){
                VStack(alignment: .leading, spacing: 25){
                    HStack{
                        Button(action: {}, label: {
                            Image(systemName: "person")
                                .resizable()
                                .frame(width: 70, height: 70)
                        })
                        
                        Spacer()
                        
                        Button(action: {
                            withAnimation{
                                self.show.toggle()
                            }
                        }, label: {
                            Image(systemName: "chevron.left")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                        })
                    }
                    .padding(.horizontal)
                    
                    VStack{
                        Text("Username")
                            .font(.title2)
                            .bold()
                        
                        Text("@Username")
                            .padding(.bottom, 10)
                    }
                    
                    HStack{
                        HStack{
                            Text("100")
                                .bold()
                            Text("Followers")
                                
                        }
  
                        HStack{
                            Text("100")
                                .bold()
                            Text("Following")
                        }
                    }
                    .font(.caption)
                    
                    MenuItem(systemName: "person", title: "Profile")
                    MenuItem(systemName: "list.dash", title: "Lists")
                    MenuItem(systemName: "text.bubble", title: "Topics")
                    MenuItem(systemName: "book", title: "Bookmarks")
                    MenuItem(systemName: "doc.text.below.ecg", title: "Moments")
                    
                    Divider()
                }
                .padding(.horizontal)
            }
            .padding(.top)
            .padding(.bottom, 25)
            
            VStack(alignment: .leading, spacing: 25, content: {
                Text("Settings and privicy")
                    .font(.title2)
                    .padding(.bottom, 30)
                
                Text("Help center")
                    .font(.title2)
                    .padding(.bottom, 25)
            })
            .padding(.trailing, 35)
            
            Spacer()
            
        }
        .padding(.horizontal)
        .frame(width: UIScreen.main.bounds.width / 1.4)
        .background(Color.white.edgesIgnoringSafeArea(.all))
        .overlay(
            Rectangle()
                .stroke(Color.gray.opacity(0.08), lineWidth: 1)
                .shadow(radius: 1)
                .ignoresSafeArea(edges: .all)
        )
        
    }
    
    
    struct MenuItem: View {
        
        var systemName: String = ""
        var title: String = ""
        
        var body: some View{
            HStack{
                Image(systemName: systemName)
                    .font(.title)
                    .padding(.trailing, 10)
                    .frame(width: 45, height: 35, alignment: .center)
                
                Text(title)
                    .font(.title2)
            }
        }
    }
    
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu(show: .constant(false))
    }
}
