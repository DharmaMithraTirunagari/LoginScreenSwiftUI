//
//  ContentView.swift
//  SwiftUIDay1
//
//  Created by Srikanth Kyatham on 12/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Let's Get Started!")
                .font(.largeTitle.bold())
            Text("Create an account to Q Allure to get all features")
                .font(.subheadline)
                .foregroundStyle(.gray)
            VStack(spacing: 15){
                TextFieldView(icon : "person.fill", placeholder: "Name")
                TextFieldView(icon : "envelope.fill", placeholder: "Email")
                TextFieldView(icon : "phone.fill", placeholder: "Phone")
                TextFieldView(icon : "lock.fill", placeholder: "Password")
                TextFieldView(icon : "lock.fill", placeholder: "Confirm Password")
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 20)
            .padding(.top, 20)
            ZStack{
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 200, height: 50)
                Text("Create Account")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
            .padding()
            HStack{
                Text("Already have an account?")
                Text("Login Here")
                    .foregroundStyle(.blue)
                    .fontWeight(.bold)
            }
            .padding()
        }
        .padding()
        
    }
}

struct TextFieldView: View {
    var icon : String
    var placeholder : String
    
    var body: some View {
        HStack(){
            Image(systemName: icon)
                .foregroundStyle(.blue)
                .frame(width: 30, height: 30)
            Text(placeholder)
                .padding()
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, maxHeight: 40, alignment: .leading)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray)
                )
        }
    }
}

#Preview {
    ContentView()
}
