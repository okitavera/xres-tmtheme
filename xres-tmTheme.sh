#!/bin/bash
#
# Xresources to Sublime colorscheme (.tmTheme)
#
# Created by Yune Haruka
#
# Usage: xres-tmTheme.sh [themeName] > /path/to/color/scheme.tmTheme
# Example: xres-tmTheme.sh Doge > ~/.config/sublime-text-3/Packages/user/doge.tmTheme
#
#

file=$HOME/.Xresources
get_colors(){
	grep "*.color$1 *:" $file | awk -F\# '{print $2}'
}
get_colors_bg=`grep "*.background *:" $file | awk -F\# '{print $2}'`
get_colors_fg=`grep "*.foreground *:" $file | awk -F\# '{print $2}'`
themeName=$1
themeAuthor=$USER
cat <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>author</key>
	<string>${themeAuthor}</string>
	<key>name</key>
	<string>${themeName}</string>
	<key>semanticClass</key>
	<string>${themeName}</string>
	<key>colorSpaceName</key>
	<string>sRGB</string>
	<key>gutterSettings</key>
	<dict>
		<key>background</key>
		<string>#${get_colors_bg}</string>
		<key>divider</key>
		<string>#$(get_colors 9)</string>
		<key>foreground</key>
		<string>#${get_colors_fg}</string>
		<key>selectionBackground</key>
		<string>#$(get_colors 8)</string>
		<key>selectionForeground</key>
		<string>#$(get_colors 15)</string>
	</dict>
	<key>settings</key>
	<array>
		<dict>
			<key>settings</key>
			<dict>
				<key>background</key>
				<string>#${get_colors_bg}</string>
				<key>caret</key>
				<string>#$(get_colors 13)</string>
				<key>foreground</key>
				<string>#${get_colors_fg}</string>
				<key>invisibles</key>
				<string>#$(get_colors 3)</string>
				<key>lineHighlight</key>
				<string>#$(get_colors 1)</string>
				<key>selection</key>
				<string>#$(get_colors 10)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Text</string>
			<key>scope</key>
			<string>variable.parameter.function</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 13)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Comments</string>
			<key>scope</key>
			<string>comment, punctuation.definition.comment</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 3)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Punctuation</string>
			<key>scope</key>
			<string>punctuation.definition.string, punctuation.definition.variable, punctuation.definition.string, punctuation.definition.parameters, punctuation.definition.string, punctuation.definition.array</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 13)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Delimiters</string>
			<key>scope</key>
			<string>none</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 13)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Operators</string>
			<key>scope</key>
			<string>keyword.operator</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 13)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Keywords</string>
			<key>scope</key>
			<string>keyword</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 14)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Variables</string>
			<key>scope</key>
			<string>variable</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 9)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Functions</string>
			<key>scope</key>
			<string>entity.name.function, meta.require, support.function.any-method</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 5)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Classes</string>
			<key>scope</key>
			<string>support.class, entity.name.class, entity.name.type.class</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 10)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Classes</string>
			<key>scope</key>
			<string>meta.class</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 7)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Methods</string>
			<key>scope</key>
			<string>keyword.other.special-method</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 5)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Storage</string>
			<key>scope</key>
			<string>storage</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 14)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Support</string>
			<key>scope</key>
			<string>support.function</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 4)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Strings, Inherited Class</string>
			<key>scope</key>
			<string>string, constant.other.symbol, entity.other.inherited-class</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 11)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Integers</string>
			<key>scope</key>
			<string>constant.numeric</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 9)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Floats</string>
			<key>scope</key>
			<string>none</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 9)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Boolean</string>
			<key>scope</key>
			<string>none</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 9)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Constants</string>
			<key>scope</key>
			<string>constant</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 9)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Tags</string>
			<key>scope</key>
			<string>entity.name.tag</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 10)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Attributes</string>
			<key>scope</key>
			<string>entity.other.attribute-name</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 9)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Attribute IDs</string>
			<key>scope</key>
			<string>entity.other.attribute-name.id, punctuation.definition.entity</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 5)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Selector</string>
			<key>scope</key>
			<string>meta.selector</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 14)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Values</string>
			<key>scope</key>
			<string>none</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 9)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Headings</string>
			<key>scope</key>
			<string>markup.heading punctuation.definition.heading, entity.name.section</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string></string>
				<key>foreground</key>
				<string>#$(get_colors 5)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Units</string>
			<key>scope</key>
			<string>keyword.other.unit</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 9)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Bold</string>
			<key>scope</key>
			<string>markup.bold, punctuation.definition.bold</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>bold</string>
				<key>foreground</key>
				<string>#$(get_colors 10)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Italic</string>
			<key>scope</key>
			<string>markup.italic, punctuation.definition.italic</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic</string>
				<key>foreground</key>
				<string>#$(get_colors 14)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Code</string>
			<key>scope</key>
			<string>markup.raw.inline</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 11)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Link Text</string>
			<key>scope</key>
			<string>string.other.link</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 8)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Link Url</string>
			<key>scope</key>
			<string>meta.link</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 9)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Lists</string>
			<key>scope</key>
			<string>markup.list</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 8)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Quotes</string>
			<key>scope</key>
			<string>markup.quote</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 9)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Separator</string>
			<key>scope</key>
			<string>meta.separator</string>
			<key>settings</key>
			<dict>
				<key>background</key>
				<string>#$(get_colors 10)</string>
				<key>foreground</key>
				<string>#$(get_colors 13)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Inserted</string>
			<key>scope</key>
			<string>markup.inserted</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 11)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Deleted</string>
			<key>scope</key>
			<string>markup.deleted</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 8)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Changed</string>
			<key>scope</key>
			<string>markup.changed</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 14)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Colors</string>
			<key>scope</key>
			<string>constant.other.color</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 4)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Regular Expressions</string>
			<key>scope</key>
			<string>string.regexp</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 4)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Escape Characters</string>
			<key>scope</key>
			<string>constant.character.escape</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 4)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Embedded</string>
			<key>scope</key>
			<string>punctuation.section.embedded, variable.interpolation</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#$(get_colors 15)</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Invalid</string>
			<key>scope</key>
			<string>invalid.illegal</string>
			<key>settings</key>
			<dict>
				<key>background</key>
				<string>#$(get_colors 8)</string>
				<key>foreground</key>
				<string>#$(get_colors 7)</string>
			</dict>
		</dict>
	</array>
	<key>uuid</key>
	<string>terminal-dot-sexy</string>
</dict>
</plist>
EOF
