//
//  ContentView.swift
//  Shared
//
//  Created by Denis Sologub on 27.06.2022.
//

import SwiftUI
import Arkan

struct ContentView: View {
    var body: some View {
        Text(greeting())
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
