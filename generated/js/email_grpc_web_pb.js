/**
 * @fileoverview gRPC-Web generated client stub for service
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!



const grpc = {};
grpc.web = require('grpc-web');


var google_protobuf_timestamp_pb = require('google-protobuf/google/protobuf/timestamp_pb.js')

var google_protobuf_any_pb = require('google-protobuf/google/protobuf/any_pb.js')

var google_protobuf_empty_pb = require('google-protobuf/google/protobuf/empty_pb.js')

var google_rpc_status_pb = require('./google/rpc/status_pb.js')
const proto = {};
proto.service = require('./email_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.service.MailboxServiceClient =
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
proto.service.MailboxServicePromiseClient =
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
 *   !proto.google.protobuf.Empty,
 *   !proto.service.GetProfileResponse>}
 */
const methodDescriptor_MailboxService_GetProfile = new grpc.web.MethodDescriptor(
  '/service.MailboxService/GetProfile',
  grpc.web.MethodType.UNARY,
  google_protobuf_empty_pb.Empty,
  proto.service.GetProfileResponse,
  /**
   * @param {!proto.google.protobuf.Empty} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.GetProfileResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.google.protobuf.Empty,
 *   !proto.service.GetProfileResponse>}
 */
const methodInfo_MailboxService_GetProfile = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.GetProfileResponse,
  /**
   * @param {!proto.google.protobuf.Empty} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.GetProfileResponse.deserializeBinary
);


/**
 * @param {!proto.google.protobuf.Empty} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.GetProfileResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.GetProfileResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.MailboxServiceClient.prototype.getProfile =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.MailboxService/GetProfile',
      request,
      metadata || {},
      methodDescriptor_MailboxService_GetProfile,
      callback);
};


/**
 * @param {!proto.google.protobuf.Empty} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.GetProfileResponse>}
 *     A native promise that resolves to the response
 */
proto.service.MailboxServicePromiseClient.prototype.getProfile =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.MailboxService/GetProfile',
      request,
      metadata || {},
      methodDescriptor_MailboxService_GetProfile);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.ListHistoryRequest,
 *   !proto.service.ListHistoryResponse>}
 */
const methodDescriptor_MailboxService_ListHistory = new grpc.web.MethodDescriptor(
  '/service.MailboxService/ListHistory',
  grpc.web.MethodType.UNARY,
  proto.service.ListHistoryRequest,
  proto.service.ListHistoryResponse,
  /**
   * @param {!proto.service.ListHistoryRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.ListHistoryResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.ListHistoryRequest,
 *   !proto.service.ListHistoryResponse>}
 */
const methodInfo_MailboxService_ListHistory = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.ListHistoryResponse,
  /**
   * @param {!proto.service.ListHistoryRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.ListHistoryResponse.deserializeBinary
);


/**
 * @param {!proto.service.ListHistoryRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.ListHistoryResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.ListHistoryResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.MailboxServiceClient.prototype.listHistory =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.MailboxService/ListHistory',
      request,
      metadata || {},
      methodDescriptor_MailboxService_ListHistory,
      callback);
};


/**
 * @param {!proto.service.ListHistoryRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.ListHistoryResponse>}
 *     A native promise that resolves to the response
 */
proto.service.MailboxServicePromiseClient.prototype.listHistory =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.MailboxService/ListHistory',
      request,
      metadata || {},
      methodDescriptor_MailboxService_ListHistory);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.StreamStateRequest,
 *   !proto.service.StreamingStateResponse>}
 */
