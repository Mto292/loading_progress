# loading_progress

A flutter widget of loading progress Indicator. You can easily customize as you want.

Website example >> https://loadingprogress.mustafaturkmen.dev


## Usage

It has a very easy to use.

add this line to pubspec.yaml

```yaml

   dependencies:
     loading_progress: ^1.0.0

```

import package

```dart

   import 'package:loading_progress/loading_progress.dart';

```

Start it with
```dart
   LoadingProgress.start(context);
```

Stop it with
```dart
   LoadingProgress.stop(context);
```

## Complete Example
```dart
   LoadingProgress.start(context);
   await Future.delayed(const Duration(seconds: 3));
   LoadingProgress.stop(context);
```

![gif_1](https://user-images.githubusercontent.com/49743631/167276311-b96b6f22-adda-489b-a2a6-f1c467dccb60.gif)


## Use With Gif
```dart
   LoadingProgress.start(context,
     gifOrImagePath: 'assets/loading.gif',
   );
   await Future.delayed(const Duration(seconds: 3));
   LoadingProgress.stop(context);
```

![gif_2](https://user-images.githubusercontent.com/49743631/167276327-6b83530c-f361-4850-9162-c46e0d006164.gif)


## Use With Custom Widget
```dart
   LoadingProgress.start(context,
     widget: Container(
       width: MediaQuery.of(context).size.width / 4,
       padding: EdgeInsets.all(MediaQuery.of(context).size.width / 13),
       child: const AspectRatio(
                aspectRatio: 1,
                child: const CircularProgressIndicator(),
             ),
         ),
   );
   await Future.delayed(const Duration(seconds: 3));
   LoadingProgress.stop(context);
```

