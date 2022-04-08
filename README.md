# TrainWidget
A widget that makes it easier to be in time with public transportation.It will never make you miss a train
Guide To How to create a static Widget

Widget extension setup
Widgets are created with widget extensions, so select File, New, Target, Widget Extension. The name corresponds to your application, and add "WidgetExtension”.
Finally, make sure that TrainWidgetExtension is selected for running otherwise the widget will not be launched on the simulator.Configuration intent is useful to customize, such as adding a custom SiriKit intent definition to the project.

TimelineEntry--
First, create a  struct that conforms to the TimelineEntry protocol.
getSnapshot method
WidgetKit calls snapshot when the widget appears in transient situations. This may happen when it's displayed in the widget gallery. Apple recommends showing sample data as a placeholder especially if data needs to be fetched from a server.

Timeline method--
The timeline method provides WidgetKit with one or more timeline entries and a reload policy, which tells WidgetKit when to refresh the timeline. This is where the entry is actually created, and the data is loaded.

WidgetEntryView--
The next step is to set up the view to be rendered when the widget is launched. Create a View that conforms to the View protocol.
The struct requires a variable for the Provider.Entry, which will be the TrainEntry type. The view in our case  is configured only for small size. But keep in mind that thanks to function builders is now possible to configure all sizes with switch statements in SwiftUI.

Configuration of the widget (struct WidgetName: Widget)--
Finally, it is time to create a TrainWidget struct that conforms to the Widget protocol. After this , initialize a kind variable that matches the name of the file, or it may crash on launch.

The widget protocol requires a body computed var that returns some WidgetConfiguration. This widget does not require user-configurable properties, we still used the IntentConfiguration type in case we wanna modify it in the future . The IntentConfiguration takes a kind, which is defined in the struct. It also takes a provider, which was previously defined as the Provider struct. Finally, it takes a closure with a TimelineEntry, which is where the Train EntryView should be created with the entry passed in. The supportedFamilies can be set as a modifier on the configuration.

The @main attribute denotes this struct as the entry point to the Widget Extension. When launched, this struct configures the widget and provides it to the system.
There are 3 sizes for widget Small,Medium,Large.A Small widget occupies the space of 4 app icons; medium is twice the size of a small(8 app icons)and the large is twice the medium (16 app icons)

Preview of a Widget--
Previews for widgets works similar to previews for SwiftUI. When using previews with widgets, use the .previewContext to set the size of the widget.


