vim_colors "gildasq" do
    reset      true
    background :dark
    author     "@GildasQ"

    Normal             "ffffff", "242424", :gui => "none"
    LineNr             "666666", "242424", :gui => "none"
    CursorLineNr       "cccccc", "242424", :gui => "bold"
    Delimiter          "999999", "none",   :gui => "none"
    CursorLine         "none",   "333333", :gui => "none"
    MatchParen         "ffffff", "none",   :gui => "bold"
    NonText            "242424", "none",   :gui => "none"
    netrwDir           "8ac6f2", "none",   :gui => "none"
    netrwClassify      "8ac6f2", "none",   :gui => "none"
    netrwComment       "8ac6f2", "none",   :gui => "none"

    #LustyJuggler
    LustySelected      "ffaa00", "none",   :gui => "none"
    LustyDir           "8ac6f2", "none",   :gui => "none"

    # PHP
    phpStructure       "ffaa00", "none",   :gui => "none" # class, extends, implements, ...
    phpFunctions       "ffaa00", "none",   :gui => "none" # str_reaplce, ...
    phpClasses         "aaaaaa", "none",   :gui => "none" # like \Exception
    phpSpecialFunction "8ac6f2", "none",   :gui => "none"
    phpInclude         "e5786d", "none",   :gui => "none" # use, require, ...
    phpStorageClass    "cae682", "none",   :gui => "none" # public, private, protected, static, ...
    phpIdentifier      "cae682", "none",   :gui => "none" # $this
    phpConstant        "cae682", "none",   :gui => "none" # $this
    phpMethodsVar      "ffffff", "none",   :gui => "none" # $this->foo
    phpDefine          "e5786d", "none",   :gui => "none" # function, new
    phpParent          "cccccc", "none",   :gui => "none"

    phpMemberSelector  "cae682", "none",   :gui => "none" # ->
    phpVarSelector     "8ac6f2", "none",   :gui => "none" # $
    phpOperator        "8ac6f2", "none",   :gui => "none" # =
    phpRelation        "8ac6f2", "none",   :gui => "none" # >
    phpComparison      "8ac6f2", "none",   :gui => "none" # ===
    phpException       "8ac6f2", "none",   :gui => "none" # throw
    phpStatement       "8ac6f2", "none",   :gui => "none" # return
    phpConditional     "8ac6f2", "none",   :gui => "none"

    phpType            "ffaa00", "none",   :gui => "none" # null, array, ...
    phpComment         "999999", "none",   :gui => "none"

    phpStringSingle    "95e454", "none",   :gui => "none"
    phpStringDouble    "95e454", "none",   :gui => "none"
    phpNumber          "ffaa00", "none",   :gui => "none"
    phpFloat           "ffaa00", "none",   :gui => "none"
    phpBoolean         "ffaa00", "none",   :gui => "none"
end
