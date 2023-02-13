import Open3DSupport
import NumPySupport
import PythonSupport
import PythonKit

public struct DeepFace {
    public init() {
    }
    public static func test() {
        print("........ test from deepface package ........")
    }
    
    public static func initOpen3d() {
        PythonSupport.initialize()
        Open3DSupport.sitePackagesURL.insertPythonPath()
        NumPySupport.sitePackagesURL.insertPythonPath()
        print("open3d init - done")
    }
}
