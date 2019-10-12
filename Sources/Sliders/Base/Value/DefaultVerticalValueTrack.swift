import SwiftUI

public struct DefaultVerticalValueTrack<V>: View where V: BinaryFloatingPoint, V.Stride: BinaryFloatingPoint {
    let value: V
    let bounds: ClosedRange<V>
    let leadingOffset: CGFloat
    let trailingOffset: CGFloat

    public var body: some View {
        VTrack(value: value, in: bounds, leadingOffset: leadingOffset, trailingOffset: trailingOffset)
            .frame(width: 3)
            .background(Color.secondary.opacity(0.25))
            .cornerRadius(1.5)
    }
    
    public init(value: V, in bounds: ClosedRange<V> = 0.0...1.0, leadingOffset: CGFloat = 0, trailingOffset: CGFloat = 0) {
        self.value = value
        self.bounds = bounds
        self.leadingOffset = leadingOffset
        self.trailingOffset = trailingOffset
    }
}

#if DEBUG
struct DefaultVerticalValueTrack_Previews: PreviewProvider {
    static var previews: some View {
        DefaultVerticalValueTrack(value: 0.5)
            .previewLayout(.fixed(width: 100, height: 300))
    }
}
#endif