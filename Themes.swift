//
//  Themes.swift
//  Ev
//
//  Created by REOF ALMESHARI on 22/06/1443 AH.
//
import SwiftUI

struct Themes: View {
    public var Place:[PlaceData]=PlaceList.Places
            var body: some View {
              

               
                    
                    //Order(item:OrderData)
                 
                        VStack{
                            Group{
                                ForEach(Place,id:\.self){
                                plac in
                                    NavigationLink(destination:Text(plac.Image)){PlaceCell (plac: plac)}
                                Divider()
                            }
                            }
                            
                        }
                        
                       
                    }
                
                 
            }

     

        struct PlaceCell:View{
            var plac:PlaceData
            var body: some View{
                HStack{
                    
                    Image(plac.Image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .padding(.vertical,4)
                        .padding(.horizontal,20)
                    
                    VStack(alignment:.leading,spacing: 4){
                        Text(plac.Name)
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))
                        Text(plac.Info)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    Text("\(plac.Price)")
                    
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))

                          
                          
                      
                      
                  }

                            
                        }
              
            }

struct Themes_Previews: PreviewProvider {
    static var previews: some View {
        Themes()
    }
}
