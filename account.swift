//
//  account.swift
//  event
//
//  Created by Lina on 24/06/1443 AH.
//

import SwiftUI

struct account: View {
    @State var alertt = false
    @State private var showingAlert = false
//    init(){
//           UITableView.appearance().backgroundColor = .clear
//       }
    let myBackgroundColor = (Color(red: 0.949, green: 0.949, blue: 0.975))
    var body: some View {
    
               
                
                NavigationView{
                    ZStack{
                        myBackgroundColor.ignoresSafeArea()
                        
                        
                        VStack{
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 10).fill(.white) .frame(maxWidth: 350,maxHeight: 100)
                                
                                
                                HStack{
                                    Image(systemName: "person").resizable().frame(width: 50.0, height: 50.0).symbolVariant(.circle).padding(.leading, 36.0)
                                    
                                    VStack{
                                        Text("Aziza Al.").font(.title2).foregroundColor(Color(red: 0.14901960784313725, green: 0.41568627450980394, blue: 0.30196078431372547)).padding(.bottom, 5.0).frame(maxWidth: .infinity , alignment: .leading)
                                        
                                        Text("96628190033").font(.caption).frame(maxWidth: .infinity , alignment: .leading)
                                    }.padding(.leading)
                                    Spacer()
                                    
                                    Button(action:{showingAlert = true},label:{Image(systemName: "bell").resizable().foregroundColor(Color(hue: 1.0, saturation: 0.024, brightness: 0.602, opacity: 0.853)).frame(width: 30.0, height: 30.0).symbolVariant(.circle .fill).padding(.trailing, 36.0)})}.alert("Reminder!", isPresented: $showingAlert) {
                                        RoundedRectangle(cornerRadius: /*@PLACEHOLDER=Corner Radius@*/10.0)
                                        
                                        Button("Dismis") { }
                                        Button("Confirm") { }
                                        
                                        
                                    }}
                            
                            
                            List {
                                
                                NavigationLink(destination: Text("Destination")) {
                                    Image(systemName: "character.bubble")
                                    Text("Languages")
                                }
                                NavigationLink(destination: Text("Destination")) {
                                    Image(systemName: "gear")
                                    Text("Account Settings")
                                    
                                    
                                }
                                .foregroundColor(.black)
                                NavigationLink(destination: Text("Destination")) {
                                    Image(systemName: "star")
                                    Text("Rete us")
                                }.foregroundColor(.black)
                                NavigationLink(destination: Text("Destination")) {
                                    Image(systemName: "arrow.up.circle")
                                    Text("New Version")
                                }
                                NavigationLink(destination: Text("Destination")) {
                                    Image(systemName: "questionmark.circle")
                                    Text("Help")
                                }
                                
                                
                                
                            }
                            //                ZStack {
                            //                    Button("Logout") {
                            //
                            //                    }.foregroundColor(Color(red: 0.1411764705882353, green: 0.19215686274509805, blue: 0.1411764705882353))
                            //                } .listRowBackground(Color(red: 0.777, green: 0.497, blue: 0.388)).foregroundColor(Color(red: 0.1411764705882353, green: 0.19215686274509805, blue: 0.1411764705882353))
                            
                            ZStack{
                                
                                
                                RoundedRectangle(cornerRadius: 15).fill(Color(red: 0.777, green: 0.497, blue: 0.388))
                                    .frame(width: 330.0, height: 40.0)
                                Button("Logout") {
                                    
                                }.foregroundColor(Color(red: 0.1411764705882353, green: 0.19215686274509805, blue: 0.1411764705882353))
                            }
                            .padding(.bottom, 120)
                            
                            
                            
                        }.navigationTitle("Account")
                        
                    }
                    
                }
                
                   
                }
            }


struct account_Previews: PreviewProvider {
    static var previews: some View {
        account()
    }
}
