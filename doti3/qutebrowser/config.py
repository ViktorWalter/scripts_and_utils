# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Uncomment this to still load settings configured via autoconfig.yml
# config.load_autoconfig()

# Comma-separated list of regular expressions to use for 'next' links.
# Type: List of Regex
c.hints.next_regexes = ['\\bnext\\b', '\\bmore\\b', '\\bnewer\\b', '\\b[>→≫]\\b', '\\b(>>|»)\\b', '\\bcontinue\\b', '\\bnext page\\b']

# List of user stylesheet filenames to use.
# Type: List of File, or File
c.content.user_stylesheets = ['~/.i3/adblock.css', '~/.i3/dark_all.css']

# Enable plugins in Web pages.
# Type: Bool
c.content.plugins = True

# Editor (and arguments) to use for the `open-editor` command. The
# following placeholders are defined: * `{file}`: Filename of the file
# to be edited. * `{line}`: Line in which the caret is found in the
# text. * `{column}`: Column in which the caret is found in the text. *
# `{line0}`: Same as `{line}`, but starting from index 0. * `{column0}`:
# Same as `{column}`, but starting from index 0.
# Type: ShellCommand
c.editor.command = ['urxvt', '-e', 'vim', '{}']

# Page(s) to open at the start.
# Type: List of FuzzyUrl, or FuzzyUrl
c.url.start_pages = 'https://new.startpage.com/do/mypage.pl?prfe=36c84513558a2d34bf0d89ea505333ad59fcc4f8848a538a16d6cb79090545dc5065027ac0acf3046b63a5146635b4c9'

# Backend to use to display websites. qutebrowser supports two different
# web rendering engines / backends, QtWebKit and QtWebEngine. QtWebKit
# was discontinued by the Qt project with Qt 5.6, but picked up as a
# well maintained fork: https://github.com/annulen/webkit/wiki -
# qutebrowser only supports the fork. QtWebEngine is Qt's official
# successor to QtWebKit. It's slightly more resource hungry than
# QtWebKit and has a couple of missing features in qutebrowser, but is
# generally the preferred choice.
# Type: String
# Valid values:
#   - webengine: Use QtWebEngine (based on Chromium).
#   - webkit: Use QtWebKit (based on WebKit, similar to Safari).
c.backend = 'webengine'

# Page to open if :open -t/-b/-w is used without URL. Use `about:blank`
# for a blank page.
# Type: FuzzyUrl
c.url.default_page = 'https://new.startpage.com/do/mypage.pl?prfe=36c84513558a2d34bf0d89ea505333ad59fcc4f8848a538a16d6cb79090545dc5065027ac0acf3046b63a5146635b4c9'

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'file://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# When a hint can be automatically followed without pressing Enter.
# Type: String
# Valid values:
#   - always: Auto-follow whenever there is only a single hint on a page.
#   - unique-match: Auto-follow whenever there is a unique non-empty match in either the hint string (word mode) or filter (number mode).
#   - full-match: Follow the hint when the user typed the whole hint (letter, word or number mode) or the element's text (only in number mode).
#   - never: The user will always need to press Enter to follow a hint.
c.hints.auto_follow = 'always'

# Scatter hint key chains (like Vimium) or not (like dwb). Ignored for
# number hints.
# Type: Bool
c.hints.scatter = True

# Search engines which can be used via the address bar. Maps a search
# engine name (such as `DEFAULT`, or `ddg`) to a URL with a `{}`
# placeholder. The placeholder will be replaced by the search term, use
# `{{` and `}}` for literal `{`/`}` signs. The search engine named
# `DEFAULT` is used when `url.auto_search` is turned on and something
# else than a URL was entered to be opened. Other search engines can be
# used by prepending the search engine name to the search term, e.g.
# `:open google qutebrowser`.
# Type: Dict
c.url.searchengines = {'te': 'https://en.wikipedia.org/w/index.php?search={}', 'DEFAULT': 'https://new.startpage.com/do/dsearch?query={}', 'ts': 'https://translate.google.com/?hl=en&tab=wT#auto/sk/{}', 'w': 'https://en.wikipedia.org/w/index.php?search={}', 't': 'https://translate.google.com/?hl=en&tab=wT#auto/en/{}', 'y': 'https://www.youtube.com/results?search_query={}', 'g': 'https://www.google.com/search?q={}', 'm': 'www.google.com/maps/search/{}', 'wa': 'https://www.wolframalpha.com/input/?i={}'}

