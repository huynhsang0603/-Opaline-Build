    func activateScrollConstraints() {
        let collectionV = contentView, sv = scrollView
        let cl = sv.contentLayoutGuide, frameLayout = sv.frameLayoutGuide
        
        // swiftlint:disable identifier_name
        let (ps, sl, pc) = (sidebarContainer, scrollView, playerContainer)
        // swiftlint:enable identifier_name
        
        NSLayoutConstraint.activate(
            [
                playerTopConstraint, playerLeadingConstraint,
                playerTrailingConstraint, playerAspectConstraint,
                scrollTopToPlayerConstraint, scrollTrailingConstraint,
                // Use safe area for leading to match playerLeadingConstraint so the
                // scroll content aligns with the player edge on iPhone landscape.
                sv.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor)
