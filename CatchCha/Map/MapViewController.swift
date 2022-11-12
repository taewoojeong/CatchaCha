import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet weak var destinationInputView: UIView!
    @IBOutlet weak var destinationTextField: UITextField!
    @IBOutlet weak var destinationMapkit: MKMapView!
    
    
    @IBAction func destinationTextFieldDidTap(_ sender: Any) {
        // 키보드 안 보이게 하고, Destination VC로 연결
    }
        

    var locationManager: CLLocationManager = CLLocationManager() // location manager
    var currentLocation: CLLocation! // 내 위치 저장

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
       locationManager = manager
       if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
           currentLocation = locationManager.location
       }
    }
    
    func setComponentsValue() {
        self.destinationInputView.layer.cornerRadius = 30
        self.destinationTextField.attributedPlaceholder = NSAttributedString(string: "어디로 갈까요?", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        
        self.destinationInputView.layer.shadowColor = UIColor.black.cgColor
        self.destinationInputView.layer.masksToBounds = false
        self.destinationInputView.layer.shadowOffset = CGSize(width: 0, height: 4)
        self.destinationInputView.layer.shadowRadius = 8
        self.destinationInputView.layer.shadowOpacity = 1.0
    }
    
    func setUserCurrentLocationInMapkit() {
        // 사용자 현재 위치 보이기
        self.destinationMapkit.showsUserLocation = true
        self.destinationMapkit.setUserTrackingMode(.follow, animated: true)
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.startMonitoringSignificantLocationChanges()
        self.currentLocation = locationManager.location
    }


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.destinationMapkit.mapType = MKMapType.standard

        setComponentsValue()
        setUserCurrentLocationInMapkit()
    }

}



