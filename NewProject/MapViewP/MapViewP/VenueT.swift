//
//  VenueT.swift
//  MapViewP
//
//  Created by amiet on 15/10/19.
//  Copyright © 2019 amiet. All rights reserved.
//

//import Foundation
import MapKit
import AddressBook

class VenueT : NSObject, MKAnnotation
{
    let title : String?
    var value : String?
    let coordinate: CLLocationCoordinate2D


    init(title : String?, value : String?, coordinate : CLLocationCoordinate2D?)
    {
        self.title = title
        self.value = value
        self.coordinate = coordinate!
    
        super.init()
    }
    
    var subtitle: String?
    {
        return value
        
    }

}


