//
//  Annotation.swift
//  PhotoBrowser
//
//  Created by Bayu Yasaputro on 9/28/15.
//  Copyright © 2015 DyCode. All rights reserved.
//

import UIKit
import MapKit

class Annotation: NSObject, MKAnnotation {

    //si anying cokolate
    //cokolate susu krim, dibekuin
    //ya gitu deh, coklat, coklat, coklat, pake susu krim yang betul
    
    var photo: PhotoAroundLocation
    init(photo: PhotoAroundLocation) {
        self.photo = photo
        super.init()
    }
    
    var coordinate: CLLocationCoordinate2D {
        
        var coordinate = CLLocationCoordinate2D()
        if let latitude = photo.location?.latitude {
            if let longitude = photo.location?.longitude {
                coordinate.latitude = latitude.doubleValue
                coordinate.longitude = longitude.doubleValue
            }
        }
        return coordinate
    }
    
    var title: String? {
        return photo.user?.fullName
    }
    
    var subtitle: String? {
        return photo.location?.name
    }
}
