//
//  ContentView.swift
//  CallBackDemo
//
//  Created by Thongchai Subsaidee on 6/9/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MyContentView(doSomething: self.doSomething)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                
            
            MenuView(doSometing: doSomething)
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
        }
    }
    
    func doSomething() {
        print("Do something")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct MyContentView: View {
    var doSomething: () -> ()
    var body: some View {
        Button(action: {
            self.doSomething()
        }, label: {
            Text("CallBack 1")
        })
    }
}


struct MenuView: View {
    var doSometing: () -> ()
    var body: some View {
        Button(action: {
            self.doSometing()
        }, label: {
            Text("CallBack 2")
        })
    }
}
