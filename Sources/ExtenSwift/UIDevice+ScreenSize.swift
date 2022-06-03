#if !os(macOS)
import UIKit

@available(iOS 11.0, *)
public extension UIDevice {
    enum ScreenSize {
        fileprivate static let widthInPoints = UIScreen.main.bounds.size.width
        fileprivate static let heightInPoints = UIScreen.main.bounds.size.height
        fileprivate static let widthInPixels = UIScreen.main.nativeBounds.size.width
        fileprivate static let heightInPixels = UIScreen.main.nativeBounds.size.height
        fileprivate static let minLength = min(widthInPoints, heightInPoints)
        fileprivate static let maxLength = max(widthInPoints, heightInPoints)



        // MARK: - Preferred Properties
        // These properties are intended to replace the deprecated properties.
        public static let is4InchesOrSmaller = ScreenSize.widthInPoints <= 320.0 && ScreenSize.heightInPoints <= 568.0
        public static let is4Point7InchesOrSmaller = ScreenSize.widthInPoints <= 375.0 && ScreenSize.heightInPoints <= 667
        public static let is4Point7InchesOrSmallerWithoutNotch = is4Point7InchesOrSmaller && !isIphoneWithNotch

        // MARK: - 2X Resolution Devices
        // 4-inch devices: iPhone 5, 5S, 5C, SE (1st gen), iPod touch (7th gen)
        public static let is4Inches = ScreenSize.widthInPoints == 320.0 && ScreenSize.heightInPoints == 568.0

        // 4.7-inch devices: iPhone 6, 6S, 7, 8, SE (2nd & 3rd gen)
        public static let is4Point7Inches = ScreenSize.widthInPoints == 375.0 && ScreenSize.heightInPoints == 667.0

        // 5.5-inch devices: iPhone 6 Plus, 6S Plus, 7 Plus, 8 Plus
        public static let is5Point5Inches = ScreenSize.widthInPoints == 414.0 && ScreenSize.heightInPoints == 736.0

        // 6.1-inch devices: iPhone XR, 11
        public static let is6Point1Inches2X = ScreenSize.widthInPixels == 828.0 && ScreenSize.heightInPixels == 1792.0

        // MARK: - 3X Resolution Devices
        // The 5.4- and 5.8-inch devices have the same number of hoorizontal
        // and vertial points. So do the 2X 6.1-inch and 6.5-inch devices. They must
        // be distinguished by the number of vertical and horizontal pixels instead.
        // There are several devices with a 6.1-inch screen, but with different
        // numbers of horizontal and vertical points. They must be distinguished by
        // 2X and 3X.
        // 5.4-inch devices: iPhone 12 mini, 13 mini
        public static let is5Point4Inches = ScreenSize.widthInPixels == 1080.0 && ScreenSize.heightInPixels == 2340.0

        // 5.8-inch devices: iPhone X, XS, 11 Pro
        public static let is5Point8Inches = ScreenSize.widthInPixels == 1125.0 && ScreenSize.heightInPixels == 2436.0

        // 6.1-inch devices: iPhone 12, 12 Pro, 13, 13 Pro
        public static let is6Point1Inches3X = ScreenSize.widthInPoints == 390.0 && ScreenSize.heightInPoints == 844.0

        // 6.5-inch devices: iPhone XS Max, 11 Pro Max
        public static let is6Point5Inches = ScreenSize.widthInPixels == 1242.0 && ScreenSize.heightInPixels == 2688.0

        // 6.7-inch devices: iPhone 12 Pro Max, 13 Pro Max
        public static let is6Point7Inches = ScreenSize.widthInPoints == 428.0 && ScreenSize.heightInPoints == 926.0
    }

    static let isIphoneWithNotch = UIDevice.current.userInterfaceIdiom == .phone && (UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0) > 0
    static let isIpad: Bool = UIDevice.current.userInterfaceIdiom == .pad
    static let isIpadMini: Bool = isIpad && ScreenSize.widthInPoints <= 768



    // MARK: - Deprecated Properties
    // These properties are deprecated. Use the preferred properties above going forward.
    static let isIPhone5OrLess = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength <= 568.0
    static let isIPhone8OrSmaller = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.widthInPoints <= 375
    static let doesIPhoneHaveNotch = (UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0) > 0
    static let isIPhone8OrSmallerWithoutNotch = isIPhone8OrSmaller && !doesIPhoneHaveNotch
}
#endif
