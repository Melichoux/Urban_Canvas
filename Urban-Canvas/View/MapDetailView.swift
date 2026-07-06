//
//  MapView.swift
//  Urban-Canvas
//
//  Created by Apprenant 72 on 03/07/2026.
//

import SwiftUI
import MapKit

//extension CLLocationCoordinate2D{
//  
//}

struct MapDetailView: View {
    var artwork: Artwork
    
    @State private var position: MapCameraPosition
    
    init(artwork: Artwork) {
          self.artwork = artwork
          _position = State(initialValue: .region(
              MKCoordinateRegion(
                  center: artwork.coordinate,
                  span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
              )
          ))
      }
      
      var body: some View {
          Map(position: $position) {
              Annotation(artwork.title, coordinate: artwork.coordinate) {
                  Image(uiImage: UIImage(named: artwork.image) ?? UIImage(named: "placeholder")!)
                      .resizable()
                      .scaledToFill()
                      .frame(width: 44, height: 44)
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
