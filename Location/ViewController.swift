//
//  ViewController.swift
//  Location
//
//  Created by Koko Aung on 2/28/19.
//  Copyright © 2019 Koko Aung. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    // Kalihi Map View
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         //Start Location
        let farringtonHS = CLLocation(latitude: 21.330708, longitude: -157.873342 )
        let regionRadius: CLLocationDistance = 1000.0
        let region = MKCoordinateRegion(center: farringtonHS.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(region, animated:true)
        mapView.delegate = self
        
        //1st loaction
        let first = Place(title: "Bishop Museum",
                            locationName: "Hawaiian Cultural Museum",
                            discipline: "Place",
                            coordinate: CLLocationCoordinate2D(latitude: 21.33284, longitude: -157.870693))
        mapView.addAnnotation(first)

        //2nd loaction
        let second = Place(title: "Farrington High School",
                          locationName: "High School",
                          discipline: "place",
                          coordinate: CLLocationCoordinate2D(latitude: 21.330708, longitude: -157.873342))
        mapView.addAnnotation(second)
        
        //3rd location
        let third = Place(title: "Kapalama Elementray School",
                           locationName: "Elementray School",
                           discipline: "place",
                           coordinate: CLLocationCoordinate2D(latitude: 21.335157, longitude: -157.869674))
        mapView.addAnnotation(third)
        
        //4th location
        let fourth = Place(title: "Kamehameha High School",
                          locationName: "High School",
                          discipline: "place",
                          coordinate: CLLocationCoordinate2D(latitude: 21.340920, longitude: -157.855401))
        mapView.addAnnotation(fourth)
        
        //5th location
        let fifth = Place(title: "Honolulu Ford",
                           locationName: "Car Dealer",
                           discipline: "place",
                           coordinate: CLLocationCoordinate2D(latitude: 21.328580, longitude: -157.870071))
        mapView.addAnnotation(fifth)
        
        //6th location
        let sixth = Place(title: "Kamehameha Shopping Center",
                           locationName: "Shopping Center",
                           discipline: "place",
                           coordinate: CLLocationCoordinate2D(latitude: 21.336343, longitude: -157.868535))
        mapView.addAnnotation(sixth)
        
        //7th location
        let seventh = Place(title: "King David Kalākaua Middle School",
                           locationName: "Middle School",
                           discipline: "place",
                           coordinate: CLLocationCoordinate2D(latitude: 21.328237, longitude: -157.875997))
        mapView.addAnnotation(seventh)
        
        //8th location
        let eighth = Place(title: "Fire Station 06 Kalihi",
                            locationName: "Fire Station",
                            discipline: "place",
                            coordinate: CLLocationCoordinate2D(latitude: 21.331415, longitude: -157.875930))
        mapView.addAnnotation(eighth)
        
        //9th location
        let ninth = Place(title: "Kalihi Kai Elementary School",
                           locationName: "Elementary School",
                           discipline: "place",
                           coordinate: CLLocationCoordinate2D(latitude: 21.326341, longitude: -157.878226))
        mapView.addAnnotation(ninth)
        
        //10th location
        let tenth = Place(title: "Hawaii Kotohira Jinsha - Hawaii Dazaifu Tenmangu",
                          locationName: "Tempal",
                          discipline: "place",
                          coordinate: CLLocationCoordinate2D(latitude: 21.328448, longitude: -157.869297))
        mapView.addAnnotation(tenth)
        
        
    }

}

//Delegate = self
extension ViewController: MKMapViewDelegate {
    
    func mapViewWillStartRenderingMap(_ mapView: MKMapView) {
        print("rendering ...")
        
    }
}
