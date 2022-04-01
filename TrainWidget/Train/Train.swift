//
//  Train.swift
//  Train
//
//  Created by Francesco Viola on 29/03/22.
//

import WidgetKit
import SwiftUI
import Intents
let blue1 = Color("20314E")

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent())
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
}

struct TrainEntryView : View {
    var entry: Provider.Entry
    let blue1 = Color("20314E")
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
            .frame(width: 170, height: 170)
            .background((Color(red: 32/255, green: 49/255, blue: 78/255,opacity: 1)))
            }
    }


@main
struct Train: Widget {
    let kind: String = "Train"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            TrainEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct Train_Previews: PreviewProvider {
    static var previews: some View {
        TrainEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
