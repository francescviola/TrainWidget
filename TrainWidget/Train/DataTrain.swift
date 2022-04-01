//
//  DataTrain.swift
//  TrainWidget
//
//  Created by Francesco Viola on 31/03/22.
//

import SwiftUI
import Foundation
//struct MyNewView: View {
//    var body: some View {
//        Text("02")
struct Card : Hashable  {
            var departureTime: String
            var arrivalTime : String
            

        }
    
var departuresAcerraNapoli : [Card] = [Card(departureTime: "9:00", arrivalTime: "9:30"),
                                       Card(departureTime: "9:30", arrivalTime: "10:00"),
                                       Card(departureTime: "9:55", arrivalTime: "10:25"),
                                       Card(departureTime: "10:15", arrivalTime: "10:45")
]











