defmodule A11yAudit.Fixtures.AxeCoreResultsVox do
  def expected_value do
    %A11yAudit.Results{
      test_engine: %{"name" => "axe-core", "version" => "4.8.2"},
      url: "https://www.vox.com/",
      violations: [
        %A11yAudit.Results.Violation{
          description:
            "Ensures the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds",
          help: "Elements must meet minimum color contrast ratio thresholds",
          help_url: "https://dequeuniversity.com/rules/axe/4.8/color-contrast?application=axeAPI",
          id: "color-contrast",
          impact: :serious,
          nodes: [
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 10.1pt (13.5px), font weight: normal). Expected contrast ratio of 4.5:1",
              html: "<a href=\"https://www.vox.com/even-better\">View All</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 11.3pt (15px), font weight: normal). Expected contrast ratio of 4.5:1",
              html: "<a rel=\"nofollow\" href=\"/pages/about-us\">About us</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 11.3pt (15px), font weight: normal). Expected contrast ratio of 4.5:1",
              html: "<a rel=\"nofollow\" href=\"/masthead\">Our staff</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 11.3pt (15px), font weight: normal). Expected contrast ratio of 4.5:1",
              html:
                "<a rel=\"nofollow\" href=\"https://www.voxmedia.com/legal/privacy-notice\">Privacy policy</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 11.3pt (15px), font weight: normal). Expected contrast ratio of 4.5:1",
              html:
                "<a rel=\"nofollow\" href=\"https://www.vox.com/2018/12/7/18113237/ethics-and-guidelines-at-vox-com\">Ethics &amp; Guidelines</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 11.3pt (15px), font weight: normal). Expected contrast ratio of 4.5:1",
              html: "<a rel=\"nofollow\" href=\"/pages/funding\">How we make money</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 11.3pt (15px), font weight: normal). Expected contrast ratio of 4.5:1",
              html: "<a rel=\"nofollow\" href=\"/contact\">Contact us</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 11.3pt (15px), font weight: normal). Expected contrast ratio of 4.5:1",
              html:
                "<a rel=\"nofollow\" href=\"/pages/how-to-pitch-vox-pitching-guidelines\">How to pitch Vox</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 10.1pt (13.5px), font weight: normal). Expected contrast ratio of 4.5:1",
              html:
                "<a rel=\"nofollow\" href=\"https://www.voxmedia.com/legal/terms-of-use\">Terms of Use</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 10.1pt (13.5px), font weight: normal). Expected contrast ratio of 4.5:1",
              html:
                "<a rel=\"nofollow\" href=\"https://www.voxmedia.com/legal/privacy-notice\">Privacy Notice</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 10.1pt (13.5px), font weight: normal). Expected contrast ratio of 4.5:1",
              html:
                "<a rel=\"nofollow\" href=\"https://www.voxmedia.com/legal/cookie-policy\">Cookie Policy</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 10.1pt (13.5px), font weight: normal). Expected contrast ratio of 4.5:1",
              html:
                "<a rel=\"nofollow\" href=\"/contact#donotsell\">Do Not Sell or Share My Personal Info</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 10.1pt (13.5px), font weight: normal). Expected contrast ratio of 4.5:1",
              html:
                "<a rel=\"nofollow\" href=\"https://www.voxmedia.com/pages/licensing\">Licensing FAQ</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 10.1pt (13.5px), font weight: normal). Expected contrast ratio of 4.5:1",
              html:
                "<a rel=\"nofollow\" href=\"https://www.voxmedia.com/legal/accessibility\">Accessibility</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 10.1pt (13.5px), font weight: normal). Expected contrast ratio of 4.5:1",
              html: "<a rel=\"nofollow\" href=\"https://status.voxmedia.com\">Platform Status</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 10.1pt (13.5px), font weight: normal). Expected contrast ratio of 4.5:1",
              html:
                "<a rel=\"nofollow\" href=\"https://www.voxmedia.com/vox-advertising\">Advertise with us</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 10.1pt (13.5px), font weight: normal). Expected contrast ratio of 4.5:1",
              html: "<a rel=\"nofollow\" href=\"https://jobs.voxmedia.com\">Jobs @ Vox Media</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 10.1pt (13.5px), font weight: normal). Expected contrast ratio of 4.5:1",
              html:
                "<a rel=\"nofollow\" class=\"u-block\" href=\"https://voxmedia.stories.usechorus.com/?community_id=441\">Author Login</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has insufficient color contrast of 4.3 (foreground color: #4f7177, background color: #e9e7e8, font size: 8.1pt (10.8px), font weight: normal). Expected contrast ratio of 4.5:1",
              html: "<a rel=\"nofollow\" href=\"https://www.voxmedia.com\">Vox Media</a>"
            }
          ]
        },
        %A11yAudit.Results.Violation{
          description: "Ensures <iframe> and <frame> elements have an accessible name",
          help: "Frames must have an accessible name",
          help_url: "https://dequeuniversity.com/rules/axe/4.8/frame-title?application=axeAPI",
          id: "frame-title",
          impact: :serious,
          nodes: [
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has no title attribute\n  aria-label attribute does not exist or is empty\n  aria-labelledby attribute does not exist, references elements that do not exist or references elements that are empty\n  Element's default semantics were not overridden with role=\"none\" or role=\"presentation\"",
              html:
                "<iframe frameborder=\"0\" src=\"https://player.megaphone.fm/VMP7944317880?light=true\" width=\"100%\" height=\"124\" scrolling=\"no\"></iframe>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has no title attribute\n  aria-label attribute does not exist or is empty\n  aria-labelledby attribute does not exist, references elements that do not exist or references elements that are empty\n  Element's default semantics were not overridden with role=\"none\" or role=\"presentation\"",
              html:
                "<iframe frameborder=\"0\" src=\"https://player.megaphone.fm/VMP1613635498?light=true\" width=\"100%\" height=\"124\" scrolling=\"no\"></iframe>"
            }
          ]
        },
        %A11yAudit.Results.Violation{
          description:
            "Ensures <img> elements have alternate text or a role of none or presentation",
          help: "Images must have alternate text",
          help_url: "https://dequeuniversity.com/rules/axe/4.8/image-alt?application=axeAPI",
          id: "image-alt",
          impact: :critical,
          nodes: [
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element does not have an alt attribute\n  aria-label attribute does not exist or is empty\n  aria-labelledby attribute does not exist, references elements that do not exist or references elements that are empty\n  Element has no title attribute\n  Element's default semantics were not overridden with role=\"none\" or role=\"presentation\"",
              html: "<img data-native-ad-id=\"logo\" class=\"native-ad-logo\">"
            }
          ]
        },
        %A11yAudit.Results.Violation{
          description:
            "Landmarks should have a unique role or role/label/title (i.e. accessible name) combination",
          help: "Ensures landmarks are unique",
          help_url:
            "https://dequeuniversity.com/rules/axe/4.8/landmark-unique?application=axeAPI",
          id: "landmark-unique",
          impact: :moderate,
          nodes: [
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  The landmark must have a unique aria-label, aria-labelledby, or title to make landmarks distinguishable",
              html:
                "<aside class=\"c-rock-list c-rock-list--image c-rock-list--hub\" id=\"rock-videos\">"
            }
          ]
        },
        %A11yAudit.Results.Violation{
          description:
            "Ensure links are distinguished from surrounding text in a way that does not rely on color",
          help: "Links must be distinguishable without relying on color",
          help_url:
            "https://dequeuniversity.com/rules/axe/4.8/link-in-text-block?application=axeAPI",
          id: "link-in-text-block",
          impact: :serious,
          nodes: [
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  The link has insufficient color contrast of 1.16:1 with the surrounding text. (Minimum contrast is 3:1, link text: #4f7177, surrounding text: #767676)\n  The link has no styling (such as underline) to distinguish it from the surrounding text",
              html: "<a href=\"https://www.voxmedia.com/legal/terms-of-use\">Terms</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  The link has insufficient color contrast of 1.16:1 with the surrounding text. (Minimum contrast is 3:1, link text: #4f7177, surrounding text: #767676)\n  The link has no styling (such as underline) to distinguish it from the surrounding text",
              html: "<a href=\"https://www.voxmedia.com/legal/privacy-notice\">Privacy Notice</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  The link has insufficient color contrast of 1.16:1 with the surrounding text. (Minimum contrast is 3:1, link text: #4f7177, surrounding text: #767676)\n  The link has no styling (such as underline) to distinguish it from the surrounding text",
              html: "<a href=\"https://policies.google.com/privacy\">Privacy Policy</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  The link has insufficient color contrast of 1.16:1 with the surrounding text. (Minimum contrast is 3:1, link text: #4f7177, surrounding text: #767676)\n  The link has no styling (such as underline) to distinguish it from the surrounding text",
              html: "<a href=\"https://policies.google.com/terms\">Terms of Service</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  The link has insufficient color contrast of 1.16:1 with the surrounding text. (Minimum contrast is 3:1, link text: #4f7177, surrounding text: #767676)\n  The link has no styling (such as underline) to distinguish it from the surrounding text",
              html: "<a href=\"https://www.vox.com/pages/newsletters\">newsletters page</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  The link has insufficient color contrast of 1.16:1 with the surrounding text. (Minimum contrast is 3:1, link text: #4f7177, surrounding text: #767676)\n  The link has no styling (such as underline) to distinguish it from the surrounding text",
              html: "<a href=\"https://www.voxmedia.com/legal/terms-of-use\">Terms</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  The link has insufficient color contrast of 1.16:1 with the surrounding text. (Minimum contrast is 3:1, link text: #4f7177, surrounding text: #767676)\n  The link has no styling (such as underline) to distinguish it from the surrounding text",
              html: "<a href=\"https://www.voxmedia.com/legal/privacy-notice\">Privacy Notice</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  The link has insufficient color contrast of 1.16:1 with the surrounding text. (Minimum contrast is 3:1, link text: #4f7177, surrounding text: #767676)\n  The link has no styling (such as underline) to distinguish it from the surrounding text",
              html: "<a href=\"https://policies.google.com/privacy\">Privacy Policy</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  The link has insufficient color contrast of 1.16:1 with the surrounding text. (Minimum contrast is 3:1, link text: #4f7177, surrounding text: #767676)\n  The link has no styling (such as underline) to distinguish it from the surrounding text",
              html: "<a href=\"https://policies.google.com/terms\">Terms of Service</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  The link has insufficient color contrast of 1.16:1 with the surrounding text. (Minimum contrast is 3:1, link text: #4f7177, surrounding text: #767676)\n  The link has no styling (such as underline) to distinguish it from the surrounding text",
              html: "<a href=\"https://www.vox.com/pages/newsletters\">newsletters page</a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  The link has insufficient color contrast of 1.58:1 with the surrounding text. (Minimum contrast is 3:1, link text: #4f7177, surrounding text: #4c4e4d)\n  The link has no styling (such as underline) to distinguish it from the surrounding text",
              html: "<a rel=\"nofollow\" href=\"https://www.voxmedia.com\">Vox Media</a>"
            }
          ]
        },
        %A11yAudit.Results.Violation{
          description: "Ensures links have discernible text",
          help: "Links must have discernible text",
          help_url: "https://dequeuniversity.com/rules/axe/4.8/link-name?application=axeAPI",
          id: "link-name",
          impact: :serious,
          nodes: [
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix all of the following:\n  Element is in tab order and does not have accessible text\n\nFix any of the following:\n  Element does not have text that is visible to screen readers\n  aria-label attribute does not exist or is empty\n  aria-labelledby attribute does not exist, references elements that do not exist or references elements that are empty\n  Element has no title attribute",
              html:
                "<a class=\"c-entry-box__ad-logo\" href=\"https://www.voxmedia.com/careers\"><img data-native-ad-id=\"logo\" class=\"native-ad-logo\"></a>"
            }
          ]
        },
        %A11yAudit.Results.Violation{
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
              html: "<html lang=\"en\" class=\"fonts-loaded\">"
            }
          ]
        },
        %A11yAudit.Results.Violation{
          description: "Ensures all page content is contained by landmarks",
          help: "All page content should be contained by landmarks",
          help_url: "https://dequeuniversity.com/rules/axe/4.8/region?application=axeAPI",
          id: "region",
          impact: :moderate,
          nodes: [
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Some page content is not contained by landmarks",
              html:
                "<span class=\"c-breaking-news__label\">\n      We have a request\n    </span>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Some page content is not contained by landmarks",
              html:
                "<a href=\"http://vox.com/pages/support-now?itm_campaign=chip-in&amp;itm_medium=site&amp;itm_source=banner\">Vox's journalism is free, because we believe that everyone deserves to understand the world they live in. Reader support helps us do that. Can you chip in to help keep Vox free for all? </a>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Some page content is not contained by landmarks",
              html:
                "<a href=\"http://vox.com/pages/support-now?itm_campaign=help-us-plan-eoy22&amp;itm_medium=site&amp;itm_source=banner\" class=\"p-button c-breaking-news__contribute-button\">Yes, I'll give</a>"
            }
          ]
        },
        %A11yAudit.Results.Violation{
          description:
            "Ensures <svg> elements with an img, graphics-document or graphics-symbol role have an accessible text",
          help: "<svg> elements with an img role must have an alternative text",
          help_url: "https://dequeuniversity.com/rules/axe/4.8/svg-img-alt?application=axeAPI",
          id: "svg-img-alt",
          impact: :serious,
          nodes: [
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has no child that is a title\n  aria-label attribute does not exist or is empty\n  aria-labelledby attribute does not exist, references elements that do not exist or references elements that are empty\n  Element has no title attribute",
              html: "<svg role=\"img\"><use xlink:href=\"#icon-norgie-down\"></use></svg>"
            },
            %A11yAudit.Results.Node{
              failure_summary:
                "Fix any of the following:\n  Element has no child that is a title\n  aria-label attribute does not exist or is empty\n  aria-labelledby attribute does not exist, references elements that do not exist or references elements that are empty\n  Element has no title attribute",
              html: "<svg role=\"img\"><use xlink:href=\"#icon-norgie-down\"></use></svg>"
            }
          ]
        }
      ]
    }
  end
end
