//
//  MapView.swift
//  Urban-Canvas
//
//  Created by Apprenant 72 on 07/07/2026.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var artworks: [Artwork]
    @State private var isShowModal = false
    @State private var selectedPin: UUID? /* permet de stocker l'id unique de l'element selectionné, il faut autoriser la valeur nil avec le ? car au départ la var est nul */
    
    var selectedArtwork: Artwork? {        /*computed property = variable qui ne stocke pas mais recalcule selectedArtwork a chaque lecture de la var en retournant la valeur la plus recente (en opposition a stored property*/
        artworks.first { $0.id == selectedPin }
    }
    
    var body: some View {
        Map(selection: $selectedPin){
            ForEach(artworks) {artwork in
                Marker(artwork.title, coordinate: artwork.coordinate)
                    .tint(.mainOrange)
                    .tag(artwork.id) //permet de recup l'id du pin selected et de conserver l'id dans selectedPin
            }
        }
        .onChange(of: selectedPin) {
            isShowModal = true
        }
        .sheet(isPresented: $isShowModal) { // PROBLEME=> la navlink est envoyée dans la vue du sheet donc elle ne pourra pas s'afficher en plein ecran, a changer ='(
            if let selectedArtwork = artworks.first(where: { $0.id == selectedPin }) {/* permet de recuperer toutes les infos liées à l'artwork qui possede cet id (car sinon selectedPin ne contient que un int) et de pouvoir utiliser ces valeurs*/
                NavigationStack {
                    Image(selectedArtwork.image)
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity, maxHeight: 200)
                        .clipped()
                        .opacity(0.7)
                    
                    Text(selectedArtwork.description)
                        .toolbar {
                            ToolbarItem(placement: .navigationBarLeading) {
                                Button {
                                    isShowModal = false
                                } label: {
                                    Image(systemName: "x.circle.fill")
                                        .foregroundStyle(.gray.opacity(0.8))
                                }
                            
                            }
                            ToolbarItem(placement: .principal) {
                                Text(selectedArtwork.title)
                            }
                            ToolbarItem(placement: .navigationBarTrailing) {
                                NavigationLink{
                                    ArtworkDetailView(artwork: selectedArtwork)
                                } label: {
                                    Image(systemName: "arrow.right.circle.fill")
                                        .foregroundStyle(.mainOrange)
                                }
                            }
                        }
                        .presentationDetents([.fraction(0.5)])
                }
                .toolbar(.hidden, for: .navigationBar)
            }
        }
       
    }
}

#Preview {
    MapView(artworks: artworks)
}
