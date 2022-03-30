//
//  WidgetView.swift
//  TrainWidget
//
//  Created by Francesco Viola on 29/03/22.
//

import SwiftUI
let blue1 = Color("20314E")
struct WidgetView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 207,height: 133.0)
                .padding(.leading)
                .foregroundColor(blue1)
            
            HStack{
            Image(systemName: "tram")
                .foregroundColor(Color.white)
//                .position(x:57, y: 34)
                .scaleEffect(1.25)
                
             
                Text("In 8 minutes")
                
            }
                
            HStack(alignment: .center){
//                Spacer()
       
                    
                    
                VStack{
                    Text("8:30 ")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .font(.system(size: 21))
                        .scaledToFit()
                        .padding(3)
                    Text("Casalnuovo")
                        .foregroundColor(Color.white)
                        .scaledToFit()
                }
                VStack{
                    
                    Image(systemName: "arrow.forward")
                        .scaleEffect(1.2)
                        .foregroundColor(Color.white)
                        .frame(width: 3,height: 4)
                        
                }
                    

                

                VStack{
                    Text("10:30")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .font(.system(size: 21))
                        .scaledToFit()
                        .padding(5)
                        .lineSpacing(22)
                    Text("Napoli")
                        .foregroundColor(Color.white)
                        .scaledToFit()
                        
                }
            
            }
        
            VStack{
            HStack(alignment: .bottom){
                Rectangle()
                    .frame(width: 206,height: 5)
                    .position(x: 119, y: 105)
            }
            
                Text("Next in 32 minutes")
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .bold()
                    .padding(.leading,25)
                    
        
            }
            
        }.frame(width: 208,height: 134)

    }
}

struct WidgetPreview: PreviewProvider {
    static var previews: some View {
        WidgetView()
            
    }
}
