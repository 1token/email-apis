GOOGLEAPIS_DIR=./third_party/googleapis

#install-dependencies:
#	go get github.com/gogo/protobuf/protoc-gen-gofast

build-proto:
	protoc -I$(GOOGLEAPIS_DIR) \
			-I/usr/local/include \
			-I apis \
			--go_out=plugins=grpc:generated/go \
			email.proto

	protoc -I$(GOOGLEAPIS_DIR) \
			-I/usr/local/include \
			-I apis \
			--go_out=plugins=grpc:generated/go \
			account.proto

	protoc -I$(GOOGLEAPIS_DIR) \
			-I/usr/local/include \
			-I apis \
			--go_out=plugins=grpc:generated/go \
			attachment.proto

	protoc -I$(GOOGLEAPIS_DIR) \
			-I/usr/local/include \
			-I apis \
			--js_out=import_style=commonjs:generated/js \
			--grpc-web_out=import_style=commonjs,mode=grpcwebtext:generated/js \
			email.proto

	protoc -I$(GOOGLEAPIS_DIR) \
			-I/usr/local/include \
			-I apis \
			--js_out=import_style=commonjs:generated/js \
			--grpc-web_out=import_style=commonjs,mode=grpcwebtext:generated/js \
			account.proto

	protoc -I$(GOOGLEAPIS_DIR) \
			-I/usr/local/include \
			-I apis \
			--js_out=import_style=commonjs:generated/js \
			--grpc-web_out=import_style=commonjs,mode=grpcwebtext:generated/js \
			attachment.proto

clean:
	rm -r generated/go/*
	rm -r generated/js/*