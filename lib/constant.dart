import 'package:flutter/material.dart';


const TextStyle ktextStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'Audiowide',
  fontWeight: FontWeight.normal,
  fontSize: 11.0,
);

class kReusableButton extends StatelessWidget {
  kReusableButton({this.cardChild, this.route});

  final Widget cardChild;
  final dynamic route;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 100.0,
      height: 100.0,
      child: RaisedButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        color: Color(0xFF3B2E7E),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: cardChild,
      ),
    );
  }
}

class kIconContent extends StatelessWidget {
  kIconContent({this.label, this.assetImage, this.color});
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

class kBackground extends StatelessWidget {
  kBackground({this.assetImage});
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

class kMyButton extends StatelessWidget {
  kMyButton({this.label, this.size, this.route});
  final String label;
  final double size;
  final String route;



  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 80.0,
      child: RaisedButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        color: Color(0xFF3B2E7E),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
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



class kReusableTextField extends StatelessWidget {
  kReusableTextField({this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: ktextStyle.copyWith(fontSize: 15.0, color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
      ),
    );
  }
}


class kReusableName extends StatelessWidget {
  kReusableName({this.nameField, this.icon});

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

