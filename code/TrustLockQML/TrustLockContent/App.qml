// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.7
import TrustLock

Window {



    visible: true
    title: "TrustLock"

    property  bool winSwitch: false

    width: winSwitch ? 500 : 1200
    height: winSwitch ? 715 : 1000

    // flags: winSwitch ? (Qt.WindowStaysOnTopHint | Qt.FramelessWindowHint) : Qt.Window

    Loader {
        id: screenloader
        anchors.fill: parent
        source: winSwitch ? "SignUp.ui.qml" : "TrustLockMain.ui.qml"
    }

    // TrustLockLogin {
    //     id: mainScreen
    // }

    // MiniLogin {
    //     id:  miniScreen
    //     radius: 5
    // }



}

