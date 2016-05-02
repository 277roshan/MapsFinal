//
//  DataHolder.swift
//  MapPractice
//
//  Created by Roshan Thapaliya on 2/25/16.
//  Copyright © 2016 Roshan Thapaliya. All rights reserved.
//

import MapKit
import UIKit

//Class to hold data about food places
class CustomAnnotation: NSObject, MKAnnotation{
    
    
    let title: String?
    let subtitle: String?
    let coordinate: CLLocationCoordinate2D
    let placeId: String
    var photoreference: String
    
    init (coordinate:CLLocationCoordinate2D, title:NSString, subtitle:NSString, placeId:String){
        self.title = title as String
        self.subtitle = subtitle as String
        self.coordinate=coordinate
        self.placeId = placeId
        self.photoreference = ""
        super.init()
        
    }
    
    func set_photo(photo:String){
        self.photoreference = photo
    }
    
}