vim_colors "wombat2" do
    author "Lars H. Nielsen (dengmao@gmail.com)"

    reset true
    background :dark

    CursorLine   "NONE",    "2d2d2d"
    CursorColumn "NONE",    "2d2d2d"
    MatchParen   "f6f3e8",  "857b6f",  :gui => "bold"
    Pmenu 		 "f6f3e8",  "444444"
    PmenuSel 	 "000000",  "cae682"

    Cursor       "NONE",    "656565",  :gui => "none"
    Normal       "f6f3e8",  "242424",  :gui => "none"
    NonText      "808080",  "303030",  :gui => "none"
    LineNr       "857b6f",  "000000",  :gui => "none"
    StatusLine   "f6f3e8",  "444444",  :gui => "italic"
    StatusLineNC "857b6f",  "444444",  :gui => "none"
    VertSplit    "444444",  "444444",  :gui => "none"
    Folded       "384048",  "a0a8b0",  :gui => "none"
    Title        "f6f3e8",  "NONE",    :gui => "bold"
    Visual       "f6f3e8",  "444444",  :gui => "none"
    SpecialKey   "808080",  "343434",  :gui => "none"

    Comment     "99968b",   "NONE",    :gui => "italic"
    Todo 		"8f8f8f",   "NONE",    :gui => "italic"
    Constant 	"e5786d",   "NONE",    :gui => "none"
    String 		"95e454",   "NONE",    :gui => "italic"
    Identifier 	"cae682",   "NONE",    :gui => "none"
    Function 	"ffcc00",   "NONE",    :gui => "none"
    Type 		"cae682",   "NONE",    :gui => "none"
    Statement 	"8ac6f2",   "NONE",    :gui => "none"
    Keyword		"8ac6f2",   "NONE",    :gui => "none"
    PreProc     "e5786d",   "NONE",    :gui => "none"
    Number		"e5786d",   "NONE",    :gui => "none"
    Special		"e7f6da",   "NONE",    :gui => "none"
    Search      "000000",   "add8e6",  :gui => "none"
    XmlEndTag   "ffcc00",   "NONE",    :gui => "none"
end
