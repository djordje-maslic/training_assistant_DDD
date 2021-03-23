import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class AnimationRunner extends StatefulWidget {
  @override
  _AnimationRunnerState createState() => _AnimationRunnerState();
}

class _AnimationRunnerState extends State<AnimationRunner> {
  void _togglePlay() {
    setState(() => _controller.isActive = !_controller.isActive);
  }
    bool get isPlaying => _controller?.isActive ?? false;

    Artboard _riveArtboard;
    RiveAnimationController _controller;
    @override
    void initState() {
      super.initState();

      // Load the animation file from the bundle, note that you could also
      // download this. The RiveFile just expects a list of bytes.
      rootBundle.load('assets/run.riv').then(
            (data) async {
          final file = RiveFile();

          // Load the RiveFile from the binary data.
          if (file.import(data)) {
            // The artboard is the root of the animation and gets drawn in the
            // Rive widget.
            final artboard = file.mainArtboard;
            // Add a controller to play back a known animation on the main/default
            // artboard.We store a reference to it so we can toggle playback.
            artboard.addController(_controller = SimpleAnimation('Animation 1'));
            setState(() => _riveArtboard = artboard);
          }
        },
      );
    }

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 280,height: 280,
      child: Rive(artboard: _riveArtboard)
    );
  }
}
