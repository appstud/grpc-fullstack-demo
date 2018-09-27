//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: news_service.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Foundation
import Dispatch
import SwiftGRPC
import SwiftProtobuf

internal protocol Fr_Fbernard_Grpc_News_NewsServicegetNewsCall: ClientCallUnary {}

fileprivate final class Fr_Fbernard_Grpc_News_NewsServicegetNewsCallBase: ClientCallUnaryBase<Fr_Fbernard_Grpc_News_NewsRequest, Fr_Fbernard_Grpc_News_NewsResponse>, Fr_Fbernard_Grpc_News_NewsServicegetNewsCall {
  override class var method: String { return "/fr.fbernard.grpc.news.NewsService/getNews" }
}

internal protocol Fr_Fbernard_Grpc_News_NewsServicesubscribeCall: ClientCallServerStreaming {
  /// Do not call this directly, call `receive()` in the protocol extension below instead.
  func _receive(timeout: DispatchTime) throws -> Fr_Fbernard_Grpc_News_News?
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (ResultOrRPCError<Fr_Fbernard_Grpc_News_News?>) -> Void) throws
}

internal extension Fr_Fbernard_Grpc_News_NewsServicesubscribeCall {
  /// Call this to wait for a result. Blocking.
  func receive(timeout: DispatchTime = .distantFuture) throws -> Fr_Fbernard_Grpc_News_News? { return try self._receive(timeout: timeout) }
}

fileprivate final class Fr_Fbernard_Grpc_News_NewsServicesubscribeCallBase: ClientCallServerStreamingBase<Fr_Fbernard_Grpc_News_SubscribeRequest, Fr_Fbernard_Grpc_News_News>, Fr_Fbernard_Grpc_News_NewsServicesubscribeCall {
  override class var method: String { return "/fr.fbernard.grpc.news.NewsService/subscribe" }
}

internal protocol Fr_Fbernard_Grpc_News_NewsServicepostNewsCall: ClientCallUnary {}

fileprivate final class Fr_Fbernard_Grpc_News_NewsServicepostNewsCallBase: ClientCallUnaryBase<Fr_Fbernard_Grpc_News_News, Fr_Fbernard_Grpc_News_News>, Fr_Fbernard_Grpc_News_NewsServicepostNewsCall {
  override class var method: String { return "/fr.fbernard.grpc.news.NewsService/postNews" }
}


/// Instantiate Fr_Fbernard_Grpc_News_NewsServiceServiceClient, then call methods of this protocol to make API calls.
internal protocol Fr_Fbernard_Grpc_News_NewsServiceService: ServiceClient {
  /// Synchronous. Unary.
  func getNews(_ request: Fr_Fbernard_Grpc_News_NewsRequest) throws -> Fr_Fbernard_Grpc_News_NewsResponse
  /// Asynchronous. Unary.
  func getNews(_ request: Fr_Fbernard_Grpc_News_NewsRequest, completion: @escaping (Fr_Fbernard_Grpc_News_NewsResponse?, CallResult) -> Void) throws -> Fr_Fbernard_Grpc_News_NewsServicegetNewsCall

  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  func subscribe(_ request: Fr_Fbernard_Grpc_News_SubscribeRequest, completion: ((CallResult) -> Void)?) throws -> Fr_Fbernard_Grpc_News_NewsServicesubscribeCall

  /// Synchronous. Unary.
  func postNews(_ request: Fr_Fbernard_Grpc_News_News) throws -> Fr_Fbernard_Grpc_News_News
  /// Asynchronous. Unary.
  func postNews(_ request: Fr_Fbernard_Grpc_News_News, completion: @escaping (Fr_Fbernard_Grpc_News_News?, CallResult) -> Void) throws -> Fr_Fbernard_Grpc_News_NewsServicepostNewsCall

}

