//
//  ViewController.swift
//  Global
//
//  Created by Phillips, Ryan on 1/10/19.
//  Copyright © 2019 Phillips, Ryan. All rights reserved.
//

import UIKit
import MapKit

public class ImpactViewController: UIViewController
{
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var map: MKMapView!
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    
    @IBAction func zoom(_ sender: UIButton)
    {
        let impactLocation = CLLocationCoordinate2D(latitude: 52.5074, longitude: 0.1278)
        let mapSpan = MKCoordinateSpan(latitudeDelta: 10.05, longitudeDelta: 10.05)
        let impactRegion = MKCoordinateRegion(center: impactLocation, span: mapSpan)
        map.animatedZoom(zoomRegion: impactRegion, duration: 2.5)
    }
}

extension MKMapView
{
    public func animatedZoom(zoomRegion:MKCoordinateRegion, duration:TimeInterval)
    {
        MKMapView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 10, options: UIView.AnimationOptions.curveEaseIn, animations: { self.setRegion(zoomRegion, animated: true) }, completion: nil)
    }
}
