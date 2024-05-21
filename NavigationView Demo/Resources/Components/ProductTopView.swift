//
//  ProductTopView.swift of NavigationView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct ProductTopView: View {
    let product: MockData.SaleCard


    var body: some View {
        ZStack(alignment: .top) {
            createImage()
            createNavigationBar()
            createBottomButton()
        }
        .frame(height: height)
    }
}

private extension ProductTopView {
    func createImage() -> some View {
        Image(product.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: height).frame(maxWidth: .infinity)
            .overlay(ImageGradient())
            .clipShape(Rectangle())
    }
    func createNavigationBar() -> some View {
        HStack(spacing: 0) {
            createBackButton()
            Spacer()
            createLoveButton()
            Spacer.width(20)
            createMoreButton()
        }
        .alignVertically(.top, UIScreen.safeArea.top + 8)
        .padding(.horizontal, .margin)
    }
    func createBottomButton() -> some View {
        Button(action: {}) {
            Text("Find similar")
                .font(.semiBold(13))
                .foregroundColor(.onDarkBackgroundPrimary)
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
                .background(Color.onDarkBackgroundPrimary.opacity(0.12))
                .cornerRadius(6)
        }
        .alignVertically(.bottom, 44)
        .alignHorizontally(.trailing, .margin)
    }
}

private extension ProductTopView {
    func createBackButton() -> some View {
        NavigationBarButton(imageName: "sc-arrow-left", action: pop)
    }
    func createLoveButton() -> some View {
        NavigationBarButton(imageName: "sc-heart", action: {})
    }
    func createMoreButton() -> some View {
        NavigationBarButton(imageName: "sc-more", action: {})
    }
}

private extension ProductTopView {
    var height: CGFloat { 360 }
}

// MARK: - Image Linear Gradient
fileprivate struct ImageGradient: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            createGradient()
            createBackgroundExtension()
        }

    }
}

private extension ImageGradient {
    func createGradient() -> some View {
        LinearGradient(stops: stops, startPoint: .top, endPoint: .bottom)
    }
}
private extension ImageGradient {
    var stops: [Gradient.Stop] {[
        .init(color: .black.opacity(0.6), location: 0),
        .init(color: .black.opacity(0.72), location: 0.25),
        .init(color: .black.opacity(0), location: 0.5),
        .init(color: .black.opacity(0.44), location: 1)
    ]}
}

private extension ImageGradient {
    func createBackgroundExtension() -> some View {
        RoundedRectangle(cornerRadius: 32, style: .continuous)
            .fill(Color.backgroundPrimary)
            .frame(height: 60)
            .offset(y: 28)
    }
}

// MARK: - Button
fileprivate struct NavigationBarButton: View {
    let imageName: String
    let action: () -> ()


    var body: some View {
        Button(action: action) {
            Image(imageName)
                .resizable()
                .frame(28)
                .foregroundColor(.onDarkBackgroundPrimary)
        }
    }
}
