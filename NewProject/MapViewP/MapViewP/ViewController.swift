//
//  ViewController.swift
//  MapViewP
//
//  Created by amiet on 15/10/19.
//  Copyright © 2019 amiet. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let initialLocation = CLLocation(latitude: 18.5158, longitude:73.9272)
//  zoomMapOn(location: initialLocation)
        
        let sampleStarBucks = VenueT(title: "HI, How are you", value: "Hello 1024 ok fine ", coordinate: CLLocationCoordinate2D( latitude:18.5158, longitude:73.9272))
        mapView.addAnnotation(sampleStarBucks)
    }
    private let regionRedius : CLLocationDistance = 500
    func zoomMapOn(location: CLLocation)
    {
        let coordinateRigion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRedius * 2.0, longitudinalMeters: regionRedius * 2.0)
        mapView.setRegion(coordinateRigion, animated: true)
    }

}

extension ViewController : MKMapViewDelegate
{
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        <#code#>
    }
    
}
