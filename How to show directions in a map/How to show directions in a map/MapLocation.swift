//
//  MapLocation.swift
//  How to show directions in a map
//
//  Created by Adityaa Mehra on 11/07/21.
//
import UIKit
import CoreLocation

struct MapLocation: Identifiable {
    let id = UUID()
    let name:String
    let latitude:Double
    let longitude:Double
    var coordinate:CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
let MapLocations = [
    MapLocation(name: "St Francis Memorial Hospital", latitude: 37.789467, longitude: -122.416772),
    MapLocation(name: "The Ritz-Carlton, San Fransisco", latitude: 37.791965, longitude: -122.406903),
    MapLocation(name: "Honey Honey Cafe & Crepery", latitude: 37.787891, longitude: -122.411223)
]
