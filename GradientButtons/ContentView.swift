//
//  ContentView.swift
//  GradientButtons
//
//  Created by Danh Tu on 04/10/2021.
//

import SwiftUI

struct ContentView: View {
    var brandGradient = Gradient(colors: [
        Color(.systemTeal),
        Color(.systemOrange),
        Color(.systemPink),
        Color(.systemPurple)
    ])
    
    var body: some View {
        VStack(spacing: 60) {
            Button(action: {
                print("Linear Gradient Button Tapped.")
            }, label: {
                Text("Linear Gradient")
                    .fontWeight(.heavy)
                    .frame(width: 280, height: 50)
                    .foregroundColor(.white)
                    .background(
                        LinearGradient(
                            gradient: brandGradient,
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .clipShape(Capsule())
            })
            
            Button(action: {
                print("Linear Gradient Button Tapped.")
            }, label: {
                Text("Linear Gradient")
                    .fontWeight(.heavy)
                    .frame(width: 280, height: 50)
                    .foregroundColor(.white)
                    .background(
                        RadialGradient(
                            gradient: brandGradient,
                            center: .center,
                            startRadius: 15,
                            endRadius: 120
                        )
                    )
                    .clipShape(Capsule())
            })
            
            Button(action: {
                print("Linear Gradient Button Tapped.")
            }, label: {
                Text("Linear Gradient")
                    .fontWeight(.heavy)
                    .frame(width: 280, height: 50)
                    .foregroundColor(.white)
                    .overlay(
                        Capsule().stroke(
                            LinearGradient(
                                gradient: brandGradient,
                                startPoint: .leading,
                                endPoint: .trailing
                            ),
                            lineWidth: 4
                        )
                    )
            })
            
            Button(action: {
                print("Radial Gradient Button Tapped.")
            }, label: {
                Text("Radial Gradient")
                    .fontWeight(.heavy)
                    .frame(width: 160, height: 160)
                    .foregroundColor(.white)
                    .background(
                        RadialGradient(
                            gradient: brandGradient,
                            center: .center,
                            startRadius: 15,
                            endRadius: 120
                        )
                    )
                    .clipShape(Circle())
            })
            
            Button(action: {
                print("Angular Gradient Button Tapped.")
            }, label: {
                Text("Angular Gradient")
                    .fontWeight(.heavy)
                    .frame(width: 160, height: 160)
                    .foregroundColor(.white)
                    .background(
                        AngularGradient(
                            gradient: brandGradient,
                            center: .center
                        )
                    )
                    .clipShape(Circle())
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
