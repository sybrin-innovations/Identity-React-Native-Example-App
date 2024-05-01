// All of your regular imports
import {useCameraDevices, Camera} from 'react-native-vision-camera';
import {useScanBarcodes, BarcodeFormat} from 'vision-camera-code-scanner';
import {RNHoleView} from 'react-native-hole-view';
import React from 'react';
import { Alert, StatusBar, StyleSheet, NativeModules, Button} from 'react-native';

const { CustomMethods } = NativeModules

const App = (): React.ReactElement => {
  // ...
  const nativeSimpleMethod = () => {
    CustomMethods.simpleMethod()
  }

  const nativeSimpleMethodReturns = () => {
    CustomMethods.simpleMethodReturns((result: any) => {
      alert(result)
    })
  }
  const nativeSimpleMethodWithParams = () => {
    CustomMethods.simpleMethodWithParams(
      'example',
      (      result: any) => {
        alert(result)
      }
    )
  }
  const nativeResolvePromise = async () => {
    const result = await CustomMethods.resolvePromise()
    alert(result)
  }
  const nativeRejectPromise = async () => {
    try {
      await CustomMethods.rejectPromise()
    } catch (err) {
      alert(err)
    }
  }
  // ...

  return(
    <>

<Button
      onPress={() => nativeSimpleMethod() }
      title="Simple Method"
    />
    <Button
      onPress={() => nativeSimpleMethod() }
      title="Simple Method"
    />
      <Button
      onPress={() => nativeSimpleMethod() }
      title="Simple Method"
    />
    <Button
      onPress={() => nativeSimpleMethodReturns() }
      title="Simple Method Returns"
    />
    <Button
      onPress={() => nativeSimpleMethodWithParams() }
      title="Simple Method With Params"
    />
    <Button
      onPress={() => nativeResolvePromise() }
      title="Reject Promise"
    />
    <Button
      onPress={() => nativeRejectPromise() }
      title="Reject Promise"
    />
    </>
  );
}

// inside your component
/*
export default function App() {
const devices = useCameraDevices();
const device = devices.back;

const [frameProcessor, barcodes] = useScanBarcodes([
    BarcodeFormat.ALL_FORMATS, // You can only specify a particular format
  ]);

const [barcode, setBarcode] = React.useState('');
const [hasPermission, setHasPermission] = React.useState(false);
const [isScanned, setIsScanned] = React.useState(false);

React.useEffect(() => {
    checkCameraPermission();
  }, []);

 const checkCameraPermission = async () => {
    const status = await Camera.getCameraPermissionStatus();
    setHasPermission(status === 'authorized');
 };

React.useEffect(() => {
    toggleActiveState();
    return () => {
      barcodes;
    };
  }, [barcodes]);

const toggleActiveState = async () => {
    if (barcodes && barcodes.length > 0 && isScanned === false) {
      setIsScanned(true);
      // setBarcode('');
      barcodes.forEach(async (scannedBarcode: any) => {
        if (scannedBarcode.rawValue !== '') {
          setBarcode(scannedBarcode.rawValue);
          Alert.alert(barcode);
        }
      });
    }
  };

return(
  device != null &&
    hasPermission && (
      <>
        <StatusBar barStyle="light-content" backgroundColor="#f8f8f8" />
        <Camera
          style={StyleSheet.absoluteFill}
          device={device}
          isActive={!isScanned}
          frameProcessor={frameProcessor}
          frameProcessorFps={5}
          audio={false}
        />
       
      </>
    )
);

}
// Styles:
const styles = StyleSheet.create({
  rnholeView: {
    position: 'absolute',
    width: '100%',
    height: '100%',
    alignSelf: 'center',
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: 'rgba(0,0,0,0.5)',
  },
});
*/

export default App;