private
base64UrlDecoded: aString
	| padding |
	padding := String new: 4 - (aString size \\ 4) withAll: $=.
	^ (((aString copyReplaceAll: '-' with:  '+') copyReplaceAll: '_' with: '/'), padding) base64Decoded asString.