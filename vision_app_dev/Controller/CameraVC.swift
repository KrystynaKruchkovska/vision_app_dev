//
//  ViewController.swift
//  vision_app_dev
//
//  Created by Mac on 11/12/18.
//  Copyright © 2018 CO.KrystynaKruchcovska. All rights reserved.
//

import UIKit
import AVFoundation

class CameraVC: UIViewController {
    
    var captureSession:AVCaptureSession!
    var cameraOutput:AVCapturePhotoOutput!
    var previewLayer: AVCaptureVideoPreviewLayer!

    @IBOutlet weak var cameraView: UIView!
    @IBOutlet weak var CuptereImgView: RoundedShadowImg!
    @IBOutlet weak var flashBtn: RoundedShadowbtn!
    @IBOutlet weak var confidanceLbl: UILabel!
    @IBOutlet weak var identificationLbl: UILabel!
    @IBOutlet weak var roundedLblView: RoundedShadowView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(true)
        captureSession = AVCaptureSession()
        captureSession.sessionPreset = AVCaptureSession.Preset.hd1920x1080
        
        let backCamera = AVCaptureDevice.default(for: .video)
        
        do{
            let input = try AVCaptureDeviceInput(device: backCamera!)
            if captureSession.canAddInput(input) == true{
                captureSession.canAddInput(input)
            }
            let cameraOutPut = AVCapturePhotoOutput()
            
            if captureSession.canAddOutput(cameraOutPut) == true{
                captureSession.canAddOutput(cameraOutPut)
            }
            
            previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
            previewLayer.videoGravity = .resizeAspect
            previewLayer.connection?.videoOrientation = AVCaptureVideoOrientation.portrait
            
            cameraView.layer.addSublayer(previewLayer!)
            captureSession.startRunning()
            
        }catch{
            debugPrint(error)
        }
        
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super .viewDidAppear(true)
        previewLayer.frame = cameraView.bounds
    }
}

