//
//  ContentView.swift
//  cw-12
//
//  Created by mohamad on 1/7/21.
//

import SwiftUI

struct ContentView: View {
 
    var body: some View {
        
            Main()
                .environmentObject(Env())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Main: View {
    @EnvironmentObject var env : Env
    var body: some View {
        VStack{
            Text("Welcome to kuwait programes")
                .padding(.bottom, 50)
                .foregroundColor(.blue)
                .font(.title)
            Button(action: {
                env.isMentor.toggle()
            }) {
                Text("Enter your data")
                    .font(.title)
                    .foregroundColor(.white) .padding()
                    .background(Color.blue.opacity(0.7))
            }.sheet(isPresented: $env.isMentor) {
                SecondePage(env: env)
            }
            if env.name != "" {
                HStack{
                    Spacer()
                    VStack(alignment: .trailing, spacing: 10){
                        Text("name : \(env.name)")
                        Text("age : \(env.age)")
                        Text("phone : \(env.phone)")
                    }.font(.title) .padding()
                    
                    
                }
            }
            
            
            
        }
    }
}
