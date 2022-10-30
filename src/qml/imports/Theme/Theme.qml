pragma Singleton

import QtQuick 2.14

QtObject {
    readonly property color darkRed: "#c0392b"
    readonly property color darkGray: "#212121"
    readonly property color darkGraySemiOpaque: "#88212121"
    readonly property color gray: "#888888"
    readonly property color lightGray: "#dddddd"
    readonly property color lightestGray: "#eeeeee"
    readonly property color light: "#ffffff"
    readonly property color hyperlinkBlue: '#0000EE'

    property color mainColor: "#80cc28"
    property color errorColor: "#c0392b"
    property color warningColor: "orange"
    property color cloudColor: "#4c6dac"

    property color positionColor: "#64b5f6"
    property color positionColorSemiOpaque: "#3364b5f6"
    property color positionBackgroundColor: "#e6f2fd"
    property color darkPositionColor: "#2374b5"
    property color darkPositionColorSemiOpaque: "#882374b5"

    property color accuracyBad: "#c0392b"
    property color accuracyTolerated: "orange"
    property color accuracyExcellent: "#80cc28"

    property color navigationColor: "#984ea3"
    property color navigationColorSemiOpaque: "#77984ea3"
    property color navigationBackgroundColor: "#e2d7e4"

    property color bookmarkDefault: "#80cc28"
    property color bookmarkOrange: "orange"
    property color bookmarkRed: "#c0392b"
    property color bookmarkBlue: "#64b5f6"

    property color accentColor: '#4CAF50'
    property color accentLightColor: '#C8E6C9'

    property font defaultFont: Qt.font({pointSize: 16, weight: Font.Normal})
    property font tinyFont: Qt.font({pointSize: 12, weight: Font.Normal})
    property font tipFont: Qt.font({pointSize: 14, weight: Font.Normal})
    property font resultFont: Qt.font({pointSize: 13, weight: Font.Normal})
    property font strongFont: Qt.font({pointSize: defaultFont.pointSize, bold: true, weight: Font.Bold})
    property font strongTipFont: Qt.font({pointSize: tipFont.pointSize, bold: true, weight: Font.Bold})
    property font secondaryTitleFont: Qt.font({pointSize: 18, weight: Font.Normal})
    property font titleFont: Qt.font({pointSize: 20, weight: Font.Normal})

    readonly property int popupScreenEdgeMargin: 40

    function getThemeIcon(name) {
      var ppiName
      if ( ppi >= 360 )
        ppiName = "xxxhdpi";
       else if ( ppi >= 270 )
        ppiName = "xxhdpi";
       else if ( ppi >= 180 )
        ppiName = "xhdpi";
       else if ( ppi >= 135 )
        ppiName = "hdpi";
       else
        ppiName = "mdpi";

      var theme = 'qfield';

      var path = '/themes/' + theme + '/' + ppiName + '/' + name + '.png';
      return path;
    }

    function getThemeVectorIcon(name) {
      var theme = 'qfield';

      var path = '/themes/' + theme + '/nodpi/' + name + '.svg';
      return path;
    }

    function colorToHtml(color) {
      return "rgba(%1,%2,%3,%4)".arg(Math.floor(Theme.errorColor.r * 255)).arg(Math.floor(Theme.errorColor.g * 255)).arg(Math.floor(Theme.errorColor.b * 255)).arg(Math.floor(Theme.errorColor.a * 255));

    }

    function toInlineStyles(styleProperties) {
      var styles = ''

      for (var property in styleProperties) {
        var value = styleProperties[property];
        styles += property
        styles += ': '
        styles += typeof value == 'color'
          ? colorToHtml(value)
          : value
        styles += ';'
      }

      return styles;
    }
}

