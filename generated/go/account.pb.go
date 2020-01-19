// Code generated by protoc-gen-go. DO NOT EDIT.
// source: account.proto

package service

import (
	context "context"
	fmt "fmt"
	proto "github.com/golang/protobuf/proto"
	empty "github.com/golang/protobuf/ptypes/empty"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
	math "math"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.ProtoPackageIsVersion3 // please upgrade the proto package

type SignupRequest struct {
	Username             string   `protobuf:"bytes,1,opt,name=username,proto3" json:"username,omitempty"`
	Password             string   `protobuf:"bytes,2,opt,name=password,proto3" json:"password,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *SignupRequest) Reset()         { *m = SignupRequest{} }
func (m *SignupRequest) String() string { return proto.CompactTextString(m) }
func (*SignupRequest) ProtoMessage()    {}
func (*SignupRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_8e28828dcb8d24f0, []int{0}
}

func (m *SignupRequest) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_SignupRequest.Unmarshal(m, b)
}
func (m *SignupRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_SignupRequest.Marshal(b, m, deterministic)
}
func (m *SignupRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_SignupRequest.Merge(m, src)
}
func (m *SignupRequest) XXX_Size() int {
	return xxx_messageInfo_SignupRequest.Size(m)
}
func (m *SignupRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_SignupRequest.DiscardUnknown(m)
}

var xxx_messageInfo_SignupRequest proto.InternalMessageInfo

func (m *SignupRequest) GetUsername() string {
	if m != nil {
		return m.Username
	}
	return ""
}

func (m *SignupRequest) GetPassword() string {
	if m != nil {
		return m.Password
	}
	return ""
}

type VerifyEmailRequest struct {
	Email                string   `protobuf:"bytes,1,opt,name=email,proto3" json:"email,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *VerifyEmailRequest) Reset()         { *m = VerifyEmailRequest{} }
func (m *VerifyEmailRequest) String() string { return proto.CompactTextString(m) }
func (*VerifyEmailRequest) ProtoMessage()    {}
func (*VerifyEmailRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_8e28828dcb8d24f0, []int{1}
}

func (m *VerifyEmailRequest) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_VerifyEmailRequest.Unmarshal(m, b)
}
func (m *VerifyEmailRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_VerifyEmailRequest.Marshal(b, m, deterministic)
}
func (m *VerifyEmailRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_VerifyEmailRequest.Merge(m, src)
}
func (m *VerifyEmailRequest) XXX_Size() int {
	return xxx_messageInfo_VerifyEmailRequest.Size(m)
}
func (m *VerifyEmailRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_VerifyEmailRequest.DiscardUnknown(m)
}

var xxx_messageInfo_VerifyEmailRequest proto.InternalMessageInfo

func (m *VerifyEmailRequest) GetEmail() string {
	if m != nil {
		return m.Email
	}
	return ""
}

type SigninRequest struct {
	Username             string   `protobuf:"bytes,1,opt,name=username,proto3" json:"username,omitempty"`
	Password             string   `protobuf:"bytes,2,opt,name=password,proto3" json:"password,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *SigninRequest) Reset()         { *m = SigninRequest{} }
func (m *SigninRequest) String() string { return proto.CompactTextString(m) }
func (*SigninRequest) ProtoMessage()    {}
func (*SigninRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_8e28828dcb8d24f0, []int{2}
}

func (m *SigninRequest) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_SigninRequest.Unmarshal(m, b)
}
func (m *SigninRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_SigninRequest.Marshal(b, m, deterministic)
}
func (m *SigninRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_SigninRequest.Merge(m, src)
}
func (m *SigninRequest) XXX_Size() int {
	return xxx_messageInfo_SigninRequest.Size(m)
}
func (m *SigninRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_SigninRequest.DiscardUnknown(m)
}

var xxx_messageInfo_SigninRequest proto.InternalMessageInfo

func (m *SigninRequest) GetUsername() string {
	if m != nil {
		return m.Username
	}
	return ""
}

func (m *SigninRequest) GetPassword() string {
	if m != nil {
		return m.Password
	}
	return ""
}

type SigninResponse struct {
	Token                string   `protobuf:"bytes,1,opt,name=token,proto3" json:"token,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *SigninResponse) Reset()         { *m = SigninResponse{} }
func (m *SigninResponse) String() string { return proto.CompactTextString(m) }
func (*SigninResponse) ProtoMessage()    {}
func (*SigninResponse) Descriptor() ([]byte, []int) {
	return fileDescriptor_8e28828dcb8d24f0, []int{3}
}

func (m *SigninResponse) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_SigninResponse.Unmarshal(m, b)
}
func (m *SigninResponse) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_SigninResponse.Marshal(b, m, deterministic)
}
func (m *SigninResponse) XXX_Merge(src proto.Message) {
	xxx_messageInfo_SigninResponse.Merge(m, src)
}
func (m *SigninResponse) XXX_Size() int {
	return xxx_messageInfo_SigninResponse.Size(m)
}
func (m *SigninResponse) XXX_DiscardUnknown() {
	xxx_messageInfo_SigninResponse.DiscardUnknown(m)
}

