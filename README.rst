Matrix OpenWebRTC wrapper for iOS
=================================

This library enables OpenWebRTC voice and video calls in a Matrix application.

It is a wrapper between matrix-ios-sdk (https://github.com/matrix-org/matrix-ios-sdk) and openwebrtc-ios-sdk (https://github.com/EricssonResearch/openwebrtc-ios-sdk). It implements the VoIP protocol defined in MatrixSDK by using the OpenWebRTC iOS SDK.

To enable OpenWebRTC into an application running the Matrix SDK:

1) Add this lib into the application podfile::

    pod 'MatrixOpenWebRTCWrapper'

2) Pass an instance of it to the Matrix SDK MXSession object::

    id<MXCallStack> callStack = [[MXOpenWebRTCCallStack alloc] init];
    [mxSession enableVoIPWithCallStack:callStack];
    
