// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/python/framework/cpp_shape_inference.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Tensorflow_CppShapeInferenceResult: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".CppShapeInferenceResult"

  var shape: Tensorflow_TensorShapeProto {
    get {return _storage._shape ?? Tensorflow_TensorShapeProto()}
    set {_uniqueStorage()._shape = newValue}
  }
  /// Returns true if `shape` has been explicitly set.
  var hasShape: Bool {return _storage._shape != nil}
  /// Clears the value of `shape`. Subsequent reads from it will return its default value.
  mutating func clearShape() {_storage._shape = nil}

  var handleShape: Tensorflow_TensorShapeProto {
    get {return _storage._handleShape ?? Tensorflow_TensorShapeProto()}
    set {_uniqueStorage()._handleShape = newValue}
  }
  /// Returns true if `handleShape` has been explicitly set.
  var hasHandleShape: Bool {return _storage._handleShape != nil}
  /// Clears the value of `handleShape`. Subsequent reads from it will return its default value.
  mutating func clearHandleShape() {_storage._handleShape = nil}

  var handleDtype: Tensorflow_DataType {
    get {return _storage._handleDtype}
    set {_uniqueStorage()._handleDtype = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._shape)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._handleShape)
        case 3: try decoder.decodeSingularEnumField(value: &_storage._handleDtype)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._shape {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._handleShape {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if _storage._handleDtype != .dtInvalid {
        try visitor.visitSingularEnumField(value: _storage._handleDtype, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Tensorflow_CppShapeInferenceInputsNeeded: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".CppShapeInferenceInputsNeeded"

  var inputTensorsNeeded: [Int32] = []

  var inputTensorsAsShapesNeeded: [Int32] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedInt32Field(value: &self.inputTensorsNeeded)
      case 2: try decoder.decodeRepeatedInt32Field(value: &self.inputTensorsAsShapesNeeded)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.inputTensorsNeeded.isEmpty {
      try visitor.visitPackedInt32Field(value: self.inputTensorsNeeded, fieldNumber: 1)
    }
    if !self.inputTensorsAsShapesNeeded.isEmpty {
      try visitor.visitPackedInt32Field(value: self.inputTensorsAsShapesNeeded, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow"

extension Tensorflow_CppShapeInferenceResult: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "shape"),
    2: .standard(proto: "handle_shape"),
    3: .standard(proto: "handle_dtype"),
  ]

  fileprivate class _StorageClass {
    var _shape: Tensorflow_TensorShapeProto? = nil
    var _handleShape: Tensorflow_TensorShapeProto? = nil
    var _handleDtype: Tensorflow_DataType = .dtInvalid

    static let defaultInstance = _StorageClass()

    public init() {}

    init(copying source: _StorageClass) {
      _shape = source._shape
      _handleShape = source._handleShape
      _handleDtype = source._handleDtype
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_CppShapeInferenceResult) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) -> Bool in
        if _storage._shape != other_storage._shape {return false}
        if _storage._handleShape != other_storage._handleShape {return false}
        if _storage._handleDtype != other_storage._handleDtype {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_CppShapeInferenceInputsNeeded: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "input_tensors_needed"),
    2: .standard(proto: "input_tensors_as_shapes_needed"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_CppShapeInferenceInputsNeeded) -> Bool {
    if self.inputTensorsNeeded != other.inputTensorsNeeded {return false}
    if self.inputTensorsAsShapesNeeded != other.inputTensorsAsShapesNeeded {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
