import 'package:flutter/material.dart';

const TextStyle ktextStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'Audiowide',
  fontWeight: FontWeight.normal,
  fontSize: 11.0,
);

class KReusableButton extends StatelessWidget {
  KReusableButton({this.cardChild, this.onPress});

  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 100.0,
      height: 100.0,
      child: RaisedButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        color: Color(0xFF3B2E7E),
        onPressed: onPress,
        child: cardChild,
      ),
    );
  }
}

class KIconContent extends StatelessWidget {
  KIconContent({this.label, this.assetImage, this.color});
  final String label;
  final String assetImage;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          label,
          style: ktextStyle,
        ),
        SizedBox(
          height: 5.0,
        ),
        Image.asset(
          assetImage,
          height: 50.0,
          color: color,
        ),
      ],
    );
  }
}

class KBackground extends StatelessWidget {
  KBackground({this.assetImage});
  final String assetImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            assetImage,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class KMyButton extends StatelessWidget {
  KMyButton({this.label, this.size, this.onPress});
  final String label;
  final double size;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 80.0,
      child: RaisedButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        color: Color(0xFF3B2E7E),
        onPressed: onPress,
        child: Center(
          child: Text(
            label,
            style: ktextStyle.copyWith(fontSize: size),
          ),
        ),
      ),
    );
  }
}

class KReusableName extends StatelessWidget {
  KReusableName({this.nameField, this.icon});

  final String nameField;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Color(0xFF3B2E7E),
        ),
        Text(
          nameField,
          style: ktextStyle.copyWith(
            fontSize: 15.0,
            color: Color(0xFF3B2E7E),
          ),
        ),
      ],
    );
  }
}

const kTextFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(32.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF3B2E7E), width: 1.0),
    borderRadius: BorderRadius.all(
      Radius.circular(32.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF3B2E7E), width: 2.0),
    borderRadius: BorderRadius.all(
      Radius.circular(32.0),
    ),
  ),
);
