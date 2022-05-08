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

## Use With Gif
```dart
   LoadingProgress.start(context,
     gifOrImagePath: 'assets/loading.gif',
   );
   await Future.delayed(const Duration(seconds: 3));
   LoadingProgress.stop(context);
```

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

