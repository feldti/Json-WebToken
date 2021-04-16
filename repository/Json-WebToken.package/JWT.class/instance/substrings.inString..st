private
substrings: separators inString: string
	"Copied code of String>>substrings: to avoid platform naming differences"

	| substrings substringStart |
	substrings := (Array new: 10) writeStream.
	1 to: string size do: [ :i | 
		| nextChar |
		nextChar := string at: i.
		(separators includes: nextChar)
			ifTrue: [
				substringStart
					ifNotNil: [
						substrings nextPut: (string copyFrom: substringStart to: i - 1).
						substringStart := nil ] ]
			ifFalse: [ substringStart ifNil: [ substringStart := i ] ] ].
	substringStart
		ifNotNil: [ substrings nextPut: (string copyFrom: substringStart to: string size) ].
	^ substrings contents