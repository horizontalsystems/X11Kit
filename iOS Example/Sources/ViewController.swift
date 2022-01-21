import UIKit
import X11Kit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let data = "DASH".data(using: .utf8)!
        let hash = Data(hex: "9999b3770256821e3a74c780ada66013df52378103addef0bceaac4be4f889d5ff93dc99d654310cc0063f15baa4ab168a2d8b6301104905619c334a92f521a1")!
       let result = Kit.jh512(from: data)

        print(hash == result)
    }

}

extension Data {

    init?(hex: String) {
        let len = hex.count / 2
        var data = Data(capacity: len)
        for i in 0..<len {
            let j = hex.index(hex.startIndex, offsetBy: i * 2)
            let k = hex.index(j, offsetBy: 2)
            let bytes = hex[j..<k]
            if var num = UInt8(bytes, radix: 16) {
                data.append(&num, count: 1)
            } else {
                return nil
            }
        }
        self = data
    }

}
