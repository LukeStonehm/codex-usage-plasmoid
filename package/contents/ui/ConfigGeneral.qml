import QtQuick
import QtQuick.Controls as QQC2
import QtQuick.Layouts

import org.kde.kirigami as Kirigami
import org.kde.kcmutils as KCM

KCM.SimpleKCM {
    id: root

    title: i18n("General")

    property string cfg_appearance: "auto"
    property alias cfg_refreshIntervalMinutes: refreshInterval.value
    property alias cfg_showRefreshSpinner: showRefreshSpinner.checked
    property alias cfg_monochromePanelText: monochromePanelText.checked

    Kirigami.FormLayout {
        QQC2.ComboBox {
            Kirigami.FormData.label: i18n("Appearance:")
            model: [i18n("Auto"), i18n("Dark"), i18n("Light")]
            currentIndex: Math.max(0, ["auto", "dark", "light"].indexOf(root.cfg_appearance))
            onActivated: index => root.cfg_appearance = ["auto", "dark", "light"][index]
            Accessible.name: i18n("Widget appearance")
        }

        RowLayout {
            Kirigami.FormData.label: i18n("Refresh every:")

            QQC2.SpinBox {
                id: refreshInterval
                from: 1
                to: 1440
                editable: true
                Accessible.name: i18n("Automatic refresh interval in minutes")
            }

            QQC2.Label {
                text: i18n("minutes")
            }
        }

        QQC2.Switch {
            id: showRefreshSpinner
            Kirigami.FormData.label: i18n("Panel indicator:")
            text: i18n("Show refresh spinner")
            checked: true
        }

        QQC2.Switch {
            id: monochromePanelText
            text: i18n("Use monochrome text")
        }
    }
}