const methodDescriptor_MailboxService_StreamState = new grpc.web.MethodDescriptor(
  '/service.MailboxService/StreamState',
  grpc.web.MethodType.SERVER_STREAMING,
  proto.service.StreamStateRequest,
  proto.service.StreamingStateResponse,
  /**
   * @param {!proto.service.StreamStateRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.StreamingStateResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.StreamStateRequest,
 *   !proto.service.StreamingStateResponse>}
 */
const methodInfo_MailboxService_StreamState = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.StreamingStateResponse,
  /**
   * @param {!proto.service.StreamStateRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.StreamingStateResponse.deserializeBinary
);


/**
 * @param {!proto.service.StreamStateRequest} request The request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!grpc.web.ClientReadableStream<!proto.service.StreamingStateResponse>}
 *     The XHR Node Readable Stream
 */
proto.service.MailboxServiceClient.prototype.streamState =
    function(request, metadata) {
  return this.client_.serverStreaming(this.hostname_ +
      '/service.MailboxService/StreamState',
      request,
      metadata || {},
      methodDescriptor_MailboxService_StreamState);
};


/**
 * @param {!proto.service.StreamStateRequest} request The request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!grpc.web.ClientReadableStream<!proto.service.StreamingStateResponse>}
 *     The XHR Node Readable Stream
 */
proto.service.MailboxServicePromiseClient.prototype.streamState =
    function(request, metadata) {
  return this.client_.serverStreaming(this.hostname_ +
      '/service.MailboxService/StreamState',
      request,
      metadata || {},
      methodDescriptor_MailboxService_StreamState);
};


/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.service.DraftServiceClient =
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
proto.service.DraftServicePromiseClient =
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
 *   !proto.service.GetDraftRequest,
 *   !proto.service.Draft>}
 */
const methodDescriptor_DraftService_GetDraft = new grpc.web.MethodDescriptor(
  '/service.DraftService/GetDraft',
  grpc.web.MethodType.UNARY,
  proto.service.GetDraftRequest,
  proto.service.Draft,
  /**
   * @param {!proto.service.GetDraftRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Draft.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.GetDraftRequest,
 *   !proto.service.Draft>}
 */
const methodInfo_DraftService_GetDraft = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.Draft,
  /**
   * @param {!proto.service.GetDraftRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Draft.deserializeBinary
);


/**
 * @param {!proto.service.GetDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.Draft)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.Draft>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.DraftServiceClient.prototype.getDraft =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.DraftService/GetDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_GetDraft,
      callback);
};


/**
 * @param {!proto.service.GetDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.Draft>}
 *     A native promise that resolves to the response
 */
proto.service.DraftServicePromiseClient.prototype.getDraft =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.DraftService/GetDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_GetDraft);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.ListDraftsRequest,
 *   !proto.service.ListDraftsResponse>}
 */
const methodDescriptor_DraftService_ListDrafts = new grpc.web.MethodDescriptor(
  '/service.DraftService/ListDrafts',
  grpc.web.MethodType.UNARY,
  proto.service.ListDraftsRequest,
  proto.service.ListDraftsResponse,
  /**
   * @param {!proto.service.ListDraftsRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.ListDraftsResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.ListDraftsRequest,
 *   !proto.service.ListDraftsResponse>}
 */
const methodInfo_DraftService_ListDrafts = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.ListDraftsResponse,
  /**
   * @param {!proto.service.ListDraftsRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.ListDraftsResponse.deserializeBinary
);


/**
 * @param {!proto.service.ListDraftsRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.ListDraftsResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.ListDraftsResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.DraftServiceClient.prototype.listDrafts =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.DraftService/ListDrafts',
      request,
      metadata || {},
      methodDescriptor_DraftService_ListDrafts,
      callback);
};


/**
 * @param {!proto.service.ListDraftsRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.ListDraftsResponse>}
 *     A native promise that resolves to the response
 */
proto.service.DraftServicePromiseClient.prototype.listDrafts =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.DraftService/ListDrafts',
      request,
      metadata || {},
      methodDescriptor_DraftService_ListDrafts);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.CreateDraftRequest,
 *   !proto.service.Draft>}
 */
const methodDescriptor_DraftService_CreateDraft = new grpc.web.MethodDescriptor(
  '/service.DraftService/CreateDraft',
  grpc.web.MethodType.UNARY,
  proto.service.CreateDraftRequest,
  proto.service.Draft,
  /**
   * @param {!proto.service.CreateDraftRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Draft.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.CreateDraftRequest,
 *   !proto.service.Draft>}
 */
const methodInfo_DraftService_CreateDraft = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.Draft,
  /**
   * @param {!proto.service.CreateDraftRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Draft.deserializeBinary
);


/**
 * @param {!proto.service.CreateDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.Draft)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.Draft>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.DraftServiceClient.prototype.createDraft =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.DraftService/CreateDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_CreateDraft,
      callback);
};


/**
 * @param {!proto.service.CreateDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.Draft>}
 *     A native promise that resolves to the response
 */
proto.service.DraftServicePromiseClient.prototype.createDraft =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.DraftService/CreateDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_CreateDraft);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.UpdateDraftRequest,
 *   !proto.service.Draft>}
 */
