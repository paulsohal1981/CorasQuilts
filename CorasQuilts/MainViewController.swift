//
//  MainViewController.swift
//  CorasQuilts
//
//  Created by paul sohal on 2/6/16.
//  Copyright © 2016 Acceler Inc. All rights reserved.
//

import SideMenu

class MainViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    let url = "http://www.corasquilts.com/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSideMenu()
        setDefaults()
    }
    
    
    private func setupSideMenu() {
        // Define the menus
//        SideMenuManager.menuLeftNavigationController = storyboard!.instantiateViewControllerWithIdentifier("LeftMenuNavigationController") as? UISideMenuNavigationController
//        SideMenuManager.menuRightNavigationController = storyboard!.instantiateViewControllerWithIdentifier("RightMenuNavigationController") as? UISideMenuNavigationController
        
        // Enable gestures. The left and/or right menus must be set up above for these to work.
        // Note that these continue to work on the Navigation Controller independent of the View Controller it displays!
//        SideMenuManager.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
//        SideMenuManager.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        
        // Set up a cool background image for demo purposes
//        SideMenuManager.menuAnimationBackgroundColor = UIColor(patternImage: UIImage(named: "background")!)
    }
    
    private func setDefaults() {
        let requestURL = NSURL(string:url)
        let request = NSURLRequest(URL: requestURL!)
        webView.loadRequest(request)
        
//        let modes:[SideMenuManager.MenuPresentMode] = [.MenuSlideIn, .ViewSlideOut, .MenuDissolveIn]
//        presentModeSegmentedControl.selectedSegmentIndex = modes.indexOf(SideMenuManager.menuPresentMode)!
//        
//        let styles:[UIBlurEffectStyle] = [.Dark, .Light, .ExtraLight]
//        if let menuBlurEffectStyle = SideMenuManager.menuBlurEffectStyle {
//            blurSegmentControl.selectedSegmentIndex = styles.indexOf(menuBlurEffectStyle) ?? 0
//        } else {
//            blurSegmentControl.selectedSegmentIndex = 0
//        }
//        
//        darknessSlider.value = Float(SideMenuManager.menuAnimationFadeStrength)
//        shadowOpacitySlider.value = Float(SideMenuManager.menuShadowOpacity)
//        shrinkFactorSlider.value = Float(SideMenuManager.menuAnimationShrinkStrength)
//        screenWidthSlider.value = Float(SideMenuManager.menuWidth / view.frame.width)
//        blackOutStatusBar.on = SideMenuManager.menuFadeStatusBar
    }
}
