//
//  Place.swift
//  Location
//
//  Created by Koko Aung on 3/7/19.
//  Copyright © 2019 Koko Aung. All rights reserved.
//
import MapKit

class Place: NSObject, MKAnnotation {
    let title: String?
    let locationName: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return locationName
    }
}