const methodDescriptor_DraftService_UpdateDraft = new grpc.web.MethodDescriptor(
  '/service.DraftService/UpdateDraft',
  grpc.web.MethodType.UNARY,
  proto.service.UpdateDraftRequest,
  proto.service.Draft,
  /**
   * @param {!proto.service.UpdateDraftRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Draft.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.UpdateDraftRequest,
 *   !proto.service.Draft>}
 */
const methodInfo_DraftService_UpdateDraft = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.Draft,
  /**
   * @param {!proto.service.UpdateDraftRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Draft.deserializeBinary
);


/**
 * @param {!proto.service.UpdateDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.Draft)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.Draft>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.DraftServiceClient.prototype.updateDraft =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.DraftService/UpdateDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_UpdateDraft,
      callback);
};


/**
 * @param {!proto.service.UpdateDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.Draft>}
 *     A native promise that resolves to the response
 */
proto.service.DraftServicePromiseClient.prototype.updateDraft =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.DraftService/UpdateDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_UpdateDraft);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.DeleteDraftRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_DraftService_DeleteDraft = new grpc.web.MethodDescriptor(
  '/service.DraftService/DeleteDraft',
  grpc.web.MethodType.UNARY,
  proto.service.DeleteDraftRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.DeleteDraftRequest} request
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
 *   !proto.service.DeleteDraftRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_DraftService_DeleteDraft = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.DeleteDraftRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.service.DeleteDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.DraftServiceClient.prototype.deleteDraft =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.DraftService/DeleteDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_DeleteDraft,
      callback);
};


/**
 * @param {!proto.service.DeleteDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.service.DraftServicePromiseClient.prototype.deleteDraft =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.DraftService/DeleteDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_DeleteDraft);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.SendDraftRequest,
 *   !proto.service.Email>}
 */
const methodDescriptor_DraftService_SendDraft = new grpc.web.MethodDescriptor(
  '/service.DraftService/SendDraft',
  grpc.web.MethodType.UNARY,
  proto.service.SendDraftRequest,
  proto.service.Email,
  /**
   * @param {!proto.service.SendDraftRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Email.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.SendDraftRequest,
 *   !proto.service.Email>}
 */
const methodInfo_DraftService_SendDraft = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.Email,
  /**
   * @param {!proto.service.SendDraftRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Email.deserializeBinary
);


/**
 * @param {!proto.service.SendDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.Email)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.Email>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.DraftServiceClient.prototype.sendDraft =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.DraftService/SendDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_SendDraft,
      callback);
};


/**
 * @param {!proto.service.SendDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.Email>}
 *     A native promise that resolves to the response
 */
proto.service.DraftServicePromiseClient.prototype.sendDraft =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.DraftService/SendDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_SendDraft);
};


/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.service.EmailServiceClient =
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
proto.service.EmailServicePromiseClient =
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
 *   !proto.service.GetEmailRequest,
 *   !proto.service.Email>}
 */
const methodDescriptor_EmailService_GetEmail = new grpc.web.MethodDescriptor(
  '/service.EmailService/GetEmail',
  grpc.web.MethodType.UNARY,
  proto.service.GetEmailRequest,
  proto.service.Email,
  /**
   * @param {!proto.service.GetEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Email.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.GetEmailRequest,
 *   !proto.service.Email>}
 */
const methodInfo_EmailService_GetEmail = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.Email,
  /**
   * @param {!proto.service.GetEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Email.deserializeBinary
);


/**
 * @param {!proto.service.GetEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.Email)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.Email>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.EmailServiceClient.prototype.getEmail =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.EmailService/GetEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_GetEmail,
      callback);
};


/**
 * @param {!proto.service.GetEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.Email>}
 *     A native promise that resolves to the response
 */
proto.service.EmailServicePromiseClient.prototype.getEmail =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.EmailService/GetEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_GetEmail);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.ListEmailsRequest,
 *   !proto.service.ListEmailsResponse>}
 */
