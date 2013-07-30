private
base64UrlEncoded: aString
	^ ((aString base64Encoded copyReplaceAll: '-' with:  '+') copyReplaceAll: '_' with: '/') reject:[:c | (String with: Character cr with: $=) includes: c].