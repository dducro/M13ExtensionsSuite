//
//  UIImageMaskingViewControler.swift
//  M13ExtensionsSuite
//
//  Created by Brandon McQuilkin on 9/3/14.
//  Copyright (c) 2014 BrandonMcQuilkin. All rights reserved.
//

import UIKit

class UIImageMaskingViewControler: UIViewController {
    
    @IBOutlet var imageAlphaView: UIImageView?
    @IBOutlet var imageBWView: UIImageView?
    @IBOutlet var colorAlphaView: UIImageView?
    @IBOutlet var colorBWView: UIImageView?
    
    override func viewDidLoad() {
        //Set the images for the different views.
        imageAlphaView!.image = UIImage.maskedImage(image: UIImage(named: "BookmarksBackground.png"), withMask: UIImage(named: "BookmarksAlpha.png"))
        imageBWView!.image = UIImage.maskedImage(image: UIImage(named: "BookmarksBackground.png"), withMask: UIImage(named: "BookmarksBW.png"))
        colorAlphaView!.image = UIImage.maskedImage(color: UIColor.grayColor(), withMask: UIImage(named: "BookmarksAlpha.png"))
        colorBWView!.image = UIImage.maskedImage(color: UIColor.grayColor(), withMask: UIImage(named: "BookmarksBW.png"))
    }
    
}
