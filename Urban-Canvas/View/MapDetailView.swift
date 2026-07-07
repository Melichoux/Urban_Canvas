//
//  MapView.swift
//  Urban-Canvas
//
//  Created by Apprenant 72 on 03/07/2026.
//

import SwiftUI
import MapKit


struct MapDetailView: View {
    var artwork: Artwork
    
    // correspond a un state qui est lié a _position
      
      var body: some View {
          Map {
              Annotation(artwork.title, coordinate: artwork.coordinate) {
                  Image(uiImage: UIImage(named: artwork.image) ?? UIImage(named: "placeholder")!)
                      .resizable()
                      .scaledToFill()
                      .frame(width: 48, height: 48)
                      .clipShape(Circle())
                      .overlay(
                          Circle()
                              .stroke(Color.white, lineWidth: 2)
                      )
                      .shadow(radius: 3)
              }
          }
      }
  }

#Preview {
    MapDetailView(artwork: artworks[1])
}
