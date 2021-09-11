
import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController,CLLocationManagerDelegate, MKMapViewDelegate{
    
    /// 篠原消防出張所の緯度経度
    private let imperialPalaceLocation = CLLocationCoordinate2DMake(35.50284, 139.61874);
    
    @IBOutlet weak var mapView: MKMapView!
    
    //CLLocationManagerの入れ物を用意
    var myLocationManager:CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        mapView.delegate = self
        moveTo(center: imperialPalaceLocation, animated: false)
        
        //CLLocationManagerをインスタンス化
        myLocationManager = CLLocationManager()
        
        //位置情報使用許可のリクエストを表示するメソッドの呼び出し
        myLocationManager.requestWhenInUseAuthorization()
    }
    
    //位置情報取得に失敗したときに呼び出されるメソッド
    func locationManager( _ manager: CLLocationManager, didFailWithError error: Error) {
        print("error")
    }
    private func moveTo(
        center location: CLLocationCoordinate2D,
        animated: Bool,
        span: CLLocationDegrees = 0.01) {
        
        let coordinateSpan = MKCoordinateSpan(
            latitudeDelta: span,
            longitudeDelta: span
        )
        let coordinateRegion = MKCoordinateRegion(
            center: location,
            span: coordinateSpan
        )
        mapView.setRegion(
            coordinateRegion,
            animated: animated
        )
        
        
        
        
        //ピンオブジェクトを作成
        let Pin1 = MKPointAnnotation()
        
        
        //ピンの座標を指定
        Pin1.coordinate = CLLocationCoordinate2D(latitude: 35.502779,longitude: 139.618903)
        
        //タイトル、サブタイトルを指定
        
        let title1 = "タイトルを表示"
        
        let subtitle1 = "サブタイトルを表示"
        
        Pin1.title = title1
        Pin1.subtitle = subtitle1
        
        
        //Mapにピンを追加
        mapView.addAnnotation(Pin1)
        
        //ピンオブジェクトを作成
        let Pin2 = MKPointAnnotation()
        
        
        //ピンの座標を指定
        Pin2.coordinate = CLLocationCoordinate2D(latitude: 35.518987,longitude: 139.63302)
        
        //タイトル、サブタイトルを指定
        
        let title2 = "タイトルを表示"
        
        let subtitle2 = "サブタイトルを表示"
        
        Pin2.title = title2
        Pin2.subtitle = subtitle2
        
        
        //Mapにピンを追加
        mapView.addAnnotation(Pin2)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
}
