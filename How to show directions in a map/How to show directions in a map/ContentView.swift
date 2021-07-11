//
//  ContentView.swift
//  How to show directions in a map
//
//  Created by Adityaa Mehra on 11/07/21.
//

import SwiftUI
import MapKit

struct ContentView: View{
    @State var tracking = MapUserTrackingMode.follow
    @StateObject var userRegion = LocationManager()
    var body: some View {
        // MARK:-WAY 1
        /*
         Map(coordinateRegion: $region)
         */
        // MARK:-WAY2
        /*
         Map(coordinateRegion: $userRegion.region, interactionModes: MapInteractionModes.all, showsUserLocation: true, userTrackingMode: $tracking)
         */
        Map(coordinateRegion: $userRegion.region, interactionModes: MapInteractionModes.all, showsUserLocation: true, userTrackingMode: $tracking, annotationItems: MapLocations) { location in
            // MARK:- Map pin
            // MapPin(coordinate: location.coordinate, tint: .orange)
            // MARK:- Map marker
            // MARK:- Downside of marker is that there is no label
            // MapMarker(coordinate: location.coordinate, tint: .orange)
            // MARK: To show the label when the pin or marker is clicked then we have to have Mapannotation which is a custom made map pin
            MapAnnotation(coordinate: location.coordinate) {
                Image(systemName: "mappin.and.ellipse").foregroundColor(.red)
                Text(location.name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
