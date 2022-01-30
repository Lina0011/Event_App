//
//  ALL.swift
//  event
//
//  Created by Lina on 23/06/1443 AH.
//

import SwiftUI

struct ALL: View {
    @State var index = 0
    
    let trends: [Trend] = [
        Trend( name:"Ovvi Restaurant",Image:"x1"),
        
        Trend( name:"50 Fruits", Image:"x2"),

        Trend( name:"Party Setup",Image:"x3"),
        
        Trend(name:"Party Setup",Image:"x4")
    ]
    
    var body: some View {
            
            
       
        
        ScrollView(.vertical, showsIndicators:false){
            VStack(alignment: .leading ,spacing:40){
          
                TabView(selection: $index){
                    NavigationLink(destination: Text("v1"))
                        {
                            ZStack(alignment: .leading){
                
                        Image("v0").resizable().frame(height:176)
                            .cornerRadius(15)
                                .tag(0)
                                VStack{
                                Text("New Themes")
                                    .font(.title)
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color.white) .padding(.leading, 15.0)
                                    .padding(.bottom, 60.0)
                                    ZStack{
                                     
                                    RoundedRectangle(cornerRadius: 10).fill(.white).frame(width: 170.0, height: 50.0)
                                        Text("Book Now")
                                            .foregroundColor(Color.black)
                                       
                                    }.padding(.top, -60.0)
                                }
                                
                            }
                           
                        }
                    NavigationLink(destination: Text("a2"))
                        {
                    
                    Image("v1").resizable().frame(height:176)
                        .cornerRadius(15)
                        .tag(1)
                        }
                    
                    NavigationLink(destination: SwiftUIView3())
                        {
                    Image("v2").resizable().frame(height:176)
                        .cornerRadius(15)
                        .tag(2)
                        }
 
                }.frame(height:176)
                    .padding(.top, -60.0)
                    .tabViewStyle(PageTabViewStyle())
                               
                Text("Popular")
                    .font(.largeTitle)
                    .padding(.bottom, -30.0)
                    .padding(.top, -25.0)
                
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                            
                                NavigationLink(destination: Text("A00"))
                                    {
                                        
                                            ZStack{                  Image("x1").resizable().frame(width: 167.0, height: 259.0).cornerRadius(10)
                                                    Text("Ovvi\nResturaunt")
                                                    .font(.title)
                                                    .fontWeight(.heavy)
                                                    .foregroundColor(Color.white)
                                                    .multilineTextAlignment(.leading)
                                                    .padding(.top,160)
                                                    .frame(alignment: .leading)
                                            
                                            
                                            }
                                            }
                                
                                NavigationLink(destination:Text("x2"))
                                    {
                                        
                                            ZStack{                  Image("x2").resizable().frame(width: 167.0, height: 259.0).cornerRadius(10)
                                                    Text("Ovvi\nResturaunt")
                                                    .font(.title)
                                                    .fontWeight(.heavy)
                                                    .foregroundColor(Color.white)
                                                    .multilineTextAlignment(.leading)
                                                    .padding(.top,160)
                                                    .frame(alignment: .leading)
                                            
                                            
                                            }
                                            }
                                NavigationLink(destination:Text("A03"))
                                    {
                                        
                                            ZStack{                  Image("x1").resizable().frame(width: 167.0, height: 259.0).cornerRadius(10)
                                                    Text("Ovvi\nResturaunt")
                                                    .font(.title)
                                                    .fontWeight(.heavy)
                                                    .foregroundColor(Color.white)
                                                    .multilineTextAlignment(.leading)
                                                    .padding(.top,160)
                                                    .frame(alignment: .leading)
                                            
                                            
                                            }
                                            }
                                
                            }
//                                            List(trend){  Trend in Image(Trend.Image).resizable().frame(width: 167.0, height: 259.0)
//
//                                                Text(Trend.name)
//                                            }              }
                                            }
                   
                     

                       
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                    
                        NavigationLink(destination: Text("A11"))
                            {
                                
                                    ZStack{                  Image("x3").resizable().frame(width: 167.0, height: 259.0).cornerRadius(10)
                                            Text("Ovvi\nResturaunt")
                                            .font(.title)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color.white)
                                            .multilineTextAlignment(.leading)
                                            .padding(.top,160)
                                            .frame(alignment: .leading)
                                    
                                    
                                    }
                                    }
                        
                        NavigationLink(destination: Text("A22"))
                            {
                                
                                    ZStack{                  Image("x4").resizable().frame(width: 167.0, height: 259.0).cornerRadius(10)
                                            Text("Ovvi\nResturaunt")
                                            .font(.title)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color.white)
                                            .multilineTextAlignment(.leading)
                                            .padding(.top,160)
                                            .frame(alignment: .leading)
                                    
                                    
                                    }
                                    }
                        NavigationLink(destination:Text("A33"))
                            {
                                
                                    ZStack{                  Image("x2").resizable().frame(width: 167.0, height: 259.0).cornerRadius(10)
                                            Text("Ovvi\nResturaunt")
                                            .font(.title)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color.white)
                                            .multilineTextAlignment(.leading)
                                            .padding(.top,160)
                                            .frame(alignment: .leading)
                                    
                                    
                                    }
                                    }
                        
                    }
//                                            List(trend){  Trend in Image(Trend.Image).resizable().frame(width: 167.0, height: 259.0)
//
//                                                Text(Trend.name)
//                                            }              }
                                    }
                        
                            
            
        
        }.padding(.top, 80.0).padding(.horizontal)
    
                
        
        
        }
        
    }
}


struct ALL_Previews: PreviewProvider {
    static var previews: some View {
        ALL()
    }
}
struct Trend : Identifiable{
    var id = UUID()
    var name = String()
    var Image = String()
}



