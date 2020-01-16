/**
 * @fileoverview gRPC-Web generated client stub for attachment
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!



const grpc = {};
grpc.web = require('grpc-web');


var google_protobuf_empty_pb = require('google-protobuf/google/protobuf/empty_pb.js')
const proto = {};
proto.attachment = require('./attachment_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.attachment.LabelServiceClient =
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
proto.attachment.LabelServicePromiseClient =
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
 *   !proto.attachment.GetAttachmentMetadataRequest,
 *   !proto.attachment.AttachmentMetadata>}
 */
const methodDescriptor_LabelService_GetAttachmentMetadata = new grpc.web.MethodDescriptor(
  '/attachment.LabelService/GetAttachmentMetadata',
  grpc.web.MethodType.UNARY,
  proto.attachment.GetAttachmentMetadataRequest,
  proto.attachment.AttachmentMetadata,
  /**
   * @param {!proto.attachment.GetAttachmentMetadataRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.attachment.AttachmentMetadata.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.attachment.GetAttachmentMetadataRequest,
 *   !proto.attachment.AttachmentMetadata>}
 */
const methodInfo_LabelService_GetAttachmentMetadata = new grpc.web.AbstractClientBase.MethodInfo(
  proto.attachment.AttachmentMetadata,
  /**
   * @param {!proto.attachment.GetAttachmentMetadataRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.attachment.AttachmentMetadata.deserializeBinary
);


/**
 * @param {!proto.attachment.GetAttachmentMetadataRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.attachment.AttachmentMetadata)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.attachment.AttachmentMetadata>|undefined}
 *     The XHR Node Readable Stream
 */
proto.attachment.LabelServiceClient.prototype.getAttachmentMetadata =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/attachment.LabelService/GetAttachmentMetadata',
      request,
      metadata || {},
      methodDescriptor_LabelService_GetAttachmentMetadata,
      callback);
};


/**
 * @param {!proto.attachment.GetAttachmentMetadataRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.attachment.AttachmentMetadata>}
 *     A native promise that resolves to the response
 */
proto.attachment.LabelServicePromiseClient.prototype.getAttachmentMetadata =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/attachment.LabelService/GetAttachmentMetadata',
      request,
      metadata || {},
      methodDescriptor_LabelService_GetAttachmentMetadata);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.attachment.ListAttachmentsMetadataRequest,
 *   !proto.attachment.ListAttachmentsMetadataResponse>}
 */
const methodDescriptor_LabelService_ListAttachmentMetadata = new grpc.web.MethodDescriptor(
  '/attachment.LabelService/ListAttachmentMetadata',
  grpc.web.MethodType.UNARY,
  proto.attachment.ListAttachmentsMetadataRequest,
  proto.attachment.ListAttachmentsMetadataResponse,
  /**
   * @param {!proto.attachment.ListAttachmentsMetadataRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.attachment.ListAttachmentsMetadataResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.attachment.ListAttachmentsMetadataRequest,
 *   !proto.attachment.ListAttachmentsMetadataResponse>}
 */
const methodInfo_LabelService_ListAttachmentMetadata = new grpc.web.AbstractClientBase.MethodInfo(
  proto.attachment.ListAttachmentsMetadataResponse,
  /**
   * @param {!proto.attachment.ListAttachmentsMetadataRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.attachment.ListAttachmentsMetadataResponse.deserializeBinary
);


/**
 * @param {!proto.attachment.ListAttachmentsMetadataRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.attachment.ListAttachmentsMetadataResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.attachment.ListAttachmentsMetadataResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.attachment.LabelServiceClient.prototype.listAttachmentMetadata =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/attachment.LabelService/ListAttachmentMetadata',
      request,
      metadata || {},
      methodDescriptor_LabelService_ListAttachmentMetadata,
      callback);
};


/**
 * @param {!proto.attachment.ListAttachmentsMetadataRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.attachment.ListAttachmentsMetadataResponse>}
 *     A native promise that resolves to the response
 */
proto.attachment.LabelServicePromiseClient.prototype.listAttachmentMetadata =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/attachment.LabelService/ListAttachmentMetadata',
      request,
      metadata || {},
      methodDescriptor_LabelService_ListAttachmentMetadata);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.attachment.DeleteAttachmentRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_LabelService_DeleteAttachment = new grpc.web.MethodDescriptor(
  '/attachment.LabelService/DeleteAttachment',
  grpc.web.MethodType.UNARY,
  proto.attachment.DeleteAttachmentRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.attachment.DeleteAttachmentRequest} request
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
 *   !proto.attachment.DeleteAttachmentRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_LabelService_DeleteAttachment = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.attachment.DeleteAttachmentRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.attachment.DeleteAttachmentRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.attachment.LabelServiceClient.prototype.deleteAttachment =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/attachment.LabelService/DeleteAttachment',
      request,
      metadata || {},
      methodDescriptor_LabelService_DeleteAttachment,
      callback);
};


/**
 * @param {!proto.attachment.DeleteAttachmentRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.attachment.LabelServicePromiseClient.prototype.deleteAttachment =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/attachment.LabelService/DeleteAttachment',
      request,
      metadata || {},
      methodDescriptor_LabelService_DeleteAttachment);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.attachment.DeleteAllAttachmentRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_LabelService_DeleteAllAttachment = new grpc.web.MethodDescriptor(
  '/attachment.LabelService/DeleteAllAttachment',
  grpc.web.MethodType.UNARY,
  proto.attachment.DeleteAllAttachmentRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.attachment.DeleteAllAttachmentRequest} request
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
 *   !proto.attachment.DeleteAllAttachmentRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_LabelService_DeleteAllAttachment = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.attachment.DeleteAllAttachmentRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.attachment.DeleteAllAttachmentRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.attachment.LabelServiceClient.prototype.deleteAllAttachment =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/attachment.LabelService/DeleteAllAttachment',
      request,
      metadata || {},
      methodDescriptor_LabelService_DeleteAllAttachment,
      callback);
};


/**
 * @param {!proto.attachment.DeleteAllAttachmentRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.attachment.LabelServicePromiseClient.prototype.deleteAllAttachment =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/attachment.LabelService/DeleteAllAttachment',
      request,
      metadata || {},
      methodDescriptor_LabelService_DeleteAllAttachment);
};


module.exports = proto.attachment;

