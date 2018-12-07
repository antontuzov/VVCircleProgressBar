//
//  ViewController.swift
//  VVCircleProgressBar
//
//  Created by Vinoth Vino on 23/06/18.
//  Copyright © 2018 Vinoth Vino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    let urlString = "https://instrumentalfx.co/wp-content/upload/11/Tobu-Hope-NCS-Release.mp3"
    let progressBar = VVCircleProgressBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupProgressBar()
        setupNotificationsObservers()
    }
    
    func setupProgressBar() {
        progressBar.center = self.view.center
        progressBar.textColor = UIColor.white
        progressBar.font = UIFont(name: "HelveticaNeue-Bold", size: 24)!
        
        progressBar.pulseColor = UIColor.pulseFillColor
        progressBar.progressColor = UIColor.outlineStrokeColor
        progressBar.trackStrokeColor = UIColor.trackStrokeColor
        progressBar.trackFillColor = UIColor.backgroundColor

        progressBar.progressLayerWidth = 20
        progressBar.trackLayerWidth = 20
        progressBar.pulseLayerWidth = 1.3
        
        self.view.addSubview(progressBar)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func setupNotificationsObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(handleEnterForeground), name: UIApplication.willEnterForegroundNotification, object: nil)
    }
    
    @objc private func handleEnterForeground() {
        progressBar.startPulseAnimation()
    }
    
    @IBAction func startBtnPressed(_ sender: Any) {
        progressBar.startPulseAnimation()
        startDownloadingFile()
    }
    
    private func startDownloadingFile() {
        progressBar.shapeLayer.strokeEnd = 0
        let configuration = URLSessionConfiguration.default
        let operationQueue = OperationQueue()
        let urlSession = URLSession(configuration: configuration, delegate: self, delegateQueue: operationQueue)
        
        guard let url = URL(string: urlString) else { return }
        let downloadTask = urlSession.downloadTask(with: url)
        downloadTask.resume()
    }
}

extension ViewController: URLSessionDownloadDelegate {
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        let percentage = CGFloat(totalBytesWritten) / CGFloat(totalBytesExpectedToWrite)
        DispatchQueue.main.async {
            self.progressBar.progressLabel.text = "\(Int(percentage * 100)) %"
            self.progressBar.shapeLayer.strokeEnd = percentage
        }
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        print("File downloaded")
    }
    
}

