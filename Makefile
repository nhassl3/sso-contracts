gen:
	@go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
	@go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
	@protoc -I proto proto/sso/sso.proto --go_out=./generated/go --go_opt=paths=source_relative --go-grpc_out=./generated/go/ --go-grpc-opt_out=paths=source_relative

-DEFAULT-GOAL: gen
