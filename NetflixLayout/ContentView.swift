//
//  ContentView.swift
//  NetflixLayout
//
//  Created by JUNO on 2022/05/30.
//

import SwiftUI

struct ContentView: View {
    
    let title = ["Netflix Sample App"]
    
    var body: some View {
        NavigationView {
            List(title, id: \.self) {
                let netflixVC = HomeViewControllerRepresentable()
                    .navigationBarHidden(true)
                    .edgesIgnoringSafeArea(.all)
                NavigationLink($0, destination: netflixVC)
            }
            .navigationTitle("Swift to UIKit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
