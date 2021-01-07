//
//  SecondePage.swift
//  cw-12
//
//  Created by mohamad on 1/7/21.
//

import SwiftUI

struct SecondePage: View {
    @ObservedObject var env : Env
    @Environment(\.presentationMode) var presentaion
    var body: some View {
        VStack{
            VStack(alignment: .center, spacing: 40)
            {
                TextField("name" , text : $env.name)
                TextField("age " , text : $env.age)
                TextField("phone" , text : $env.phone)
            }.padding()
            .font(.title)
            .multilineTextAlignment(.trailing)
            Button(action: {
                presentaion.wrappedValue.dismiss()
            }, label: {
                Text("موافق")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue.opacity(0.7))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            })
        }
    }
}

//struct SecondePage_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondePage()
//    }
//}
