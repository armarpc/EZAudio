rm ./archives/ios_devices.xcarchive
rm ./archives/ios_simulators.xcarchive
rm ./build/EZAudio.xcframework

xcodebuild archive -scheme EZAudioiOS -sdk iphoneos -archivePath "archives/ios_devices.xcarchive" BUILD_LIBRARY_FOR_DISTRIBUTION=YES SKIP_INSTALL=NO

xcodebuild archive -scheme EZAudioiOS -sdk iphonesimulator -archivePath "archives/ios_simulators.xcarchive" BUILD_LIBRARY_FOR_DISTRIBUTION=YES SKIP_INSTALL=NO

xcodebuild -create-xcframework -framework archives/ios_devices.xcarchive/Products/Library/Frameworks/EZAudioiOS.framework -framework archives/ios_simulators.xcarchive/Products/Library/Frameworks/EZAudioiOS.framework -output build/EZAudio.xcframework          