const methodDescriptor_EmailService_ListEmails = new grpc.web.MethodDescriptor(
  '/service.EmailService/ListEmails',
  grpc.web.MethodType.UNARY,
  proto.service.ListEmailsRequest,
  proto.service.ListEmailsResponse,
  /**
   * @param {!proto.service.ListEmailsRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.ListEmailsResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.ListEmailsRequest,
 *   !proto.service.ListEmailsResponse>}
 */
const methodInfo_EmailService_ListEmails = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.ListEmailsResponse,
  /**
   * @param {!proto.service.ListEmailsRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.ListEmailsResponse.deserializeBinary
);


/**
 * @param {!proto.service.ListEmailsRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.ListEmailsResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.ListEmailsResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.EmailServiceClient.prototype.listEmails =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.EmailService/ListEmails',
      request,
      metadata || {},
      methodDescriptor_EmailService_ListEmails,
      callback);
};


/**
 * @param {!proto.service.ListEmailsRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.ListEmailsResponse>}
 *     A native promise that resolves to the response
 */
proto.service.EmailServicePromiseClient.prototype.listEmails =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.EmailService/ListEmails',
      request,
      metadata || {},
      methodDescriptor_EmailService_ListEmails);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.ModifyEmailRequest,
 *   !proto.service.Email>}
 */
const methodDescriptor_EmailService_ModifyEmail = new grpc.web.MethodDescriptor(
  '/service.EmailService/ModifyEmail',
  grpc.web.MethodType.UNARY,
  proto.service.ModifyEmailRequest,
  proto.service.Email,
  /**
   * @param {!proto.service.ModifyEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Email.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.ModifyEmailRequest,
 *   !proto.service.Email>}
 */
const methodInfo_EmailService_ModifyEmail = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.Email,
  /**
   * @param {!proto.service.ModifyEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Email.deserializeBinary
);


/**
 * @param {!proto.service.ModifyEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.Email)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.Email>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.EmailServiceClient.prototype.modifyEmail =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.EmailService/ModifyEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_ModifyEmail,
      callback);
};


/**
 * @param {!proto.service.ModifyEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.Email>}
 *     A native promise that resolves to the response
 */
proto.service.EmailServicePromiseClient.prototype.modifyEmail =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.EmailService/ModifyEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_ModifyEmail);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.TrashEmailRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_EmailService_TrashEmail = new grpc.web.MethodDescriptor(
  '/service.EmailService/TrashEmail',
  grpc.web.MethodType.UNARY,
  proto.service.TrashEmailRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.TrashEmailRequest} request
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
 *   !proto.service.TrashEmailRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_EmailService_TrashEmail = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.TrashEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.service.TrashEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.EmailServiceClient.prototype.trashEmail =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.EmailService/TrashEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_TrashEmail,
      callback);
};


/**
 * @param {!proto.service.TrashEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.service.EmailServicePromiseClient.prototype.trashEmail =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.EmailService/TrashEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_TrashEmail);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.UntrashEmailRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_EmailService_UntrashEmail = new grpc.web.MethodDescriptor(
  '/service.EmailService/UntrashEmail',
  grpc.web.MethodType.UNARY,
  proto.service.UntrashEmailRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.UntrashEmailRequest} request
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
 *   !proto.service.UntrashEmailRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_EmailService_UntrashEmail = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.UntrashEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.service.UntrashEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.EmailServiceClient.prototype.untrashEmail =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.EmailService/UntrashEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_UntrashEmail,
      callback);
};


/**
 * @param {!proto.service.UntrashEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.service.EmailServicePromiseClient.prototype.untrashEmail =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.EmailService/UntrashEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_UntrashEmail);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.SendEmailRequest,
 *   !proto.service.Email>}
 */
