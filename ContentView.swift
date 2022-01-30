//
//  ContentView.swift
//  event
//
//  Created by Lina on 16/06/1443 AH.
//

import SwiftUI


struct ContentView: View {


    
    
    var body: some View {
     
        
        TabView{
        
            ContenView().tabItem {
                                Label("Browse", systemImage: "square.grid.2x2")
                            }
            
           OrderPage()
                            .tabItem {
                                Label("Orders", systemImage: "list.bullet.rectangle.portrait")
                            }
            
            likePage()
                            .tabItem {
                                Label("Wishlist", systemImage: "heart")
                            }
            
            account()
                            .tabItem {
                                Label("Profile", systemImage: "person")
                            }
        }            .onAppear() {
            UITabBar.appearance().backgroundColor = .systemGray5
        }
        
.accentColor(Color(red: 0.777, green: 0.497, blue: 0.388))
          
        
//
//TabView {
//
//
//    HStack{
//        NavigationLink(destination: profile() ){
//        VStack{
//
//            Image(systemName: "square.grid.2x2").resizable().padding(.top, 0.0).frame(width:25.0, height: 25.0).foregroundColor(Color(red: 0.753, green: 0.753, blue: 0.757))
//            Text("Browse")
//                .font(.caption2).foregroundColor(Color(red: 0.753, green: 0.753, blue: 0.757)).padding(.top, -4.0)
//        }.padding(.top, 3.0)
//        }
//        VStack{
//        Image("paste-2").resizable().frame(width:23.0, height: 25.0)
//            Text("Orders")
//                .font(.caption2).foregroundColor(Color(red: 0.753, green: 0.753, blue: 0.757))
//        }
//        VStack{
//        Image("heart-3").resizable().frame(width:26.0, height: 27.0).foregroundColor(Color.pink)
//            Text("Wishlist")
//                .font(.caption2).foregroundColor(Color(red: 0.753, green: 0.753, blue: 0.757)).padding(.top, -3.0)
//    }
//        VStack{
//        Image( systemName: "person").resizable().foregroundColor(Color(red: 0.777, green: 0.497, blue: 0.388)).frame(width:23.0, height: 23.0)
//            Text("Profile")
//                .font(.caption2).foregroundColor(Color(red: 0.777, green: 0.497, blue: 0.388)).padding(.top, 1.0)
//    }
//
//
//
//}
//    }
    }}


          

    


struct ContentView_Previews: PreviewProvider {
  
    static var previews: some View {
        ContentView()
    }
}


