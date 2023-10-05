import ballerina/io;
import ballerina/os;

public function main() {
    // Command to run the gRPC command
    string grpcCommand = "bal grpc --input resources/user_service.proto";

    // Execute the command
    var result = os:executeCommand(grpcCommand, null);

    // Check the exit status
    if (result.returnCode != 0) {
        io:println("Error: gRPC command failed with exit status " + result.returnCode);
    } else {
        io:println("gRPC command completed successfully.");
    }
}
