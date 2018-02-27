# LoadingSDK

把LoadingSDKFiles 里面的文件拖到项目中。

显示 

_loadingView = [LoadingView showLoadingViewInView:self.view];

隐藏

 [_loadingView hide];
 
 显示效果
 
 ![img](https://github.com/BeiJiXiongA/LoadingSDK/blob/master/demo.gif)

录的有点不连贯


顺便联系下静态库的制作


创建静态库项目 Cocoa Touch Static Library，如：XXXSDK


删除自带类的XXXSDK.m 文件，XXXSDK.h 里面的代码部分也可以删掉，导入头文件部分保留


选择模拟器编译


选择真机编译


项目目录会有生成的.a 文件，show in finder，找到文件目录，把include目录拷贝出来放在一个文件夹下如：XXXSDKFiles


合并真机和模拟器的.a 文件


lipo -create .../Build/Products/Debug-iphonesimulator/libSDKDemoA.a  .../Build/Products/Debug-iphoneos/libSDKDemoA.a  -output .../SDKDemoA.a

将新生成的.a 文件也拷贝到XXXSDKFiles 文件夹下

然后自己建个项目测试下，把XXXSDKFiles 拖到项目中，在要用的地方导入头文件

如果sdk 中用到资源文件，如图片资源，可以在XXXSDKFiles 里面建一个bundle 文件，专放sdk的资源文件

用法

demoImageView.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"XXX" ofType:@"jpg" inDirectory:@"XXXSDK.bundle"]];