const methodDescriptor_EmailService_SendEmail = new grpc.web.MethodDescriptor(
  '/service.EmailService/SendEmail',
  grpc.web.MethodType.UNARY,
  proto.service.SendEmailRequest,
  proto.service.Email,
  /**
   * @param {!proto.service.SendEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Email.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.SendEmailRequest,
 *   !proto.service.Email>}
 */
const methodInfo_EmailService_SendEmail = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.Email,
  /**
   * @param {!proto.service.SendEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Email.deserializeBinary
);


/**
 * @param {!proto.service.SendEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.Email)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.Email>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.EmailServiceClient.prototype.sendEmail =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.EmailService/SendEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_SendEmail,
      callback);
};


/**
 * @param {!proto.service.SendEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.Email>}
 *     A native promise that resolves to the response
 */
proto.service.EmailServicePromiseClient.prototype.sendEmail =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.EmailService/SendEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_SendEmail);
};


/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.service.ThreadServiceClient =
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
proto.service.ThreadServicePromiseClient =
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
 *   !proto.service.GetThreadRequest,
 *   !proto.service.Thread>}
 */
const methodDescriptor_ThreadService_GetThread = new grpc.web.MethodDescriptor(
  '/service.ThreadService/GetThread',
  grpc.web.MethodType.UNARY,
  proto.service.GetThreadRequest,
  proto.service.Thread,
  /**
   * @param {!proto.service.GetThreadRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Thread.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.GetThreadRequest,
 *   !proto.service.Thread>}
 */
const methodInfo_ThreadService_GetThread = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.Thread,
  /**
   * @param {!proto.service.GetThreadRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Thread.deserializeBinary
);


/**
 * @param {!proto.service.GetThreadRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.Thread)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.Thread>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.ThreadServiceClient.prototype.getThread =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.ThreadService/GetThread',
      request,
      metadata || {},
      methodDescriptor_ThreadService_GetThread,
      callback);
};


/**
 * @param {!proto.service.GetThreadRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.Thread>}
 *     A native promise that resolves to the response
 */
proto.service.ThreadServicePromiseClient.prototype.getThread =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.ThreadService/GetThread',
      request,
      metadata || {},
      methodDescriptor_ThreadService_GetThread);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.ListThreadsRequest,
 *   !proto.service.ListThreadsResponse>}
 */
const methodDescriptor_ThreadService_ListThreads = new grpc.web.MethodDescriptor(
  '/service.ThreadService/ListThreads',
  grpc.web.MethodType.UNARY,
  proto.service.ListThreadsRequest,
  proto.service.ListThreadsResponse,
  /**
   * @param {!proto.service.ListThreadsRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.ListThreadsResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.ListThreadsRequest,
 *   !proto.service.ListThreadsResponse>}
 */
const methodInfo_ThreadService_ListThreads = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.ListThreadsResponse,
  /**
   * @param {!proto.service.ListThreadsRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.ListThreadsResponse.deserializeBinary
);


/**
 * @param {!proto.service.ListThreadsRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.ListThreadsResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.ListThreadsResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.ThreadServiceClient.prototype.listThreads =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.ThreadService/ListThreads',
      request,
      metadata || {},
      methodDescriptor_ThreadService_ListThreads,
      callback);
};


/**
 * @param {!proto.service.ListThreadsRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.ListThreadsResponse>}
 *     A native promise that resolves to the response
 */
proto.service.ThreadServicePromiseClient.prototype.listThreads =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.ThreadService/ListThreads',
      request,
      metadata || {},
      methodDescriptor_ThreadService_ListThreads);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.ModifyThreadRequest,
 *   !proto.service.Thread>}
 */
