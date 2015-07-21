Matrix OpenWebRTC wrapper for iOS
=================================

This library enables OpenWebRTC voice and video calls in a Matrix application.

It is a wrapper between matrix-ios-sdk (https://github.com/matrix-org/matrix-ios-sdk) and openwebrtc-ios-sdk (https://github.com/EricssonResearch/openwebrtc-ios-sdk). It implements the VoIP protocol defined in MatrixSDK by using the OpenWebRTC iOS SDK.

**Warning:** Both openwebrtc-ios-sdk and VoIP in matrix-ios-sdk are for experimental purpose. Do not use matrix-ios-openwebrtc-wrapper in commercial products.

To enable OpenWebRTC into an application running the Matrix SDK:

1. Add this lib into the application podfile (note it has not been submitted yet to CocoaPods)::

    # MatrixOpenWebRTCWrapper
    pod 'MatrixOpenWebRTCWrapper', :git => 'https://github.com/matrix-org/matrix-ios-openwebrtc-wrapper.git', :branch => 'master'
    
    # OpenWebRTC-SDK (Matrix.org fork of it)
    pod 'OpenWebRTC-SDK', :git => 'https://github.com/matrix-org/openwebrtc-ios-sdk.git', :branch => 'cvo_support'


2. Pass an instance of it to the Matrix SDK MXSession object::

    id<MXCallStack> callStack = [[MXOpenWebRTCCallStack alloc] init];
    [mxSession enableVoIPWithCallStack:callStack];
    
2. Or, if you use MatrixKit, pass the MXOpenWebRTCCallStack class to the MXKAccountManager before opening any MXSession instances::

    MXKAccountManager *accountManager = [MXKAccountManager sharedManager];
    accountManager.callStackClass = [MXOpenWebRTCCallStack class];


Known issues
============
1. The lib does not build for iOS simulator because OpenWebRTC-SDK does not provide libraries built for x86_64 architecture. See https://github.com/EricssonResearch/openwebrtc-examples/issues/79.
