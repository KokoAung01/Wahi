//
//  WaipahuVCViewController.swift
//  Location
//
//  Created by Koko Aung on 4/4/19.
//  Copyright © 2019 Koko Aung. All rights reserved.
//

import UIKit
import MapKit

class WaipahuVCViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Start Location
        let hawaiiPlantationVillage = CLLocation(latitude: 21.385558, longitude: -158.0228377 )
        let regionRadius: CLLocationDistance = 1000.0
        let region = MKCoordinateRegion(center: hawaiiPlantationVillage.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(region, animated:true)
        mapView.delegate = self
        
        //1st loaction
        let first = Place(title: "Waipahu District Park",
                          locationName: "Public Park",
                          discipline: "Place",
                          coordinate: CLLocationCoordinate2D(latitude: 21.386994, longitude: -157.999985))
        mapView.addAnnotation(first)
        
        //2nd loaction
        let second = Place(title: "Hawaii's Plantation Village",
                           locationName: "Plantation",
                           discipline: "place",
                           coordinate: CLLocationCoordinate2D(latitude: 21.385398, longitude: -158.011890))
        mapView.addAnnotation(second)
        
        //3rd location
        let third = Place(title: "Waipio Peninsula Soccer Park",
                          locationName: "Soccer Park",
                          discipline: "place",
                          coordinate: CLLocationCoordinate2D(latitude: 21.373073, longitude: -157.996146))
        mapView.addAnnotation(third)
        
        //4th location
        let fourth = Place(title: "Pearl Harbor National Wildlife Refuge",
                           locationName: "Wildlife Park",
                           discipline: "place",
                           coordinate: CLLocationCoordinate2D(latitude: 21.386770, longitude: -157.982849))
        mapView.addAnnotation(fourth)
        
        //5th location
        let fifth = Place(title: "Waikele Community Park",
                          locationName: "Community Park",
                          discipline: "place",
                          coordinate: CLLocationCoordinate2D(latitude: 21.401200, longitude: -158.003614))
        mapView.addAnnotation(fifth)
        
        //6th location
        let sixth = Place(title: "Pouhala Marsh Wildlife Sanctuary",
                          locationName: "Sanctuary",
                          discipline: "place",
                          coordinate: CLLocationCoordinate2D(latitude: 21.374895, longitude: -158.010052))
        mapView.addAnnotation(sixth)
        
        //7th location
        let seventh = Place(title: "Waipahu Soto Zen Temple Taiyoji",
                            locationName: "Temple",
                            discipline: "place",
                            coordinate: CLLocationCoordinate2D(latitude: 21.384746, longitude: -158.017284))
        mapView.addAnnotation(seventh)
        
        //8th location
        let eighth = Place(title: "Honouliuli National Historic Site",
                           locationName: "Historical Site",
                           discipline: "place",
                           coordinate: CLLocationCoordinate2D(latitude: 21.391687, longitude: -158.059701))
        mapView.addAnnotation(eighth)
        
        //9th location
        let ninth = Place(title: "Kapapapuhi Point Park",
                          locationName: "Park",
                          discipline: "place",
                          coordinate: CLLocationCoordinate2D(latitude: 21.366259, longitude: -158.020580))
        mapView.addAnnotation(ninth)
        
        //10th location
        let tenth = Place(title: "West Loch",
                          locationName: "Historic Place",
                          discipline: "place",
                          coordinate: CLLocationCoordinate2D(latitude: 21.339686, longitude: -157.999918))
        mapView.addAnnotation(tenth)
        
        
    }
    
}

//Delegate = self
extension WaipahuVCViewController: MKMapViewDelegate {
    
    func mapViewWillStartRenderingMap(_ mapView: MKMapView) {
        print("rendering ...")
        
    }
}
