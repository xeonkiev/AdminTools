# Chrome

User :

- [Buffer](https://chrome.google.com/webstore/detail/buffer/noojglkidnpfjbincgijbaiedldjfbhh)
- [kippt](https://chrome.google.com/webstore/detail/kippt/pjldngiecbcfldpghnimmdelafenmbni)
- [HTTPS everywhere](https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp?hl=en)
- [Chime notifications](https://chrome.google.com/webstore/detail/chime/lkdfkbkkfdhhfnhgbphecddnpfnoedke?hl=en)
- [Translate](https://chrome.google.com/webstore/detail/instant-translate/ihmgiclibbndffejedjimfjmfoabpcke/related?hl=en)

Dev:

- [Web Server Notifier](https://chrome.google.com/webstore/detail/web-server-notifier/najdkmbedaehkepolllmpdfccdgooajh?hl=EN)
- [Web Technology Notifier](https://chrome.google.com/webstore/detail/web-technology-notifier/fnpgnmindcbkjbpblcklealdhnogmlko?hl=EN)
- [Chrome Sniffer](https://chrome.google.com/webstore/detail/chrome-sniffer/homgcnaoacgigpkkljjjekpignblkeae)
- [Ultimate User Agent](https://chrome.google.com/webstore/detail/ultimate-user-agent-switc/ljfpjnehmoiabkefmnjegmpdddgcdnpo)
- [What Font?](https://chrome.google.com/webstore/detail/whatfont/jabopobgcpjmedljpbcaablpmlmfcogm)
- [Clear Cache](https://chrome.google.com/webstore/detail/clear-cache/cppjkneekbjaeellbfkmgnhonkkjfpdn?utm_source=chrome-ntp-icon)
- [REST Client](https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo)
- [Railspanel](https://chrome.google.com/webstore/detail/railspanel/gjpfobpafnhjhbajcjgccbbdofdckggg?hl=en)
- [Edit Cookie](https://chrome.google.com/webstore/detail/edit-this-cookie/fngmhnnpilhplaeedifhccceomclgfbg?hl=en)
- [jQuery debugger](https://chrome.google.com/webstore/detail/jquery-debugger/dbhhnnnpaeobfddmlalhnehgclcmjimi/reviews?hl=en)
- [XML tree](https://chrome.google.com/webstore/detail/xml-tree/gbammbheopgpmaagmckhpjbfgdfkpadb/related?hl=en)
- [JSON formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa/details?hl=en)
- [PrettyPrint](https://chrome.google.com/webstore/detail/prettyprint/nipdlgebaanapcphbcidpmmmkcecpkhg?hl=EN)
- [Live Reload](https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei/details?hl=EN)

Low :

- [Markdown here](https://chrome.google.com/webstore/detail/markdown-here/elifhakcjgalahccnjkneoccemfahfoa?hl=en)
- [Mesure it](https://chrome.google.com/webstore/detail/measureit/aonjhmdcgbgikgjapjckfkefpphjpgma?hl=en)
- [Pages Speed](https://chrome.google.com/webstore/detail/pagespeed-insights-by-goo/gplegfbjlmmehdoakndmohflojccocli?hl=en)
- [Theme Sniffer](https://chrome.google.com/webstore/detail/theme-sniffer/kihhefcbenhkjgjhchanjfhhflaojldn)
- [DNS Flusher](https://chrome.google.com/webstore/detail/dns-flusher-for-chrome/fegcjmebpcoihkfdjilmnemfkgjbneol)
- [ClearBrowserData](https://chrome.google.com/webstore/search-extensions/ClearBrowserData)


# Hardlink OSX:
[doc](http://code.google.com/p/bindfs/)

  brew install bindfs

# Sublime text :

## Sublime text Install Package Control
Go to : View > Show Console
Copy/Paste :

  import urllib2,os; pf='Package Control.sublime-package'; ipp=sublime.installed_packages_path(); os.makedirs(ipp) if not os.path.exists(ipp) else None; urllib2.install_opener(urllib2.build_opener(urllib2.ProxyHandler())); open(os.path.join(ipp,pf),'wb').write(urllib2.urlopen('http://sublime.wbond.net/'+pf.replace(' ','%20')).read()); print 'Please restart Sublime Text to finish installation'

## Install package

- CMD + SHIFT + P
- "Install Package"

And chosse this :
	
	BracketHighlighter
	AllAutocomplete
	ApplySyntax
	Color Highlighter
	SublimeLinter
	SideBarEnhancements
	CTags
	Git
	GitGutter
	ColorPicker
	
	Emmet
	Emmet Css Snippets
	Sass
	Goto-CSS-Declaration
	
	CoffeeScript
	JsFormat
	Lazy Backbone.js
	
	HAML
	Rails Related Files
	ERB Insert and Toggle Commands
	
	Theme - Soda
	
## Alias

	sudo ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/bin/subl

## Shortcuts
- Rails Related Files : "CMD + O"
- Goto-CSS-Declaration : "CMD + RIGHG" on class="" in HTML
- CTags : ALT + SHIFT + CLICK (on a method)
- CTags : ALT + SHIFT + CLICK (on a method)
