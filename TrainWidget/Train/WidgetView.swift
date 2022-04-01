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
            
            VStack{

            HStack{
                Spacer()
                Spacer()
                
            Image(systemName: "tram")
                .scaleEffect(1.25)
                .foregroundColor(Color.white)
             
                Spacer()
                Spacer()
                Spacer()
                
                Text("In 8 minutes")
                    .foregroundColor(Color.white)
                
                Spacer()
            }
                
            HStack(){
       
                Spacer()
                
                VStack{
                    Text("8:30")
                        .fontWeight(.bold)
                        .font(.system(size: 21))
                        .foregroundColor(Color.white)

                    Text("Acerra")
                        .foregroundColor(Color.white)

                }
                Spacer()
                Spacer()
                Image(systemName: "arrow.forward")
                        .scaleEffect(1.2)
                        .frame(width: 3, height: 4)
                        .foregroundColor(Color.white)

                Spacer()
                Spacer()
                
                VStack{
                    Text("10:30")
                        .fontWeight(.bold)
                        .font(.system(size: 21))
                        .foregroundColor(Color.white)

                    Text("Napoli")
                        .foregroundColor(Color.white)

                }
                Spacer()
                
            }
        
                Rectangle()
                    .frame(width: 170, height: 3)
                    .foregroundColor(Color.gray)
            
                Text("Next in 32 minutes")
                    .font(.body)
                    .fontWeight(.semibold)
                    .bold()
                    .foregroundColor(Color.white)
            
            }
            .frame(width: UIScreen.main.bounds.width*0.880, height: UIScreen.main.bounds.height*0.192)
            
            .background((Color(red: 32/255, green: 49/255, blue: 78/255,opacity: 1)))
            }
    
}

struct WidgetPreview: PreviewProvider {
    static var previews: some View {
        WidgetView()
            
    }
}
