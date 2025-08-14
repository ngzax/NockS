parsing
parse: aCellString
	"Parses the receiver into a valid Array of Cells."
	^ (((aCellString copyWithRegex: '\s' matchesReplacedWith: ',') findTokens: ',') collect: [:t | (t select: [:each | each isDigit]) asNumber]) asArray.