# Background color for webpages if unset (or empty to use the theme's
# color).
# Type: QtColor
c.colors.webpage.bg = '#666666'

# Always restore open sites when qutebrowser is reopened.
# Type: Bool
c.auto_save.session = True

# Bindings for normal mode
config.bind('<Escape>', 'fake-key <esc> ;; fake-key --global <esc>')
config.bind('B', 'set-cmd-text -s :bookmark-load -t')
config.bind('F', 'hint all tab-bg')
config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')
config.bind('T', 'set-cmd-text -s :buffer')
config.bind('_#_', 'jseval --quiet document.getSelection().anchorNode.parentNode.id=clickhere')
config.bind('_$_', 'click-element --force-event id clickhere')
config.bind('_%_', 'jseval --quiet function hasScroll(el, direction) { direction = (direction === \'vertical\') ? \'scrollTop\' : \'scrollLeft\'; var result = !! el[direction]; if (!result) { el[direction] = 1; result = !!el[direction]; el[direction] = 0; } return result; } function elementInViewport2(el) { var el_top = el.offsetTop; var el_left = el.offsetLeft; var el_width = el.offsetWidth; var el_height = el.offsetHeight; while(el.offsetParent) { el = el.offsetParent; el_top += el.offsetTop; el_left += el.offsetLeft; } return ( el_top < (window.pageYOffset + window.innerHeight) && el_left < (window.pageXOffset + window.innerWidth) && (el_top + el_height) > window.pageYOffset && (el_left + el_width) > window.pageXOffset); } var pres = document.querySelectorAll(\'div,pre,ul,ol,body\'); var focusedAny=false; for(var i=0; i<pres.length; i++) { if( pres[i].focused ){ focusedAny =true; var focusedPrev =i; break; } } var focusedNext = 0; if (focusedAny){ focusedNext = focusedPrev+1; if (focusedNext >= (pres.length)){ focusedNext=0; } } else { var focusedPrev = pres.length-1; focusedNext = 0; } var foundAnyVisible=false; for(var j=0; j<pres.length; j++){ if ((focusedNext==focusedPrev)&&(focusedAny)){ break; } if ((elementInViewport2(pres[focusedNext])) && (hasScroll(pres[focusedNext],\'vertical\') || hasScroll(pres[focusedNext],\'horizontal\')) ){ /*window.alert(pres[focusedNext].tagName)*/; foundAnyVisible =true; break; } focusedNext=focusedNext+1; if (focusedNext >= (pres.length-1)){ focusedNext=0; } } if (foundAnyVisible){ pres[focusedPrev].focused=false; pres[focusedPrev].style="border:1px solid White;"; pres[focusedPrev].id=""; pres[focusedNext].focused=true; pres[focusedNext].id="clickhere"; pres[focusedNext].style="border:2px solid Tomato;"; } ')
config.bind('_^_', 'jseval --quiet var body_el = document.getElementsByTagName(\'body\'); body_el.id="clickhere"')
config.bind('b', 'set-cmd-text -s :bookmark-load')
config.bind('g/', 'fake-key --global _#__$_')
config.bind('g<Escape>', 'fake-key <esc>')
config.bind('gP', 'fake-key --global _^__$_')
config.bind('ge', 'set-cmd-text :open {url:pretty}')
config.bind('gi', 'hint inputs')
config.bind('gp', 'fake-key --global _%__$_')
config.bind('x', 'tab-close')
