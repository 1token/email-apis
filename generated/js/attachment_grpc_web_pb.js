/**
 * @fileoverview gRPC-Web generated client stub for service
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!



const grpc = {};
grpc.web = require('grpc-web');


var google_protobuf_empty_pb = require('google-protobuf/google/protobuf/empty_pb.js')
const proto = {};
proto.service = require('./attachment_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.service.LabelServiceClient =
    function(hostname, credentials, options) {
  if (!options) options = {};
  options['format'] = 'text';

  /**
   * @private @const {!grpc.web.GrpcWebClientBase} The client
   */
  this.client_ = new grpc.web.GrpcWebClientBase(options);

  /**
   * @private @const {string} The hostname
   */
  this.hostname_ = hostname;

};


/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.service.LabelServicePromiseClient =
    function(hostname, credentials, options) {
  if (!options) options = {};
  options['format'] = 'text';

  /**
   * @private @const {!grpc.web.GrpcWebClientBase} The client
   */
  this.client_ = new grpc.web.GrpcWebClientBase(options);

  /**
   * @private @const {string} The hostname
   */
  this.hostname_ = hostname;

};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.GetAttachmentMetadataRequest,
 *   !proto.service.AttachmentMetadata>}
 */
const methodDescriptor_LabelService_GetAttachmentMetadata = new grpc.web.MethodDescriptor(
  '/service.LabelService/GetAttachmentMetadata',
  grpc.web.MethodType.UNARY,
  proto.service.GetAttachmentMetadataRequest,
  proto.service.AttachmentMetadata,
  /**
   * @param {!proto.service.GetAttachmentMetadataRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.AttachmentMetadata.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.GetAttachmentMetadataRequest,
 *   !proto.service.AttachmentMetadata>}
 */
const methodInfo_LabelService_GetAttachmentMetadata = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.AttachmentMetadata,
  /**
   * @param {!proto.service.GetAttachmentMetadataRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.AttachmentMetadata.deserializeBinary
);


/**
 * @param {!proto.service.GetAttachmentMetadataRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.AttachmentMetadata)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.AttachmentMetadata>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.LabelServiceClient.prototype.getAttachmentMetadata =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.LabelService/GetAttachmentMetadata',
      request,
      metadata || {},
      methodDescriptor_LabelService_GetAttachmentMetadata,
      callback);
};


/**
 * @param {!proto.service.GetAttachmentMetadataRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.AttachmentMetadata>}
 *     A native promise that resolves to the response
 */
proto.service.LabelServicePromiseClient.prototype.getAttachmentMetadata =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.LabelService/GetAttachmentMetadata',
      request,
      metadata || {},
      methodDescriptor_LabelService_GetAttachmentMetadata);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.ListAttachmentsMetadataRequest,
 *   !proto.service.ListAttachmentsMetadataResponse>}
 */
const methodDescriptor_LabelService_ListAttachmentMetadata = new grpc.web.MethodDescriptor(
  '/service.LabelService/ListAttachmentMetadata',
  grpc.web.MethodType.UNARY,
  proto.service.ListAttachmentsMetadataRequest,
  proto.service.ListAttachmentsMetadataResponse,
  /**
   * @param {!proto.service.ListAttachmentsMetadataRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.ListAttachmentsMetadataResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.ListAttachmentsMetadataRequest,
 *   !proto.service.ListAttachmentsMetadataResponse>}
 */
const methodInfo_LabelService_ListAttachmentMetadata = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.ListAttachmentsMetadataResponse,
  /**
   * @param {!proto.service.ListAttachmentsMetadataRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.ListAttachmentsMetadataResponse.deserializeBinary
);


/**
 * @param {!proto.service.ListAttachmentsMetadataRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.ListAttachmentsMetadataResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.ListAttachmentsMetadataResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.LabelServiceClient.prototype.listAttachmentMetadata =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.LabelService/ListAttachmentMetadata',
      request,
      metadata || {},
      methodDescriptor_LabelService_ListAttachmentMetadata,
      callback);
};


/**
 * @param {!proto.service.ListAttachmentsMetadataRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.ListAttachmentsMetadataResponse>}
 *     A native promise that resolves to the response
 */
proto.service.LabelServicePromiseClient.prototype.listAttachmentMetadata =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.LabelService/ListAttachmentMetadata',
      request,
      metadata || {},
      methodDescriptor_LabelService_ListAttachmentMetadata);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.DeleteAttachmentRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_LabelService_DeleteAttachment = new grpc.web.MethodDescriptor(
  '/service.LabelService/DeleteAttachment',
  grpc.web.MethodType.UNARY,
  proto.service.DeleteAttachmentRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.DeleteAttachmentRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.DeleteAttachmentRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_LabelService_DeleteAttachment = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.DeleteAttachmentRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.service.DeleteAttachmentRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.LabelServiceClient.prototype.deleteAttachment =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.LabelService/DeleteAttachment',
      request,
      metadata || {},
      methodDescriptor_LabelService_DeleteAttachment,
      callback);
};


/**
 * @param {!proto.service.DeleteAttachmentRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.service.LabelServicePromiseClient.prototype.deleteAttachment =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.LabelService/DeleteAttachment',
      request,
      metadata || {},
      methodDescriptor_LabelService_DeleteAttachment);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.DeleteAllAttachmentRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_LabelService_DeleteAllAttachment = new grpc.web.MethodDescriptor(
  '/service.LabelService/DeleteAllAttachment',
  grpc.web.MethodType.UNARY,
  proto.service.DeleteAllAttachmentRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.DeleteAllAttachmentRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.DeleteAllAttachmentRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_LabelService_DeleteAllAttachment = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.DeleteAllAttachmentRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.service.DeleteAllAttachmentRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.LabelServiceClient.prototype.deleteAllAttachment =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.LabelService/DeleteAllAttachment',
      request,
      metadata || {},
      methodDescriptor_LabelService_DeleteAllAttachment,
      callback);
};


/**
 * @param {!proto.service.DeleteAllAttachmentRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.service.LabelServicePromiseClient.prototype.deleteAllAttachment =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.LabelService/DeleteAllAttachment',
      request,
      metadata || {},
      methodDescriptor_LabelService_DeleteAllAttachment);
};


module.exports = proto.service;

