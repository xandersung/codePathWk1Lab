//
//  NewsFeedViewController.swift
//  codePathWk1Lab
//
//  Created by Sung, Alexander on 9/22/16.
//  Copyright © 2016 Capital One. All rights reserved.
//

import UIKit

class NewsFeedViewController: UIViewController {

    @IBOutlet weak var homeFeedImageView: UIImageView!
    @IBOutlet weak var newsFeedScrollView: UIScrollView!
    var selectedImageView: UIImageView!
    var fadeTransition: FadeTransition!
    
    
    @IBOutlet var imageArray: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsFeedScrollView.contentSize = (homeFeedImageView.image?.size)!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func thrillistButton(_ sender: AnyObject) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func photoTapped(_ sender: UITapGestureRecognizer) {
        for image in imageArray {
            if ((sender.view?.tag)! == image.tag) {
                selectedImageView = image
            }
        }
        performSegue(withIdentifier: "photoTappedSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "photoTappedSegue" {
            
            // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController.
            var destinationViewController = segue.destination
            
            // Set the modal presentation style of your destinationViewController to be custom.
            destinationViewController.modalPresentationStyle = UIModalPresentationStyle.custom
            
            // Create a new instance of your fadeTransition.
            fadeTransition = FadeTransition()
            
            // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
            destinationViewController.transitioningDelegate = fadeTransition
            
            // Adjust the transition duration. (seconds)
            fadeTransition.duration = 0.5
            let photoVC:PhotoViewController = segue.destination as! PhotoViewController
            photoVC.imageForDisplay = selectedImageView.image
        }
    }


}
