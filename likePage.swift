//
//  likePage.swift
//  project
//
//  Created by afnan on 23/06/1443 AH.
//
import SwiftUI

struct likePage: View {
    public var like:[likeData]=likeList.like
            var body: some View {
                NavigationView{
                    ScrollView(.vertical,showsIndicators: false){
                     

               
                    
                    //Order(item:OrderData)
                 
                        VStack{
                            Group{
                                ForEach(like,id:\.self){
                                like in
                                    NavigationLink(destination:Text(like.Image)){likeCell (like: like)}
                                Divider()
                            }
                            }
                            
                        }
                        
                       
                    }
                    .padding()
                    .navigationTitle("Wishlist")
                    
                }
            }
        
            }

         
    
        struct likeCell:View{
            var like:likeData
            var body: some View{
                HStack{
                    
                    Image(like.Image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .padding(.vertical,4)
                        .padding(.horizontal,20)
                    
                    VStack(alignment:.leading,spacing: 4){
                        Text(like.Name)
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))
                        Text(like.Info)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    Image(systemName: "\(like.heart)")

                        .padding()
                        .accentColor(Color(hue: 0.084, saturation: 0.877, brightness: 0.73))
                          
                      
                      
                  }

                            
                        }
              
            }
struct likePage_Previews: PreviewProvider {
    static var previews: some View {
        likePage()
    }
}
