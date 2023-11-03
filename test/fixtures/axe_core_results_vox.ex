defmodule A11yAudit.Fixtures.AxeCoreResultsVox do
  def expected_value do
    %A11yAudit.Results{
      test_engine: %{"name" => "axe-core", "version" => "4.8.2"},
      url: "https://www.vox.com/",
      violations: [
        %A11yAudit.Results.Result{
          id: "color-contrast",
          description:
            "Ensures the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds",
          help: "Elements must meet minimum color contrast ratio thresholds",
          help_url: "https://dequeuniversity.com/rules/axe/4.8/color-contrast?application=axeAPI",
          impact: :serious,
          nodes: [
            %A11yAudit.Results.Node{
              html: "<a href=\"https://www.vox.com/even-better\">View All</a>"
            },
            %A11yAudit.Results.Node{
              html: "<a rel=\"nofollow\" href=\"/pages/about-us\">About us</a>"
            },
            %A11yAudit.Results.Node{html: "<a rel=\"nofollow\" href=\"/masthead\">Our staff</a>"},
            %A11yAudit.Results.Node{
              html:
                "<a rel=\"nofollow\" href=\"https://www.voxmedia.com/legal/privacy-notice\">Privacy policy</a>"
            },
            %A11yAudit.Results.Node{
              html:
                "<a rel=\"nofollow\" href=\"https://www.vox.com/2018/12/7/18113237/ethics-and-guidelines-at-vox-com\">Ethics &amp; Guidelines</a>"
            },
            %A11yAudit.Results.Node{
              html: "<a rel=\"nofollow\" href=\"/pages/funding\">How we make money</a>"
            },
            %A11yAudit.Results.Node{html: "<a rel=\"nofollow\" href=\"/contact\">Contact us</a>"},
            %A11yAudit.Results.Node{
              html:
                "<a rel=\"nofollow\" href=\"/pages/how-to-pitch-vox-pitching-guidelines\">How to pitch Vox</a>"
            },
            %A11yAudit.Results.Node{
              html:
                "<a rel=\"nofollow\" href=\"https://www.voxmedia.com/legal/terms-of-use\">Terms of Use</a>"
            },
            %A11yAudit.Results.Node{
              html:
                "<a rel=\"nofollow\" href=\"https://www.voxmedia.com/legal/privacy-notice\">Privacy Notice</a>"
            },
            %A11yAudit.Results.Node{
              html:
                "<a rel=\"nofollow\" href=\"https://www.voxmedia.com/legal/cookie-policy\">Cookie Policy</a>"
            },
            %A11yAudit.Results.Node{
              html:
                "<a rel=\"nofollow\" href=\"/contact#donotsell\">Do Not Sell or Share My Personal Info</a>"
            },
            %A11yAudit.Results.Node{
              html:
                "<a rel=\"nofollow\" href=\"https://www.voxmedia.com/pages/licensing\">Licensing FAQ</a>"
            },
            %A11yAudit.Results.Node{
              html:
                "<a rel=\"nofollow\" href=\"https://www.voxmedia.com/legal/accessibility\">Accessibility</a>"
            },
            %A11yAudit.Results.Node{
              html: "<a rel=\"nofollow\" href=\"https://status.voxmedia.com\">Platform Status</a>"
            },
            %A11yAudit.Results.Node{
              html:
                "<a rel=\"nofollow\" href=\"https://www.voxmedia.com/vox-advertising\">Advertise with us</a>"
            },
            %A11yAudit.Results.Node{
              html: "<a rel=\"nofollow\" href=\"https://jobs.voxmedia.com\">Jobs @ Vox Media</a>"
            },
            %A11yAudit.Results.Node{
              html:
                "<a rel=\"nofollow\" class=\"u-block\" href=\"https://voxmedia.stories.usechorus.com/?community_id=441\">Author Login</a>"
            },
            %A11yAudit.Results.Node{
              html: "<a rel=\"nofollow\" href=\"https://www.voxmedia.com\">Vox Media</a>"
            }
          ]
        },
        %A11yAudit.Results.Result{
          id: "frame-title",
          description: "Ensures <iframe> and <frame> elements have an accessible name",
          help: "Frames must have an accessible name",
          help_url: "https://dequeuniversity.com/rules/axe/4.8/frame-title?application=axeAPI",
          impact: :serious,
          nodes: [
            %A11yAudit.Results.Node{
              html:
                "<iframe frameborder=\"0\" src=\"https://player.megaphone.fm/VMP7944317880?light=true\" width=\"100%\" height=\"124\" scrolling=\"no\"></iframe>"
            },
            %A11yAudit.Results.Node{
              html:
                "<iframe frameborder=\"0\" src=\"https://player.megaphone.fm/VMP1613635498?light=true\" width=\"100%\" height=\"124\" scrolling=\"no\"></iframe>"
            }
          ]
        },
        %A11yAudit.Results.Result{
          id: "image-alt",
          description:
            "Ensures <img> elements have alternate text or a role of none or presentation",
          help: "Images must have alternate text",
          help_url: "https://dequeuniversity.com/rules/axe/4.8/image-alt?application=axeAPI",
          impact: :critical,
          nodes: [
            %A11yAudit.Results.Node{
              html: "<img data-native-ad-id=\"logo\" class=\"native-ad-logo\">"
            }
          ]
        },
        %A11yAudit.Results.Result{
          id: "landmark-unique",
          description:
            "Landmarks should have a unique role or role/label/title (i.e. accessible name) combination",
          help: "Ensures landmarks are unique",
          help_url:
            "https://dequeuniversity.com/rules/axe/4.8/landmark-unique?application=axeAPI",
          impact: :moderate,
          nodes: [
            %A11yAudit.Results.Node{
              html:
                "<aside class=\"c-rock-list c-rock-list--image c-rock-list--hub\" id=\"rock-videos\">"
            }
          ]
        },
        %A11yAudit.Results.Result{
          id: "link-in-text-block",
          description:
            "Ensure links are distinguished from surrounding text in a way that does not rely on color",
          help: "Links must be distinguishable without relying on color",
          help_url:
            "https://dequeuniversity.com/rules/axe/4.8/link-in-text-block?application=axeAPI",
          impact: :serious,
          nodes: [
            %A11yAudit.Results.Node{
              html: "<a href=\"https://www.voxmedia.com/legal/terms-of-use\">Terms</a>"
            },
            %A11yAudit.Results.Node{
              html: "<a href=\"https://www.voxmedia.com/legal/privacy-notice\">Privacy Notice</a>"
            },
            %A11yAudit.Results.Node{
              html: "<a href=\"https://policies.google.com/privacy\">Privacy Policy</a>"
            },
            %A11yAudit.Results.Node{
              html: "<a href=\"https://policies.google.com/terms\">Terms of Service</a>"
            },
            %A11yAudit.Results.Node{
              html: "<a href=\"https://www.vox.com/pages/newsletters\">newsletters page</a>"
            },
            %A11yAudit.Results.Node{
              html: "<a href=\"https://www.voxmedia.com/legal/terms-of-use\">Terms</a>"
            },
            %A11yAudit.Results.Node{
              html: "<a href=\"https://www.voxmedia.com/legal/privacy-notice\">Privacy Notice</a>"
            },
            %A11yAudit.Results.Node{
              html: "<a href=\"https://policies.google.com/privacy\">Privacy Policy</a>"
            },
            %A11yAudit.Results.Node{
              html: "<a href=\"https://policies.google.com/terms\">Terms of Service</a>"
            },
            %A11yAudit.Results.Node{
              html: "<a href=\"https://www.vox.com/pages/newsletters\">newsletters page</a>"
            },
            %A11yAudit.Results.Node{
              html: "<a rel=\"nofollow\" href=\"https://www.voxmedia.com\">Vox Media</a>"
            }
          ]
        },
        %A11yAudit.Results.Result{
          id: "link-name",
          description: "Ensures links have discernible text",
          help: "Links must have discernible text",
          help_url: "https://dequeuniversity.com/rules/axe/4.8/link-name?application=axeAPI",
          impact: :serious,
          nodes: [
            %A11yAudit.Results.Node{
              html:
                "<a class=\"c-entry-box__ad-logo\" href=\"https://www.voxmedia.com/careers\"><img data-native-ad-id=\"logo\" class=\"native-ad-logo\"></a>"
            }
          ]
        },
        %A11yAudit.Results.Result{
          id: "page-has-heading-one",
          description:
            "Ensure that the page, or at least one of its frames contains a level-one heading",
          help: "Page should contain a level-one heading",
          help_url:
            "https://dequeuniversity.com/rules/axe/4.8/page-has-heading-one?application=axeAPI",
          impact: :moderate,
          nodes: [%A11yAudit.Results.Node{html: "<html lang=\"en\" class=\"fonts-loaded\">"}]
        },
        %A11yAudit.Results.Result{
          id: "region",
          description: "Ensures all page content is contained by landmarks",
          help: "All page content should be contained by landmarks",
          help_url: "https://dequeuniversity.com/rules/axe/4.8/region?application=axeAPI",
          impact: :moderate,
          nodes: [
            %A11yAudit.Results.Node{
              html:
                "<span class=\"c-breaking-news__label\">\n      We have a request\n    </span>"
            },
            %A11yAudit.Results.Node{
              html:
                "<a href=\"http://vox.com/pages/support-now?itm_campaign=chip-in&amp;itm_medium=site&amp;itm_source=banner\">Vox's journalism is free, because we believe that everyone deserves to understand the world they live in. Reader support helps us do that. Can you chip in to help keep Vox free for all? </a>"
            },
            %A11yAudit.Results.Node{
              html:
                "<a href=\"http://vox.com/pages/support-now?itm_campaign=help-us-plan-eoy22&amp;itm_medium=site&amp;itm_source=banner\" class=\"p-button c-breaking-news__contribute-button\">Yes, I'll give</a>"
            }
          ]
        },
        %A11yAudit.Results.Result{
          id: "svg-img-alt",
          description:
            "Ensures <svg> elements with an img, graphics-document or graphics-symbol role have an accessible text",
          help: "<svg> elements with an img role must have an alternative text",
          help_url: "https://dequeuniversity.com/rules/axe/4.8/svg-img-alt?application=axeAPI",
          impact: :serious,
          nodes: [
            %A11yAudit.Results.Node{
              html: "<svg role=\"img\"><use xlink:href=\"#icon-norgie-down\"></use></svg>"
            },
            %A11yAudit.Results.Node{
              html: "<svg role=\"img\"><use xlink:href=\"#icon-norgie-down\"></use></svg>"
            }
          ]
        }
      ]
    }
  end
end
