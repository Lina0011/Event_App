//
//  themsePage.swift
//  project
//
//  Created by afnan on 23/06/1443 AH.
//
import SwiftUI

struct themsePage: View {
    public var themse:[themseData]=themseList.themse
    @State var selected = 0
            var body: some View {
                
                ScrollView(showsIndicators: false){
                        VStack{
                            Group{
                                ForEach(themse,id:\.self){
                                    themse in
                                    NavigationLink(destination:Text(themse.Image)){themseCell (themse: themse)}
                                Divider()
                            }
                            }
                            
                        }
                }
                       
                    }
                  
                 
                }
            

     
    
    struct themseCell:View{
        var themse:themseData
        var body: some View{
            HStack{
                
                Image(themse.Image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(.vertical,4)
                    .padding(.horizontal,20)
                VStack(alignment:.leading,spacing: 4){
                    Text(themse.Name)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))
                    Text(themse.Info)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Text("\(themse.Price)")
                
                    .fontWeight(.medium)
                    .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))
                  .padding(.all)
                      
                  
              }


                    }
            

    }
    
struct themsePage_Previews: PreviewProvider {
    static var previews: some View {
        themsePage()
        
    }
}
