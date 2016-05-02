//
//  InfoPage.swift
//  MapPractice
//
//  Created by Roshan Thapaliya on 3/1/16.
//  Copyright © 2016 Roshan Thapaliya. All rights reserved.
//

import UIKit
import MapKit


class DetailViewController: UIViewController{
    
    @IBOutlet weak var coordinateSet: UILabel!
    @IBOutlet weak var subtitleSet: UILabel!
    @IBOutlet weak var titleSet: UILabel!
    @IBOutlet var ImageViewOutlet: UIImageView!
    
    
    //var cafe_titl: MKAnnotation?
    var cafe_title: CustomAnnotation?
    
    
    override func viewDidLoad() {
        print(cafe_title?.placeId)
        titleSet.text = cafe_title!.title!
        subtitleSet.text = cafe_title!.subtitle!
        coordinateSet.text = String(cafe_title!.coordinate.longitude) + "," + String(cafe_title!.coordinate.latitude)
        let image = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=" + cafe_title!.photoreference + "&key=" + GOOGLE_API_KEY
        
        //Getting the image from the URL
        if let url = NSURL(string: image) {
            if let data = NSData(contentsOfURL: url) {
                ImageViewOutlet.image = UIImage(data: data)
            }
        }
        
    }
}
