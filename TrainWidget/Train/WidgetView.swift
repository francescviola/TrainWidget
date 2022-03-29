//
//  WidgetView.swift
//  TrainWidget
//
//  Created by Francesco Viola on 29/03/22.
//

import SwiftUI
struct WidgetView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 207,height: 133.0)
            .padding(.leading)
            .foregroundColor(Color.orange)
      
        
    }
}

struct WidgetPreview: PreviewProvider {
    static var previews: some View {
        WidgetView()
            }
    
}

