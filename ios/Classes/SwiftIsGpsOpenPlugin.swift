import Flutter
import UIKit
import CoreLocation

public class SwiftIsGpsOpenPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "is_gps_open", binaryMessenger: registrar.messenger())
        let instance = SwiftIsGpsOpenPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch (call.method) {
            case "isGpsOpen":
                return result(checkGps())
            default:
                return result(FlutterMethodNotImplemented)
        }
    }

    private func checkGps() ->Bool{
         let status = CLLocationManager.authorizationStatus()
         let isOpen = CLLocationManager.locationServicesEnabled()
         if (isOpen && (status.rawValue==3 || status.rawValue==4)){
             return true
         }
         return false
    }

}
