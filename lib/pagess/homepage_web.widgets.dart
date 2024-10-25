part of 'homepage_web.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      color: const Color(0xffB10D31),
      child: Stack(
        children: [
          Positioned.fill(
            top: -50,
            child: Center(
              child: Text(
                overlayDescriptionText,
                textAlign: TextAlign.center,
                style: GoogleFonts.biryani(
                  color: Colors.white,
                  fontSize: 42,
                  fontWeight: FontWeight.w800,
                  height: 1.2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OverlayTextSection extends StatelessWidget {
  const OverlayTextSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height,
      width: screenSize.width,
      child: const Stack(
        children: [
          _TitleText(
            text: 'HELLO',
            top: 100,
            left: 180,
          ),
          _TitleText(
            text: 'WORLD',
            top: 205,
            left: 130,
          ),
          _TitleText(
            text: 'I\'M ANNA ',
            top: 330,
            left: 430,
          ),
          Positioned(
            right: 50,
            top: 100,
            child: SizedBox(
              width: 510,
              child: Text(
                overlayDescriptionText,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TitleText extends StatelessWidget {
  final double? top;
  final double? left;
  final String text;
  const _TitleText({
    required this.text,
    this.top,
    this.left,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Text(
        text,
        style: GoogleFonts.fascinate(
          fontSize: 130,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }
}
