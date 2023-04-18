//
//  ContentView.swift
//  prac2
//
//  Created by 李 on 2023/04/18.
//

import SwiftUI

struct ContentView: View {
    //DEFINATION OF INDEX
    @State var tabIndex = 0
    var body: some View {
        TabView(selection: $tabIndex){
            Text("This tabs tag is \(tabIndex).")
                .tabItem{
                    VStack{
                        Image(systemName: "circle.fill")
                        Text("Tab 1")
                    }
                }.tag(0)
            Button("take me to Tab3!"){
                tabIndex = 2
            }
            .tabItem{
                VStack{
                    Image(systemName: "square.fill")
                    Text("Tab 2")
                }
            }.tag(1)
            
            List{
                ForEach(0..<100) { _ in Text("This is tab3!")
                    
                }
            }.tabItem{
                    VStack{
                        Image(systemName: "hands.clap")
                        Text("Tab 3")
                    }
                }.tag(2)
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