internal final class Fr_Fbernard_Grpc_News_NewsServiceServiceClient: ServiceClientBase, Fr_Fbernard_Grpc_News_NewsServiceService {
  /// Synchronous. Unary.
  internal func getNews(_ request: Fr_Fbernard_Grpc_News_NewsRequest) throws -> Fr_Fbernard_Grpc_News_NewsResponse {
    return try Fr_Fbernard_Grpc_News_NewsServicegetNewsCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  internal func getNews(_ request: Fr_Fbernard_Grpc_News_NewsRequest, completion: @escaping (Fr_Fbernard_Grpc_News_NewsResponse?, CallResult) -> Void) throws -> Fr_Fbernard_Grpc_News_NewsServicegetNewsCall {
    return try Fr_Fbernard_Grpc_News_NewsServicegetNewsCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  internal func subscribe(_ request: Fr_Fbernard_Grpc_News_SubscribeRequest, completion: ((CallResult) -> Void)?) throws -> Fr_Fbernard_Grpc_News_NewsServicesubscribeCall {
    return try Fr_Fbernard_Grpc_News_NewsServicesubscribeCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func postNews(_ request: Fr_Fbernard_Grpc_News_News) throws -> Fr_Fbernard_Grpc_News_News {
    return try Fr_Fbernard_Grpc_News_NewsServicepostNewsCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  internal func postNews(_ request: Fr_Fbernard_Grpc_News_News, completion: @escaping (Fr_Fbernard_Grpc_News_News?, CallResult) -> Void) throws -> Fr_Fbernard_Grpc_News_NewsServicepostNewsCall {
    return try Fr_Fbernard_Grpc_News_NewsServicepostNewsCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

}

/// To build a server, implement a class that conforms to this protocol.
/// If one of the methods returning `ServerStatus?` returns nil,
/// it is expected that you have already returned a status to the client by means of `session.close`.
internal protocol Fr_Fbernard_Grpc_News_NewsServiceProvider: ServiceProvider {
  func getNews(request: Fr_Fbernard_Grpc_News_NewsRequest, session: Fr_Fbernard_Grpc_News_NewsServicegetNewsSession) throws -> Fr_Fbernard_Grpc_News_NewsResponse
  func subscribe(request: Fr_Fbernard_Grpc_News_SubscribeRequest, session: Fr_Fbernard_Grpc_News_NewsServicesubscribeSession) throws -> ServerStatus?
  func postNews(request: Fr_Fbernard_Grpc_News_News, session: Fr_Fbernard_Grpc_News_NewsServicepostNewsSession) throws -> Fr_Fbernard_Grpc_News_News
}

extension Fr_Fbernard_Grpc_News_NewsServiceProvider {
  internal var serviceName: String { return "fr.fbernard.grpc.news.NewsService" }

  /// Determines and calls the appropriate request handler, depending on the request's method.
  /// Throws `HandleMethodError.unknownMethod` for methods not handled by this service.
  internal func handleMethod(_ method: String, handler: Handler) throws -> ServerStatus? {
    switch method {
    case "/fr.fbernard.grpc.news.NewsService/getNews":
      return try Fr_Fbernard_Grpc_News_NewsServicegetNewsSessionBase(
        handler: handler,
        providerBlock: { try self.getNews(request: $0, session: $1 as! Fr_Fbernard_Grpc_News_NewsServicegetNewsSessionBase) })
          .run()
    case "/fr.fbernard.grpc.news.NewsService/subscribe":
      return try Fr_Fbernard_Grpc_News_NewsServicesubscribeSessionBase(
        handler: handler,
        providerBlock: { try self.subscribe(request: $0, session: $1 as! Fr_Fbernard_Grpc_News_NewsServicesubscribeSessionBase) })
          .run()
    case "/fr.fbernard.grpc.news.NewsService/postNews":
      return try Fr_Fbernard_Grpc_News_NewsServicepostNewsSessionBase(
        handler: handler,
        providerBlock: { try self.postNews(request: $0, session: $1 as! Fr_Fbernard_Grpc_News_NewsServicepostNewsSessionBase) })
          .run()
    default:
      throw HandleMethodError.unknownMethod
    }
  }
}

internal protocol Fr_Fbernard_Grpc_News_NewsServicegetNewsSession: ServerSessionUnary {}

fileprivate final class Fr_Fbernard_Grpc_News_NewsServicegetNewsSessionBase: ServerSessionUnaryBase<Fr_Fbernard_Grpc_News_NewsRequest, Fr_Fbernard_Grpc_News_NewsResponse>, Fr_Fbernard_Grpc_News_NewsServicegetNewsSession {}

internal protocol Fr_Fbernard_Grpc_News_NewsServicesubscribeSession: ServerSessionServerStreaming {
  /// Send a message to the stream. Nonblocking.
  func send(_ message: Fr_Fbernard_Grpc_News_News, completion: @escaping (Error?) -> Void) throws
  /// Do not call this directly, call `send()` in the protocol extension below instead.
  func _send(_ message: Fr_Fbernard_Grpc_News_News, timeout: DispatchTime) throws

  /// Close the connection and send the status. Non-blocking.
  /// This method should be called if and only if your request handler returns a nil value instead of a server status;
  /// otherwise SwiftGRPC will take care of sending the status for you.
  func close(withStatus status: ServerStatus, completion: (() -> Void)?) throws
}

internal extension Fr_Fbernard_Grpc_News_NewsServicesubscribeSession {
  /// Send a message to the stream and wait for the send operation to finish. Blocking.
  func send(_ message: Fr_Fbernard_Grpc_News_News, timeout: DispatchTime = .distantFuture) throws { try self._send(message, timeout: timeout) }
}

fileprivate final class Fr_Fbernard_Grpc_News_NewsServicesubscribeSessionBase: ServerSessionServerStreamingBase<Fr_Fbernard_Grpc_News_SubscribeRequest, Fr_Fbernard_Grpc_News_News>, Fr_Fbernard_Grpc_News_NewsServicesubscribeSession {}

internal protocol Fr_Fbernard_Grpc_News_NewsServicepostNewsSession: ServerSessionUnary {}

fileprivate final class Fr_Fbernard_Grpc_News_NewsServicepostNewsSessionBase: ServerSessionUnaryBase<Fr_Fbernard_Grpc_News_News, Fr_Fbernard_Grpc_News_News>, Fr_Fbernard_Grpc_News_NewsServicepostNewsSession {}

