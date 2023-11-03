defmodule A11yAudit.Fixtures.AxeCoreResultsDuckDuckGo do
  def expected_value do
    %A11yAudit.Results{
      test_engine: %{"name" => "axe-core", "version" => "4.8.2"},
      url: "https://duckduckgo.com/",
      violations: [
        %A11yAudit.Results.Result{
          description: "Ensures all ARIA attributes have valid values",
          help: "ARIA attributes must conform to valid values",
          help_url:
            "https://dequeuniversity.com/rules/axe/4.8/aria-valid-attr-value?application=axeAPI",
          id: "aria-valid-attr-value",
          impact: :critical,
          nodes: [
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix all of the following:\n  Invalid ARIA attribute value: aria-controls=\"listbox--searchbox_homepage\"",
              html:
                "<input aria-autocomplete=\"both\" aria-controls=\"listbox--searchbox_homepage\" aria-expanded=\"true\" aria-haspopup=\"listbox\" aria-label=\"Search with DuckDuckGo\" role=\"combobox\" class=\"searchbox_input__bEGm3\" type=\"text\" name=\"q\" autocomplete=\"off\" id=\"searchbox_input\" autocapitalize=\"none\" autocorrect=\"off\" required=\"\" minlength=\"1\" data-reach-combobox-input=\"\" data-state=\"suggesting\" value=\"\">"
            }
          ]
        },
        %A11yAudit.Results.Result{
          description: "Ensures buttons have discernible text",
          help: "Buttons must have discernible text",
          help_url: "https://dequeuniversity.com/rules/axe/4.8/button-name?application=axeAPI",
          id: "button-name",
          impact: :critical,
          nodes: [
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element does not have inner text that is visible to screen readers\n  aria-label attribute does not exist or is empty\n  aria-labelledby attribute does not exist, references elements that do not exist or references elements that are empty\n  Element has no title attribute\n  Element's default semantics were not overridden with role=\"none\" or role=\"presentation\"",
              html:
                "<button class=\"legacy-homepage_legacyButton__oUMB9 legacy-homepage_hamburgerButton__VsG7q\">"
            }
          ]
        },
        %A11yAudit.Results.Result{
          description:
            "Ensures the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds",
          help: "Elements must meet minimum color contrast ratio thresholds",
          help_url: "https://dequeuniversity.com/rules/axe/4.8/color-contrast?application=axeAPI",
          id: "color-contrast",
          impact: :serious,
          nodes: [
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 2.62 (foreground color: #9a9a9a, background color: #f7f7f7, font size: 13.5pt (18px), font weight: normal). Expected contrast ratio of 4.5:1",
              html: "<span class=\"tagline_taglineText__4Okum\">Privacy, simplified.</span>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 2.62 (foreground color: #9a9a9a, background color: #f7f7f7, font size: 13.5pt (18px), font weight: normal). Expected contrast ratio of 4.5:1",
              html: "<span>Help Spread DuckDuckGo!</span>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 2.63 between the foreground and shadow color (foreground color: #ffffff, text-shadow color: #55b08c, font size: 36.0pt (48px), font weight: bold). Expected contrast ratio of 3:1",
              html:
                "<h2 class=\"onboardingEd_slideTitle__yZNxu heading_heading2__oEFPn heading_heading__IiMSV heading_responsive__oZpJJ\">We don’t store your personal information. Ever.</h2>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 2.6 (foreground color: #ffffff, background color: #55b18d, font size: 15.0pt (20px), font weight: normal). Expected contrast ratio of 4.5:1",
              html:
                "<p class=\"text_text-md__x96X3 text_text__q9rvO text_responsive__9czhp\">Our privacy policy is simple: we don’t collect or share any of your personal information.</p>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 2.23 between the foreground and shadow color (foreground color: #ffffff, text-shadow color: #ec9d37, font size: 36.0pt (48px), font weight: bold). Expected contrast ratio of 3:1",
              html:
                "<h2 class=\"onboardingEd_slideTitle__yZNxu heading_heading2__oEFPn heading_heading__IiMSV heading_responsive__oZpJJ\">We don’t follow you around with ads.</h2>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 2.19 (foreground color: #ffffff, background color: #ed9e37, font size: 15.0pt (20px), font weight: normal). Expected contrast ratio of 4.5:1",
              html:
                "<p class=\"text_text-md__x96X3 text_text__q9rvO text_responsive__9czhp\">We don’t store your search history. We therefore have nothing to sell to advertisers that track you across the Internet.</p>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 3.5 (foreground color: #44677b, background color: #87cef5, font size: 12.0pt (16px), font weight: normal). Expected contrast ratio of 4.5:1",
              html: "<a href=\"#\" class=\"onboardingEd_dismissBtn__PZMVz\">Dismiss forever</a>"
            }
          ]
        },
        %A11yAudit.Results.Result{
          description:
            "Ensure that the page, or at least one of its frames contains a level-one heading",
          help: "Page should contain a level-one heading",
          help_url:
            "https://dequeuniversity.com/rules/axe/4.8/page-has-heading-one?application=axeAPI",
          id: "page-has-heading-one",
          impact: :moderate,
          nodes: [
            %A11yAudit.Results.Node{
              failure_summary: "Fix all of the following:\n  Page must have a level-one heading",
              html:
                "<html lang=\"en-US\" style=\"--theme-bg-global: var(--color-white); --theme-text-bg: var(--color-black); --theme-sidemenu-bg: var(--color-white); --theme-sidemenu-title: var(--color-gray60); --theme-sidemenu-text: var(--theme-text-bg); --theme-sidemenu-shadow: -1px 0 1px rgba(0, 0, 0, 0.2); --theme-sidemenu-promo-border: var(--color-black-at-12); --theme-sidemenu-close: #bfbfbf; --theme-sidemenu-close--hover: #575757; --theme-logo-text: #4c4c4c; --theme-header-text: var(--color-black); --theme-header-text--hover: var(--color-gray85); --theme-header-text--active: var(--color-gray90); --theme-header-toggle-bg: var(--color-white-at-70); --theme-header-toggle-text: var(--color-black); --theme-header-menu-button-bg--hover: var(--color-black-at-15); --theme-button-primary-bg: var(--color-blue50); --theme-button-primary-bg--hover: var(--color-blue60); --theme-button-primary-bg--active: var(--color-blue70); --theme-button-primary-bg--disabled: var(--color-black-at-6); --theme-button-primary-text: var(--color-white); --theme-button-primary-text--disabled: var(--color-black-at-36); --theme-button-primary-border: transparent; --theme-button-secondary-bg: var(--color-black-at-6); --theme-button-secondary-bg--hover: var(--color-black-at-12); --theme-button-secondary-bg--active: var(--color-black-at-18); --theme-button-secondary-bg--disabled: var(--color-black-at-6); --theme-button-secondary-text: var(--color-gray90); --theme-button-secondary-text--disabled: var(--color-black-at-36); --theme-button-secondary-border: transparent; --theme-button-tertiary-bg: transparent; --theme-button-tertiary-bg--hover: rgba(0, 0, 0, 0.06); --theme-button-tertiary-bg--active: rgba(0, 0, 0, 0.12); --theme-button-tertiary-bg--disabled: transparent; --theme-button-tertiary-text: var(--color-gray90); --theme-button-tertiary-text--disabled: rgba(0, 0, 0, 0.36); --theme-button-tertiary-border: rgba(0, 0, 0, 0.12); --theme-button-tertiary-border--hover: rgba(0, 0, 0, 0.18); --theme-button-tertiary-border--active: rgba(0, 0, 0, 0.36); --theme-button-tertiary-border--disabled: rgba(0, 0, 0, 0.12); --theme-button-ghost-bg: transparent; --theme-button-ghost-bg--hover: var(--color-black-at-6); --theme-button-ghost-bg--active: var(--color-black-at-12); --theme-button-ghost-bg--disabled: transparent; --theme-button-ghost-text: var(--color-blue50); --theme-button-ghost-text--hover: var(--color-blue60); --theme-button-ghost-text--active: var(--color-blue70); --theme-button-ghost-text--disabled: var(--color-black-at-36); --theme-button-link-bg: transparent; --theme-button-link-text: var(--color-blue50); --theme-button-link-text--hover: var(--color-blue60); --theme-button-link-text--active: var(--color-blue70); --theme-checkbox-bg: rgba(255,255,255,0.20); --theme-checkbox-bg--hover: var(--color-black-at-6); --theme-checkbox-bg--active: var(--color-white-at-12); --theme-checkbox-bg--disabled: transparent; --theme-checkbox-border: var(--color-black-at-48); --theme-checkbox-border--disabled: var(--color-black-at-18); --theme-checkbox-bg--checked: var(--color-blue50); --theme-checkbox-bg--checked--hover: var(--color-blue60); --theme-checkbox-bg--checked--active: var(--color-blue70); --theme-checkbox-bg--checked--disabled: var(--color-white-at-18); --theme-checkbox-border--checked: transparent; --theme-toggle-bg: var(--color-gray50); --theme-toggle-bg--checked: var(--color-blue50); --theme-input-bg: var(--color-black-at-6); --theme-input-placeholder: var(--color-gray70); --theme-input-border--focused: var(--color-blue50); --theme-searchbox-bg: var(--color-white); --theme-searchbox-bg--focused: var(--color-white); --theme-searchbox-bg--mobile: var(--color-white); --theme-searchbox-border: var(--color-gray25); --theme-searchbox-caret-bg: var(--color-blue50); --theme-searchbox-suggestion--hover: rgba(204, 218, 255, 0.5); --theme-atb-card-front-bg: var(--color-white); --theme-atb-card-back-bg: var(--color-white); --theme-atb-button-bg: var(--color-blue50); --theme-atb-button-bg--hover: var(--color-blue60); --theme-atb-button-bg--active: var(--color-blue70); --theme-atb-button-text: var(--color-white); --theme-atb-features-table-bg: var(--color-white); --theme-atb-features-table-bg-alt: var(--color-black-at-6); --theme-atb-features-table-border: var(--color-black-at-9); --theme-atb-features-cta-text: var(--color-black-at-48); --theme-atb-features-cross-bg: var(--color-black-at-48); --theme-atb-features-cross-fill: var(--color-white); --theme-atb-features-check-bg: var(--color-green50); --theme-atb-features-check-fill: var(--color-white); --theme-atb-features-legacy-button-bg: var(--color-black-at-6); --theme-atb-features-legacy-button-text: var(--color-black-at-84); --theme-atb-productmenu-table-bg: var(--color-white); --theme-atb-productmenu-table-bg-alt: var(--color-black-at-3); --theme-atb-productmenu-table-text: var(--color-gray90); --theme-atb-productmenu-table-badge-bg: var(--color-black-at-6); --theme-atb-productmenu-table-badge-text: var(--color-black-at-90); --theme-atb-productmenu-table-icon-bg: var(--color-white); --theme-atb-productmenu-cross-fg: var(--color-white); --theme-atb-productmenu-cross-bg: var(--color-gray60); --theme-atb-productmenu-table-disabled-button-border: var(--color-black-at-12); --theme-atb-productmenu-table-bg-gradient: linear-gradient(-90deg, rgba(217, 217, 217, 0.16) 0%, rgba(255, 255, 255, 0) 86.36%); --theme-atb-cta-mobile-bg: var(--color-white-at-80); --theme-atb-cta-mobile-text-bg: rgba(0, 0, 0, 0.54); --theme-footer-link-text: var(--color-blue60); --theme-bg-grain: url(&quot;/static-assets/backgrounds/grain.png&quot;); --theme-bg-grain-overlay: transparent; --theme-bg-statcard: var(--color-white); --theme-text-statcard-description: var(--color-gray70); --theme-bg-step-card: var(--color-white); --theme-bg-step-num: rgba(57, 105, 239, 0.12); --theme-color-step-num: var(--color-blue60); --theme-bg-download-card: var(--color-white); --theme-border-color-download-card: var(--color-black-at-12); --theme-color-download-card: var(--color-black-at-84); --theme-icon-download-card: var(--color-gray90); --theme-icon-download-card-chrome-windows: var(--color-gray60); --theme-icon-download-card-chrome-mac: var(--color-gray80); --theme-bg-blogposts: var(--color-white); --theme-modal-bg: var(--color-gray0); --theme-modal-setasdefault-bg: radial-gradient(50% 50% at 50% 50%, #ffca9b 0%, #fff9f4 100%); --theme-modal-setasdefault-bg-card: var(--color-white); --theme-modal-setasdefault-bg-number: rgba(57, 105, 239, 0.12); --theme-modal-setasdefault-fg-number: var(--color-blue60); --theme-bg-legacy-home: var(--theme-bg-home-custom, #f7f7f7); --theme-bg-legacy-home-accent: #e37151; --theme-text-legacy-home: var(--theme-text-home-custom, #353748); --theme-text-button-legacy-home: white; --theme-bg-button-legacy-home: #678fff; --theme-bg-legacy-home-card: white; --theme-shadow-legacy-home-card: 0px 10px 16px -8px rgb(0 0 0 / 20%); --theme-border-color-legacy-home: #e5e5e5; --theme-header-icon-color-legacy-home: var(--color-black-at-60); --theme-header-icon-color-hover-legacy-home: var(--color-black-at-84); --theme-bg-legacy-home-dialog-overlay: rgba(210, 210, 210, 0.6); --theme-bg-legacy-home-dialog-install-overlay: rgba(0,0,0,0.85); --theme-bg-legacy-home-popover: white; --theme-text-legacy-home-popover: #666; --theme-shadow-legacy-home-popover: 0 2.5px 20px 0 rgb(0 0 0 / 15%); --theme-bg-legacy-home-searchbox: var(--color-white); --theme-border-color-legacy-home-searchbox: rgba(0, 0, 0, 0.15); --theme-border-color-alt-legacy-home-searchbox: var(--theme-border-color-legacy-home-searchbox); --theme-shadow-legacy-home-searchbox: var(--elevation-50); --theme-placeholder-color-legacy-home-searchbox: #aaa; --theme-border-color-legacy-scroll: var(--color-black-at-12); --theme-border-color-legacy-scroll-card: transparent; --theme-bg-legacy-home-gradient: url('/static-assets/image/pages/home/background-alt-light.jpg'); --theme-shadow-legacy-home-card-alt: 0px 1px 0px rgba(125, 125, 125, 0.06), 0px 0px 0px 1px rgba(150, 150, 150, 0.3),var(--theme-shadow-legacy-home-card); --theme-header-icon-color-hover-legacy-home-exp: #6d6d6d; --theme-header-icon-color-legacy-home-exp: var(--color-black-at-84); --theme-curve-bg-legacy-home: url(&quot;/static-assets/image/pages/legacy-home/curved-bg-light@2x.png&quot;); --theme-searchbox-border-legacy-home-exp: var(--color-white-at-12); --theme-legacy-tagline-subtitle: var(--color-gray70); --theme-legacy-bg-gradient-cool: url(/static-assets/backgrounds/legacy-mobile-homepage-cool-bg-light.png); --theme-legacy-bg-gradient-warm: url(/static-assets/backgrounds/legacy-mobile-homepage-warm-bg-light.png); --theme-legacy-bg-gradient-hard: url(/static-assets/backgrounds/legacy-homepage-btf-mobile-light.png); --theme-legacy-bg-full-gradient: url(/static-assets/backgrounds/legacy-mobile-homepage-full-gradient-light.webp); --theme-legacy-bg-full-gradient-fallback: url(/static-assets/backgrounds/legacy-mobile-homepage-full-gradient-light.png); --theme-legacy-hero-contrast-gray: var(--theme-bg-home-custom, var(--color-gray20)); --theme-legacy-hero-deeper-contrast-gray: var(--theme-bg-home-custom, var(--color-gray25)); --theme-legacy-tagline-text: var(--color-black-at-84); --theme-legacy-startpage-link: var(--color-blue50); --theme-legacy-atb-banner-bg: var(--color-white-at-96); --theme-legacy-button-primary-bg-light-variant: var(--color-blue30); --theme-legacy-button-primary-glow-shadow: #84B5FF; --theme-legacy-button-primary-border-grow: rgba(114, 149, 246, 0.1); --theme-legacy-button-primary-border-grow-end: rgba(114, 149, 246, 0); --theme-bg-home-minimal: var(--theme-bg-home-custom, #f7f7f7); --theme-bg-home-minimal--mobile: var(--theme-bg-home-custom, var(--color-white-at-70); --theme-bg-home-minimal--mobile--expanded: #f2f2f2; --theme-home-tagline-text: #9a9a9a; --theme-minimal-searchbox-bg: var(--theme-searchbox-bg); --theme-bg-home-exp-gradient: linear-gradient(180deg, #F1F1F1 0%, rgba(217, 217, 217, 0) 107.29%); --theme-bg-exp-searchbox: var(--color-white); --theme-color-exp-home-searchbox: rgb(34,34,34); --theme-home-scroll-arrow-bg: var(--color-white); --theme-home-scroll-arrow-text: var(--color-black-at-80); --theme-bg-home-exp--mobile: var(--color-gray20); --theme-bg-home-bottom: linear-gradient(179.78deg, #FFD43F 2.83%, #FFB29A 43.24%, #F7E6FF 72.03%, #E2E9FF 91.72%); --theme-home-trackercard-bg: var(--color-white); --theme-home-trackercard-shadow: 0px 1px 0px rgba(125, 125, 125, 0.05), 0px 0px 0px 1px rgba(150, 150, 150, 0.3); --theme-filterbubble-green-bg: var(--color-white); --theme-filterbubble-green-title: var(--color-green60); --theme-filterbubble-red-bg: var(--color-white); --theme-filterbubble-red-title: var(--color-red50); --theme-filterbubble-purple-bg: var(--color-white); --theme-filterbubble-purple-title: var(--color-purple50); --theme-filterbubble-text: var(--color-gray85); --theme-howitworks-section-title: var(--color-gray70); --theme-howitworks-downloads-bg: var(--color-white); --theme-home-cta-bottom-bg: var(--color-white-at-70); --theme-home-cta-bottom-border: rgba(0, 0, 0, 0.3); --theme-home-quotes-blend: multiply; --theme-accordion-background: rgba(255, 255, 255, 0.5); --theme-accordion-background--hover: rgba(255, 255, 255, 0.8); --theme-accordion-background--expanded: var(--color-white); --theme-accordion-border-color: transparent; --theme-accordion-text: var(--theme-text-bg ); --legacy-theme-atb-background: #fff; --legacy-theme-atb-text: #333; --legacy-theme-atb-subtitle: #333; --legacy-theme-atb-link: #66abff; --legacy-theme-atb-border: 1px solid #d2d2d2; --legacy-theme-atb-shadow: 0 -2px 3px rgb(0 0 0 / 6%); --legacy-theme-atb-button-background: #66abff; --legacy-theme-atb-button-border: #66abff; --legacy-theme-atb-button-text: #fff; --legacy-theme-mobile-gradient: url(&quot;/static-assets/image/pages/legacy-home/background-alt-light-mobile-full.jpg&quot;); --legacy-theme-tablet-gradient: url(&quot;/static-assets/image/pages/legacy-home/background-alt-light-tablet.jpg&quot;);\" class=\"is-not-mobile-device is-minimal-dismissed-homepage\">"
            }
          ]
        }
      ]
    }
  end
end
