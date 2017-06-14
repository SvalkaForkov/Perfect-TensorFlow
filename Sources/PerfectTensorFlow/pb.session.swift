// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/compiler/xla/service/session.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2017 The TensorFlow Authors. All Rights Reserved.
//
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at
//
//http://www.apache.org/licenses/LICENSE-2.0
//
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.
//==============================================================================

/// This proto file defines messages which store the state of XLA
/// computations within the XLA service. A computation is stored as a record
/// of the operation requests used to build it.

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

/// Describes a single operation request.
struct Xla_OperationRequest: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".OperationRequest"

  var outputHandle: Xla_ComputationDataHandle {
    get {return _storage._outputHandle ?? Xla_ComputationDataHandle()}
    set {_uniqueStorage()._outputHandle = newValue}
  }
  /// Returns true if `outputHandle` has been explicitly set.
  var hasOutputHandle: Bool {return _storage._outputHandle != nil}
  /// Clears the value of `outputHandle`. Subsequent reads from it will return its default value.
  mutating func clearOutputHandle() {_storage._outputHandle = nil}

  var outputShape: Xla_Shape {
    get {return _storage._outputShape ?? Xla_Shape()}
    set {_uniqueStorage()._outputShape = newValue}
  }
  /// Returns true if `outputShape` has been explicitly set.
  var hasOutputShape: Bool {return _storage._outputShape != nil}
  /// Clears the value of `outputShape`. Subsequent reads from it will return its default value.
  mutating func clearOutputShape() {_storage._outputShape = nil}

  /// For operations which call embedded computations such as "Map", these are
  /// the version(s) that the embedded computation should be called at. A version
  /// value of a computation is the ComputationDataHandle of the root of the
  /// computation at the point in time.
  ///
  /// "Call", "Map", "Reduce", and "ReduceWindow" operations take a single
  /// embedded computation so this field will have a single value for those
  /// operations.
  ///
  /// "While" operation takes two; index 0 is the "condition" version and index 1
  /// is the "body" version.
  var embeddedComputationVersions: [Int64] {
    get {return _storage._embeddedComputationVersions}
    set {_uniqueStorage()._embeddedComputationVersions = newValue}
  }

  /// The actual request, which in itself is a tagged union of all possible
  /// operation request types.
  var request: Xla_OpRequest {
    get {return _storage._request ?? Xla_OpRequest()}
    set {_uniqueStorage()._request = newValue}
  }
  /// Returns true if `request` has been explicitly set.
  var hasRequest: Bool {return _storage._request != nil}
  /// Clears the value of `request`. Subsequent reads from it will return its default value.
  mutating func clearRequest() {_storage._request = nil}

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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._outputHandle)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._outputShape)
        case 3: try decoder.decodeRepeatedInt64Field(value: &_storage._embeddedComputationVersions)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._request)
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
      if let v = _storage._outputHandle {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._outputShape {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if !_storage._embeddedComputationVersions.isEmpty {
        try visitor.visitPackedInt64Field(value: _storage._embeddedComputationVersions, fieldNumber: 3)
      }
      if let v = _storage._request {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Describes a sequence of operation requests which define an XLA
/// computation.
struct Xla_SessionComputation: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".SessionComputation"

  var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  /// The ComputationHandle used to refer to this computation in the XLA
  /// service.
  var computationHandle: Xla_ComputationHandle {
    get {return _storage._computationHandle ?? Xla_ComputationHandle()}
    set {_uniqueStorage()._computationHandle = newValue}
  }
  /// Returns true if `computationHandle` has been explicitly set.
  var hasComputationHandle: Bool {return _storage._computationHandle != nil}
  /// Clears the value of `computationHandle`. Subsequent reads from it will return its default value.
  mutating func clearComputationHandle() {_storage._computationHandle = nil}

  /// Map from ComputationDataHandle value to operation request. The highest
  /// ComputationDataHandle value corresponds to the root of the computation.
  var requests: Dictionary<Int64,Xla_OperationRequest> {
    get {return _storage._requests}
    set {_uniqueStorage()._requests = newValue}
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
        case 1: try decoder.decodeSingularStringField(value: &_storage._name)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._computationHandle)
        case 3: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufInt64,Xla_OperationRequest>.self, value: &_storage._requests)
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
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 1)
      }
      if let v = _storage._computationHandle {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if !_storage._requests.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufInt64,Xla_OperationRequest>.self, value: _storage._requests, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Describes a group of SessionComputations with an "entry point" computation
/// that may refer to the other non-entry (AKA embedded) computations.
///
/// This message is used to serialize a computation that has been built via the
/// XLA service API, along with its dependencies, for purposes such as
/// analysis/replay/file-storage.
struct Xla_SessionModule: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".SessionModule"

  /// The entry computation, which was requested for serialization. This may have
  /// referred to embedded computations, which are reflected below.
  var entry: Xla_SessionComputation {
    get {return _storage._entry ?? Xla_SessionComputation()}
    set {_uniqueStorage()._entry = newValue}
  }
  /// Returns true if `entry` has been explicitly set.
  var hasEntry: Bool {return _storage._entry != nil}
  /// Clears the value of `entry`. Subsequent reads from it will return its default value.
  mutating func clearEntry() {_storage._entry = nil}

  /// Embedded computations that are transitively referred to by the entry
  /// computation.
  var embeddedComputations: [Xla_SessionComputation] {
    get {return _storage._embeddedComputations}
    set {_uniqueStorage()._embeddedComputations = newValue}
  }

  /// The arguments passed to the computation.
  var arguments: [Xla_Literal] {
    get {return _storage._arguments}
    set {_uniqueStorage()._arguments = newValue}
  }

  /// The result of the computation.
  var result: Xla_Literal {
    get {return _storage._result ?? Xla_Literal()}
    set {_uniqueStorage()._result = newValue}
  }
  /// Returns true if `result` has been explicitly set.
  var hasResult: Bool {return _storage._result != nil}
  /// Clears the value of `result`. Subsequent reads from it will return its default value.
  mutating func clearResult() {_storage._result = nil}

  /// The name of the platform used to run the computation.
  var executionPlatform: String {
    get {return _storage._executionPlatform}
    set {_uniqueStorage()._executionPlatform = newValue}
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._entry)
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._embeddedComputations)
        case 3: try decoder.decodeRepeatedMessageField(value: &_storage._arguments)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._result)
        case 5: try decoder.decodeSingularStringField(value: &_storage._executionPlatform)
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
      if let v = _storage._entry {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._embeddedComputations.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._embeddedComputations, fieldNumber: 2)
      }
      if !_storage._arguments.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._arguments, fieldNumber: 3)
      }
      if let v = _storage._result {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if !_storage._executionPlatform.isEmpty {
        try visitor.visitSingularStringField(value: _storage._executionPlatform, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "xla"

extension Xla_OperationRequest: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "output_handle"),
    2: .standard(proto: "output_shape"),
    3: .standard(proto: "embedded_computation_versions"),
    4: .same(proto: "request"),
  ]

  fileprivate class _StorageClass {
    var _outputHandle: Xla_ComputationDataHandle? = nil
    var _outputShape: Xla_Shape? = nil
    var _embeddedComputationVersions: [Int64] = []
    var _request: Xla_OpRequest? = nil

    static let defaultInstance = _StorageClass()

    public init() {}

    init(copying source: _StorageClass) {
      _outputHandle = source._outputHandle
      _outputShape = source._outputShape
      _embeddedComputationVersions = source._embeddedComputationVersions
      _request = source._request
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Xla_OperationRequest) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) -> Bool in
        if _storage._outputHandle != other_storage._outputHandle {return false}
        if _storage._outputShape != other_storage._outputShape {return false}
        if _storage._embeddedComputationVersions != other_storage._embeddedComputationVersions {return false}
        if _storage._request != other_storage._request {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Xla_SessionComputation: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "computation_handle"),
    3: .same(proto: "requests"),
  ]

  fileprivate class _StorageClass {
    var _name: String = String()
    var _computationHandle: Xla_ComputationHandle? = nil
    var _requests: Dictionary<Int64,Xla_OperationRequest> = [:]

    static let defaultInstance = _StorageClass()

    public init() {}

    init(copying source: _StorageClass) {
      _name = source._name
      _computationHandle = source._computationHandle
      _requests = source._requests
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Xla_SessionComputation) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) -> Bool in
        if _storage._name != other_storage._name {return false}
        if _storage._computationHandle != other_storage._computationHandle {return false}
        if _storage._requests != other_storage._requests {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Xla_SessionModule: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "entry"),
    2: .standard(proto: "embedded_computations"),
    3: .same(proto: "arguments"),
    4: .same(proto: "result"),
    5: .standard(proto: "execution_platform"),
  ]

  fileprivate class _StorageClass {
    var _entry: Xla_SessionComputation? = nil
    var _embeddedComputations: [Xla_SessionComputation] = []
    var _arguments: [Xla_Literal] = []
    var _result: Xla_Literal? = nil
    var _executionPlatform: String = String()

    static let defaultInstance = _StorageClass()

    public init() {}

    init(copying source: _StorageClass) {
      _entry = source._entry
      _embeddedComputations = source._embeddedComputations
      _arguments = source._arguments
      _result = source._result
      _executionPlatform = source._executionPlatform
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Xla_SessionModule) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) -> Bool in
        if _storage._entry != other_storage._entry {return false}
        if _storage._embeddedComputations != other_storage._embeddedComputations {return false}
        if _storage._arguments != other_storage._arguments {return false}
        if _storage._result != other_storage._result {return false}
        if _storage._executionPlatform != other_storage._executionPlatform {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
