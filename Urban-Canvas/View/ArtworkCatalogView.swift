//
//  ArtworkCatalogView.swift
//  Urban-Canvas
//
//  Created by Apprenant 72 on 03/07/2026.
//

import SwiftUI

struct ArtworkCatalogView: View {
    @State private var filteredArtworks = artworks
    @State private var filterValue = "Tous"
    @State private var isShowModal = false
    
    var artworksShow: [Artwork] { /*array de stockage des articles apres .filter, NE SURTOUT PAS UTILISER filteredArtworks sinon on perd les articles a la suite du premier filtre*/
            if filterValue == "Tous" {
                return filteredArtworks
            } else {
                return filteredArtworks.filter { $0.type == filterValue }
            }
        }

    var body: some View {
        NavigationStack {
            List(artworksShow) { artwork in
                NavigationLink {
                    ArtworkDetailView(artwork: artwork)
                } label: {
                    ArtworkRowView(artwork: artwork)
                }
            }
            .navigationTitle("Liste des Street arts")
            .toolbar { /*Attention la toolbar s'applique sur la vue interne de NavigationStack car la Navstack est un simple conteneur qui affiche ce qu'on lui indique a l'interieur d'elle meme*/
//                Picker(placement: .principal) {
//                    
//                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isShowModal = true
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                    }
                    .popover(isPresented: $isShowModal) { //appliquer le popover sur l'élément qui sert d'ancrage pour l'apparition de celui ci
                        FilterView(
                            filteredArtworks: $filteredArtworks,
                            filterValue: $filterValue,
                            isShowModal: $isShowModal
                        )
                        .frame(width: 300) // pas de height sinon cache une partie du filtre
                        .presentationCompactAdaptation(.popover)
                        .presentationBackground(.clear)
                    }
                }
            }
        }
       
    }
}

#Preview {
    ArtworkCatalogView()
}