var xxx_messageInfo_SigninResponse proto.InternalMessageInfo

func (m *SigninResponse) GetToken() string {
	if m != nil {
		return m.Token
	}
	return ""
}

type ResetPasswordRequest struct {
	Token                string   `protobuf:"bytes,1,opt,name=token,proto3" json:"token,omitempty"`
	Password             string   `protobuf:"bytes,2,opt,name=password,proto3" json:"password,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *ResetPasswordRequest) Reset()         { *m = ResetPasswordRequest{} }
func (m *ResetPasswordRequest) String() string { return proto.CompactTextString(m) }
func (*ResetPasswordRequest) ProtoMessage()    {}
func (*ResetPasswordRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_8e28828dcb8d24f0, []int{4}
}

func (m *ResetPasswordRequest) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_ResetPasswordRequest.Unmarshal(m, b)
}
func (m *ResetPasswordRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_ResetPasswordRequest.Marshal(b, m, deterministic)
}
func (m *ResetPasswordRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_ResetPasswordRequest.Merge(m, src)
}
func (m *ResetPasswordRequest) XXX_Size() int {
	return xxx_messageInfo_ResetPasswordRequest.Size(m)
}
func (m *ResetPasswordRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_ResetPasswordRequest.DiscardUnknown(m)
}

var xxx_messageInfo_ResetPasswordRequest proto.InternalMessageInfo

func (m *ResetPasswordRequest) GetToken() string {
	if m != nil {
		return m.Token
	}
	return ""
}

func (m *ResetPasswordRequest) GetPassword() string {
	if m != nil {
		return m.Password
	}
	return ""
}

type UserInfoResponse struct {
	Username   string `protobuf:"bytes,1,opt,name=username,proto3" json:"username,omitempty"`
	Email      string `protobuf:"bytes,2,opt,name=email,proto3" json:"email,omitempty"`
	Name       string `protobuf:"bytes,3,opt,name=name,proto3" json:"name,omitempty"`
	GivenName  string `protobuf:"bytes,4,opt,name=given_name,json=givenName,proto3" json:"given_name,omitempty"`
	FamilyName string `protobuf:"bytes,5,opt,name=family_name,json=familyName,proto3" json:"family_name,omitempty"`
	// Types that are valid to be assigned to Picture:
	//	*UserInfoResponse_Data
	//	*UserInfoResponse_Uri
	Picture              isUserInfoResponse_Picture `protobuf_oneof:"picture"`
	XXX_NoUnkeyedLiteral struct{}                   `json:"-"`
	XXX_unrecognized     []byte                     `json:"-"`
	XXX_sizecache        int32                      `json:"-"`
}

func (m *UserInfoResponse) Reset()         { *m = UserInfoResponse{} }
func (m *UserInfoResponse) String() string { return proto.CompactTextString(m) }
func (*UserInfoResponse) ProtoMessage()    {}
func (*UserInfoResponse) Descriptor() ([]byte, []int) {
	return fileDescriptor_8e28828dcb8d24f0, []int{5}
}

func (m *UserInfoResponse) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_UserInfoResponse.Unmarshal(m, b)
}
func (m *UserInfoResponse) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_UserInfoResponse.Marshal(b, m, deterministic)
}
func (m *UserInfoResponse) XXX_Merge(src proto.Message) {
	xxx_messageInfo_UserInfoResponse.Merge(m, src)
}
func (m *UserInfoResponse) XXX_Size() int {
	return xxx_messageInfo_UserInfoResponse.Size(m)
}
func (m *UserInfoResponse) XXX_DiscardUnknown() {
	xxx_messageInfo_UserInfoResponse.DiscardUnknown(m)
}

var xxx_messageInfo_UserInfoResponse proto.InternalMessageInfo

func (m *UserInfoResponse) GetUsername() string {
	if m != nil {
		return m.Username
	}
	return ""
}

func (m *UserInfoResponse) GetEmail() string {
	if m != nil {
		return m.Email
	}
	return ""
}

func (m *UserInfoResponse) GetName() string {
	if m != nil {
		return m.Name
	}
	return ""
}

func (m *UserInfoResponse) GetGivenName() string {
	if m != nil {
		return m.GivenName
	}
	return ""
}

func (m *UserInfoResponse) GetFamilyName() string {
	if m != nil {
		return m.FamilyName
	}
	return ""
}

type isUserInfoResponse_Picture interface {
	isUserInfoResponse_Picture()
}

type UserInfoResponse_Data struct {
	Data []byte `protobuf:"bytes,6,opt,name=data,proto3,oneof"`
}

type UserInfoResponse_Uri struct {
	Uri string `protobuf:"bytes,7,opt,name=uri,proto3,oneof"`
}

func (*UserInfoResponse_Data) isUserInfoResponse_Picture() {}

func (*UserInfoResponse_Uri) isUserInfoResponse_Picture() {}

func (m *UserInfoResponse) GetPicture() isUserInfoResponse_Picture {
	if m != nil {
		return m.Picture
	}
	return nil
}

func (m *UserInfoResponse) GetData() []byte {
	if x, ok := m.GetPicture().(*UserInfoResponse_Data); ok {
		return x.Data
	}
	return nil
}

func (m *UserInfoResponse) GetUri() string {
	if x, ok := m.GetPicture().(*UserInfoResponse_Uri); ok {
		return x.Uri
	}
	return ""
}

// XXX_OneofWrappers is for the internal use of the proto package.
func (*UserInfoResponse) XXX_OneofWrappers() []interface{} {
	return []interface{}{
		(*UserInfoResponse_Data)(nil),
		(*UserInfoResponse_Uri)(nil),
	}
}

func init() {
	proto.RegisterType((*SignupRequest)(nil), "service.SignupRequest")
	proto.RegisterType((*VerifyEmailRequest)(nil), "service.VerifyEmailRequest")
	proto.RegisterType((*SigninRequest)(nil), "service.SigninRequest")
	proto.RegisterType((*SigninResponse)(nil), "service.SigninResponse")
	proto.RegisterType((*ResetPasswordRequest)(nil), "service.ResetPasswordRequest")
	proto.RegisterType((*UserInfoResponse)(nil), "service.UserInfoResponse")
}

func init() { proto.RegisterFile("account.proto", fileDescriptor_8e28828dcb8d24f0) }

var fileDescriptor_8e28828dcb8d24f0 = []byte{
	// 405 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xa4, 0x92, 0xcd, 0xee, 0xd2, 0x40,
	0x14, 0xc5, 0x5b, 0xfe, 0x7c, 0x5e, 0x84, 0x98, 0x09, 0xc1, 0x5a, 0x42, 0x24, 0x5d, 0x18, 0xe2,
	0xa2, 0x24, 0xba, 0xd3, 0x85, 0xd1, 0x48, 0xac, 0x1b, 0x62, 0x4a, 0x74, 0x6b, 0x4a, 0xb9, 0x6d,
	0x26, 0xd2, 0x99, 0x3a, 0x33, 0xc5, 0xf0, 0x90, 0xbe, 0x80, 0x4f, 0x63, 0x3a, 0x43, 0x1b, 0x3e,
	0xb4, 0x1b, 0x77, 0x9c, 0x7b, 0x0e, 0xf7, 0xdc, 0x74, 0x7e, 0x30, 0x8a, 0xe2, 0x98, 0x17, 0x4c,
	0xf9, 0xb9, 0xe0, 0x8a, 0x93, 0x9e, 0x44, 0x71, 0xa4, 0x31, 0xba, 0xb3, 0x94, 0xf3, 0xf4, 0x80,
	0x2b, 0x3d, 0xde, 0x15, 0xc9, 0x0a, 0xb3, 0x5c, 0x9d, 0x4c, 0xca, 0xfb, 0x08, 0xa3, 0x2d, 0x4d,
	0x59, 0x91, 0x87, 0xf8, 0xa3, 0x40, 0xa9, 0x88, 0x0b, 0xfd, 0x42, 0xa2, 0x60, 0x51, 0x86, 0x8e,
	0xbd, 0xb0, 0x97, 0x83, 0xb0, 0xd6, 0xa5, 0x97, 0x47, 0x52, 0xfe, 0xe4, 0x62, 0xef, 0xb4, 0x8c,
	0x57, 0x69, 0xef, 0x05, 0x90, 0xaf, 0x28, 0x68, 0x72, 0x5a, 0x67, 0x11, 0x3d, 0x54, 0xdb, 0x26,
	0xd0, 0xc1, 0x52, 0x9f, 0x57, 0x19, 0x51, 0x95, 0x52, 0xf6, 0xbf, 0xa5, 0xcf, 0x61, 0x5c, 0x2d,
	0x92, 0x39, 0x67, 0x12, 0xcb, 0x42, 0xc5, 0xbf, 0x23, 0xab, 0x0a, 0xb5, 0xf0, 0x02, 0x98, 0x84,
	0x28, 0x51, 0x7d, 0x3e, 0xff, 0xf1, 0xe2, 0xbc, 0xfb, 0x74, 0x63, 0xe3, 0x2f, 0x1b, 0x1e, 0x7f,
	0x91, 0x28, 0x3e, 0xb1, 0x84, 0xd7, 0xa5, 0x4d, 0xe7, 0xd7, 0x5f, 0xa0, 0x75, 0xf1, 0x05, 0x08,
	0x81, 0xb6, 0x4e, 0x3f, 0xe8, 0xa1, 0xfe, 0x4d, 0xe6, 0x00, 0x29, 0x3d, 0x22, 0xfb, 0xa6, 0x9d,
	0xb6, 0x76, 0x06, 0x7a, 0xb2, 0x29, 0xed, 0x67, 0x30, 0x4c, 0xa2, 0x8c, 0x1e, 0x4e, 0xc6, 0xef,
	0x68, 0x1f, 0xcc, 0x68, 0x63, 0x9a, 0xda, 0xfb, 0x48, 0x45, 0x4e, 0x77, 0x61, 0x2f, 0x1f, 0x05,
	0x56, 0xa8, 0x15, 0x21, 0xf0, 0x50, 0x08, 0xea, 0xf4, 0xca, 0x78, 0x60, 0x85, 0xa5, 0x78, 0x3f,
	0x80, 0x5e, 0x4e, 0x63, 0x55, 0x08, 0x7c, 0xf9, 0xbb, 0x05, 0xe3, 0x77, 0x86, 0x9b, 0xad, 0xe1,
	0x85, 0xbc, 0x86, 0xae, 0x41, 0x82, 0x4c, 0xfd, 0x33, 0x43, 0xfe, 0x15, 0x23, 0xee, 0xd4, 0x37,
	0x48, 0xf9, 0x15, 0x52, 0xfe, 0xba, 0x44, 0xca, 0xb3, 0xc8, 0x07, 0x18, 0x5e, 0x50, 0x40, 0x66,
	0xf5, 0x82, 0x7b, 0x36, 0x1a, 0xb6, 0xbc, 0x31, 0x17, 0x50, 0x76, 0x73, 0x41, 0x0d, 0x8c, 0xfb,
	0xe4, 0x6e, 0x6e, 0x9e, 0xc2, 0xb3, 0x48, 0x00, 0xa3, 0xab, 0xb7, 0x26, 0xf3, 0x3a, 0xfb, 0x37,
	0x06, 0x1a, 0xce, 0x78, 0x0b, 0xfd, 0xea, 0xa9, 0xc9, 0x3f, 0x52, 0xee, 0xd3, 0x7a, 0xf9, 0x2d,
	0x15, 0x9e, 0xb5, 0xeb, 0xea, 0xf0, 0xab, 0x3f, 0x01, 0x00, 0x00, 0xff, 0xff, 0xc8, 0xbf, 0xc5,
	0xed, 0x9a, 0x03, 0x00, 0x00,
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConn

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion4

// AccountServiceClient is the client API for AccountService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type AccountServiceClient interface {
	Signup(ctx context.Context, in *SignupRequest, opts ...grpc.CallOption) (*empty.Empty, error)
	VerifyEmail(ctx context.Context, in *VerifyEmailRequest, opts ...grpc.CallOption) (*empty.Empty, error)
	Signin(ctx context.Context, in *SigninRequest, opts ...grpc.CallOption) (*SigninResponse, error)
	ResetPassword(ctx context.Context, in *ResetPasswordRequest, opts ...grpc.CallOption) (*empty.Empty, error)
	UserInfo(ctx context.Context, in *empty.Empty, opts ...grpc.CallOption) (*UserInfoResponse, error)
}

type accountServiceClient struct {
	cc *grpc.ClientConn
}

func NewAccountServiceClient(cc *grpc.ClientConn) AccountServiceClient {
	return &accountServiceClient{cc}
}

func (c *accountServiceClient) Signup(ctx context.Context, in *SignupRequest, opts ...grpc.CallOption) (*empty.Empty, error) {
	out := new(empty.Empty)
	err := c.cc.Invoke(ctx, "/service.AccountService/Signup", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *accountServiceClient) VerifyEmail(ctx context.Context, in *VerifyEmailRequest, opts ...grpc.CallOption) (*empty.Empty, error) {
	out := new(empty.Empty)
	err := c.cc.Invoke(ctx, "/service.AccountService/VerifyEmail", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *accountServiceClient) Signin(ctx context.Context, in *SigninRequest, opts ...grpc.CallOption) (*SigninResponse, error) {
	out := new(SigninResponse)
	err := c.cc.Invoke(ctx, "/service.AccountService/Signin", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *accountServiceClient) ResetPassword(ctx context.Context, in *ResetPasswordRequest, opts ...grpc.CallOption) (*empty.Empty, error) {
	out := new(empty.Empty)
	err := c.cc.Invoke(ctx, "/service.AccountService/ResetPassword", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *accountServiceClient) UserInfo(ctx context.Context, in *empty.Empty, opts ...grpc.CallOption) (*UserInfoResponse, error) {
	out := new(UserInfoResponse)
	err := c.cc.Invoke(ctx, "/service.AccountService/UserInfo", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// AccountServiceServer is the server API for AccountService service.
type AccountServiceServer interface {
	Signup(context.Context, *SignupRequest) (*empty.Empty, error)
	VerifyEmail(context.Context, *VerifyEmailRequest) (*empty.Empty, error)
	Signin(context.Context, *SigninRequest) (*SigninResponse, error)
	ResetPassword(context.Context, *ResetPasswordRequest) (*empty.Empty, error)
	UserInfo(context.Context, *empty.Empty) (*UserInfoResponse, error)
}

// UnimplementedAccountServiceServer can be embedded to have forward compatible implementations.
type UnimplementedAccountServiceServer struct {
}

func (*UnimplementedAccountServiceServer) Signup(ctx context.Context, req *SignupRequest) (*empty.Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Signup not implemented")
}
func (*UnimplementedAccountServiceServer) VerifyEmail(ctx context.Context, req *VerifyEmailRequest) (*empty.Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method VerifyEmail not implemented")
}
func (*UnimplementedAccountServiceServer) Signin(ctx context.Context, req *SigninRequest) (*SigninResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Signin not implemented")
}
func (*UnimplementedAccountServiceServer) ResetPassword(ctx context.Context, req *ResetPasswordRequest) (*empty.Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method ResetPassword not implemented")
}
func (*UnimplementedAccountServiceServer) UserInfo(ctx context.Context, req *empty.Empty) (*UserInfoResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UserInfo not implemented")
}

func RegisterAccountServiceServer(s *grpc.Server, srv AccountServiceServer) {
	s.RegisterService(&_AccountService_serviceDesc, srv)
}

func _AccountService_Signup_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(SignupRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(AccountServiceServer).Signup(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/service.AccountService/Signup",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(AccountServiceServer).Signup(ctx, req.(*SignupRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _AccountService_VerifyEmail_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(VerifyEmailRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(AccountServiceServer).VerifyEmail(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/service.AccountService/VerifyEmail",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(AccountServiceServer).VerifyEmail(ctx, req.(*VerifyEmailRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _AccountService_Signin_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(SigninRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(AccountServiceServer).Signin(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/service.AccountService/Signin",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(AccountServiceServer).Signin(ctx, req.(*SigninRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _AccountService_ResetPassword_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(ResetPasswordRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(AccountServiceServer).ResetPassword(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/service.AccountService/ResetPassword",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(AccountServiceServer).ResetPassword(ctx, req.(*ResetPasswordRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _AccountService_UserInfo_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(empty.Empty)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(AccountServiceServer).UserInfo(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/service.AccountService/UserInfo",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(AccountServiceServer).UserInfo(ctx, req.(*empty.Empty))
	}
	return interceptor(ctx, in, info, handler)
}

var _AccountService_serviceDesc = grpc.ServiceDesc{
	ServiceName: "service.AccountService",
	HandlerType: (*AccountServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "Signup",
			Handler:    _AccountService_Signup_Handler,
		},
		{
			MethodName: "VerifyEmail",
			Handler:    _AccountService_VerifyEmail_Handler,
		},
		{
			MethodName: "Signin",
			Handler:    _AccountService_Signin_Handler,
		},
		{
			MethodName: "ResetPassword",
			Handler:    _AccountService_ResetPassword_Handler,
		},
		{
			MethodName: "UserInfo",
			Handler:    _AccountService_UserInfo_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "account.proto",
}
