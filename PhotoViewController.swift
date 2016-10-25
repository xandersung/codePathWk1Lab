//
//  PhotoViewController.swift
//  codePathWk1Lab
//
//  Created by Sung, Alexander on 10/24/16.
//  Copyright © 2016 Capital One. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet weak var photoImageView: UIImageView!
    var imageForDisplay: UIImage!
    @IBOutlet weak var uiView: UIView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var buttonRow: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = imageForDisplay
        scrollView.contentSize.height = photoImageView.frame.size.height * 2
        scrollView.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        var offset = Float(scrollView.contentOffset.y)
        print(offset)
        if offset < 0 {
            offset = -offset
        }
        print(convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 80, r2Min: 100, r2Max: 50))
        scrollView.backgroundColor = UIColor(white: 0, alpha: convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 100, r2Min: 1, r2Max: 0))
        button.alpha = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 70, r2Min: 1, r2Max: 0)
        buttonRow.alpha = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 70, r2Min: 1, r2Max: 0)

    }
    

    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        var offset = Float(scrollView.contentOffset.y)
        print(offset)
        if offset < 0 {
            offset = -offset
        }
        if offset > 80 {
            dismiss(animated: true, completion: nil)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func doneButtonTapped(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

}