const methodDescriptor_ThreadService_ModifyThread = new grpc.web.MethodDescriptor(
  '/service.ThreadService/ModifyThread',
  grpc.web.MethodType.UNARY,
  proto.service.ModifyThreadRequest,
  proto.service.Thread,
  /**
   * @param {!proto.service.ModifyThreadRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Thread.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.ModifyThreadRequest,
 *   !proto.service.Thread>}
 */
const methodInfo_ThreadService_ModifyThread = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.Thread,
  /**
   * @param {!proto.service.ModifyThreadRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Thread.deserializeBinary
);


/**
 * @param {!proto.service.ModifyThreadRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.Thread)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.Thread>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.ThreadServiceClient.prototype.modifyThread =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.ThreadService/ModifyThread',
      request,
      metadata || {},
      methodDescriptor_ThreadService_ModifyThread,
      callback);
};


/**
 * @param {!proto.service.ModifyThreadRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.Thread>}
 *     A native promise that resolves to the response
 */
proto.service.ThreadServicePromiseClient.prototype.modifyThread =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.ThreadService/ModifyThread',
      request,
      metadata || {},
      methodDescriptor_ThreadService_ModifyThread);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.TrashThreadRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_ThreadService_TrashThread = new grpc.web.MethodDescriptor(
  '/service.ThreadService/TrashThread',
  grpc.web.MethodType.UNARY,
  proto.service.TrashThreadRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.TrashThreadRequest} request
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
 *   !proto.service.TrashThreadRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_ThreadService_TrashThread = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.TrashThreadRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.service.TrashThreadRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.ThreadServiceClient.prototype.trashThread =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.ThreadService/TrashThread',
      request,
      metadata || {},
      methodDescriptor_ThreadService_TrashThread,
      callback);
};


/**
 * @param {!proto.service.TrashThreadRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.service.ThreadServicePromiseClient.prototype.trashThread =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.ThreadService/TrashThread',
      request,
      metadata || {},
      methodDescriptor_ThreadService_TrashThread);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.UntrashThreadRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_ThreadService_UntrashThread = new grpc.web.MethodDescriptor(
  '/service.ThreadService/UntrashThread',
  grpc.web.MethodType.UNARY,
  proto.service.UntrashThreadRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.UntrashThreadRequest} request
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
 *   !proto.service.UntrashThreadRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_ThreadService_UntrashThread = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.UntrashThreadRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.service.UntrashThreadRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.ThreadServiceClient.prototype.untrashThread =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.ThreadService/UntrashThread',
      request,
      metadata || {},
      methodDescriptor_ThreadService_UntrashThread,
      callback);
};


/**
 * @param {!proto.service.UntrashThreadRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.service.ThreadServicePromiseClient.prototype.untrashThread =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.ThreadService/UntrashThread',
      request,
      metadata || {},
      methodDescriptor_ThreadService_UntrashThread);
};


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
 *   !proto.service.GetLabelRequest,
 *   !proto.service.Label>}
 */
const methodDescriptor_LabelService_GetLabel = new grpc.web.MethodDescriptor(
  '/service.LabelService/GetLabel',
  grpc.web.MethodType.UNARY,
  proto.service.GetLabelRequest,
  proto.service.Label,
  /**
   * @param {!proto.service.GetLabelRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Label.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.GetLabelRequest,
 *   !proto.service.Label>}
 */
const methodInfo_LabelService_GetLabel = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.Label,
  /**
   * @param {!proto.service.GetLabelRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Label.deserializeBinary
);


/**
 * @param {!proto.service.GetLabelRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.Label)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.Label>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.LabelServiceClient.prototype.getLabel =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.LabelService/GetLabel',
      request,
      metadata || {},
      methodDescriptor_LabelService_GetLabel,
      callback);
};


/**
 * @param {!proto.service.GetLabelRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.Label>}
 *     A native promise that resolves to the response
 */
proto.service.LabelServicePromiseClient.prototype.getLabel =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.LabelService/GetLabel',
      request,
      metadata || {},
      methodDescriptor_LabelService_GetLabel);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.google.protobuf.Empty,
 *   !proto.service.ListLabelsResponse>}
 */
