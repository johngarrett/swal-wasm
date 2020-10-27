import HyperSwift

class ResultPane: HTMLComponent {
    init(input: HTMLComponent, outputText: String, outputId: String) {
        super.init(
            HStack {
                input
                    .rawCSS("flex-grow", "1")
                    .color(CSSColor("#000000"))
                    .backgroundColor(CSSColor("#B7B7B7"))
                    .padding(10)
                Div("", id: outputId) { outputText }
                    .rawCSS("flex-grow", "1")
                    .maxHeight(400)
                    .overflow(.scroll)
                    .color(CSSColor("#000000"))
                    .backgroundColor(CSSColor("#D1E8E2"))
                    .padding(10)
                    .textAlign(.right)
            }
            .font(weight: .twohundred, size: 14, family: "'Trispace', sans-serif")
            .overflow(.hidden)
            .borderRadius(16)
            .margin(top: 10, bottom: 10)
        )
    }
}
