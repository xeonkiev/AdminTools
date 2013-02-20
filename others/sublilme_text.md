# Sublime text :

## Sublime text Install Package Control
Go to : View > Show Console
Copy/Paste :

  import urllib2,os; pf='Package Control.sublime-package'; ipp=sublime.installed_packages_path(); os.makedirs(ipp) if not os.path.exists(ipp) else None; urllib2.install_opener(urllib2.build_opener(urllib2.ProxyHandler())); open(os.path.join(ipp,pf),'wb').write(urllib2.urlopen('http://sublime.wbond.net/'+pf.replace(' ','%20')).read()); print 'Please restart Sublime Text to finish installation'

## Install package
- CMD + p
- "Install Package"

And chosse this :

	BracketHighlighter
	Sass
	AllAutocomplete
	Rails Related Files
	ERB Insert and Toggle Commands
	DetectSyntax
	Color Highlighter
	Goto-CSS-Declaration
	SideBarEnhancements
	Theme - Soda
	Emmet
	Emmet Css Snippets
	SublimeCodeIntel
	JsFormat
	
## Alias

	sudo ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/bin/subl

## Shortcuts
- Rails Related Files : "CMD + O"
- Goto-CSS-Declaration : "CMD + RIGHG" on class="" in HTML
- CTags : ALT + SHIFT + CLICK (on a method)
- CTags : ALT + SHIFT + CLICK (on a method)