const methodDescriptor_LabelService_ListLabels = new grpc.web.MethodDescriptor(
  '/service.LabelService/ListLabels',
  grpc.web.MethodType.UNARY,
  google_protobuf_empty_pb.Empty,
  proto.service.ListLabelsResponse,
  /**
   * @param {!proto.google.protobuf.Empty} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.ListLabelsResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.google.protobuf.Empty,
 *   !proto.service.ListLabelsResponse>}
 */
const methodInfo_LabelService_ListLabels = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.ListLabelsResponse,
  /**
   * @param {!proto.google.protobuf.Empty} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.ListLabelsResponse.deserializeBinary
);


/**
 * @param {!proto.google.protobuf.Empty} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.ListLabelsResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.ListLabelsResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.LabelServiceClient.prototype.listLabels =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.LabelService/ListLabels',
      request,
      metadata || {},
      methodDescriptor_LabelService_ListLabels,
      callback);
};


/**
 * @param {!proto.google.protobuf.Empty} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.ListLabelsResponse>}
 *     A native promise that resolves to the response
 */
proto.service.LabelServicePromiseClient.prototype.listLabels =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.LabelService/ListLabels',
      request,
      metadata || {},
      methodDescriptor_LabelService_ListLabels);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.CreateLabelRequest,
 *   !proto.service.Label>}
 */
const methodDescriptor_LabelService_CreateLabel = new grpc.web.MethodDescriptor(
  '/service.LabelService/CreateLabel',
  grpc.web.MethodType.UNARY,
  proto.service.CreateLabelRequest,
  proto.service.Label,
  /**
   * @param {!proto.service.CreateLabelRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Label.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.CreateLabelRequest,
 *   !proto.service.Label>}
 */
const methodInfo_LabelService_CreateLabel = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.Label,
  /**
   * @param {!proto.service.CreateLabelRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Label.deserializeBinary
);


/**
 * @param {!proto.service.CreateLabelRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.Label)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.Label>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.LabelServiceClient.prototype.createLabel =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.LabelService/CreateLabel',
      request,
      metadata || {},
      methodDescriptor_LabelService_CreateLabel,
      callback);
};


/**
 * @param {!proto.service.CreateLabelRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.Label>}
 *     A native promise that resolves to the response
 */
proto.service.LabelServicePromiseClient.prototype.createLabel =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.LabelService/CreateLabel',
      request,
      metadata || {},
      methodDescriptor_LabelService_CreateLabel);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.UpdateLabelRequest,
 *   !proto.service.Label>}
 */
const methodDescriptor_LabelService_UpdateLabel = new grpc.web.MethodDescriptor(
  '/service.LabelService/UpdateLabel',
  grpc.web.MethodType.UNARY,
  proto.service.UpdateLabelRequest,
  proto.service.Label,
  /**
   * @param {!proto.service.UpdateLabelRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Label.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.UpdateLabelRequest,
 *   !proto.service.Label>}
 */
const methodInfo_LabelService_UpdateLabel = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.Label,
  /**
   * @param {!proto.service.UpdateLabelRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.Label.deserializeBinary
);


/**
 * @param {!proto.service.UpdateLabelRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.Label)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.Label>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.LabelServiceClient.prototype.updateLabel =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.LabelService/UpdateLabel',
      request,
      metadata || {},
      methodDescriptor_LabelService_UpdateLabel,
      callback);
};


/**
 * @param {!proto.service.UpdateLabelRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.Label>}
 *     A native promise that resolves to the response
 */
proto.service.LabelServicePromiseClient.prototype.updateLabel =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.LabelService/UpdateLabel',
      request,
      metadata || {},
      methodDescriptor_LabelService_UpdateLabel);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.DeleteLabelRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_LabelService_DeleteLabel = new grpc.web.MethodDescriptor(
  '/service.LabelService/DeleteLabel',
  grpc.web.MethodType.UNARY,
  proto.service.DeleteLabelRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.DeleteLabelRequest} request
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
 *   !proto.service.DeleteLabelRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_LabelService_DeleteLabel = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.DeleteLabelRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.service.DeleteLabelRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.LabelServiceClient.prototype.deleteLabel =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.LabelService/DeleteLabel',
      request,
      metadata || {},
      methodDescriptor_LabelService_DeleteLabel,
      callback);
};


/**
 * @param {!proto.service.DeleteLabelRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.service.LabelServicePromiseClient.prototype.deleteLabel =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.LabelService/DeleteLabel',
      request,
      metadata || {},
      methodDescriptor_LabelService_DeleteLabel);
};


module.exports = proto.service;

