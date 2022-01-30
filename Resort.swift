//
//  WeadingBook.swift
//  EventApp
//
//  Created by Arwa on 20/06/1443 AH.
//
import SwiftUI

struct Resort: View {
    @State private var  isShareSheetShowing = false
    @State private var isLiked = false
   
    var body: some View {
      
        NavigationView{
        
        ZStack(){
            Image( "Image-44")
                .resizable()
                .frame(width: 600.0, height: 900.0)
                .padding(.bottom, 690)
                .padding(.trailing, 120)
            
                .ignoresSafeArea()
            ZStack(){
                Image("Image")
                    .padding(.top, 380)
                Text("Overview")
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.141))
                    .padding(.horizontal, -190)
                    .padding(.vertical, -81)
                
                Text("""
                     
More Details When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.
More Details When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.
                     
"""
                )
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 115)
                    .padding(.horizontal, 173)
                
                HStack{
                    Button(action: {}) {
                           
                        Image("Image-41")
                            .resizable()
                            .cornerRadius(10)
                            .frame(width: 85.0, height: 85.0)
                        
                    }// Image 1 button
                    Button(action: {}) {
                   
                        Image("Image-42")
                            .resizable()
                            .scaledToFill()
                           
                           // .cornerRadius(10)
                            .frame(width: 85.0, height: 85.0)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                        
                        }// Image 2 button
                    Button(action: {})
                    {
                        
                        Image("Image-43")
                            .resizable()
                            .cornerRadius(10)
                                    .frame(width: 85.0, height: 85.0)
                            }// Image 3 button
                   
                    Button(action: {}) {
                          Image("Image-45")
                            .resizable()
                            .scaledToFill()
                           
                           // .cornerRadius(10)
                            .frame(width: 85.0, height: 85.0)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }// Image 4 button
                    
                }
                .frame(width: 414.0, height: 634.0)
                .padding(.top, 300)
                // details pics.
                
                HStack(spacing: 32.0){
                    
                    NavigationLink {
                        Text("Contact Viwe")
                    } label: {
                        VStack{
                            
                            Image("Image-1")
                                .padding(.top, 37)
                            Text("Contact")
                        }
                        .foregroundColor(Color(red: 0.161, green: 0.425, blue: 0.314)).padding(.bottom, 85)
                        
                        
                    }//contact button.
                    
                    
                    VStack{
                       
                        
                        Image("Image-2")
                            .padding(.top, 37)
                        Text("2-5")
                          
                    } .foregroundColor(Color(red: 0.161, green: 0.425, blue: 0.314)).padding(.bottom, 85)
                    //group size info.
                    
                    Button(action: shareButton) {
                    
                    VStack{
                        
                        Image("Image-3")
                        Text("Share")
                        .foregroundColor(Color(red: 0.161, green: 0.425, blue: 0.314))
                        }.padding(.top, 37)
                            .padding(.bottom, 85)
                       
                    }//Share Icon.
                    Button(action: {}){
                        VStack{
                            Image("Image-4")
                                .padding(.top, 37)
                            Link(destination: URL(string: "https://www.apple.com/maps/")!) {
                                Text("Go to Maps")
                                .foregroundColor(Color(red: 0.161, green: 0.425, blue: 0.314)).padding(.bottom, 85)
                            
                           
                            }
                    
                    }
                   
                    }//Go to Maps Link.
                    
                }.padding(.top, 520)
                // contact details.
                VStack{
                NavigationLink {
                    Text("Book now Viwe")
                } label: {
                    ZStack{
                        Image("Image-5")
                           
                        Text("Book now")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.021, green: 0.168, blue: 0.082))
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 12)
                    }
                    
                }
                    
                }
                .padding(.top, 670)
                .padding(.trailing, 70.0)

                
                //Book now button.
                
                VStack(){
                    HeartButton4(isLiked: $isLiked)
                }
                .padding(.top, 662)
                .padding(.leading, 300.0)
                
                }
 //               .padding(.top, 667)
//                 .padding(.leading, 300.0)
                //Like button.
                
                
            }// white pic.
        }
        }
    func shareButton(){
        isShareSheetShowing.toggle()
        let url = URL(string: "http://apple.com")
        let av = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
    }
        
    }
    


struct HeartButton4: View
{
    @Binding var isLiked: Bool
    var body: some View {
        VStack(){
        Button(action: {
            self.isLiked.toggle()
        }) {
            Image(isLiked ? "Outline2" : "Image-6")
//                .padding(.top, 667)
//                 .padding(.leading, 300.0)
                
        }
        }
        //Like button.
    }
    
}



struct Resort_Previews: PreviewProvider {
    static var previews: some View {
        Resort()
    }
}
