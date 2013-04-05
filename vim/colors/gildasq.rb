vim_colors "gildasq" do
    reset      true
    background :dark
    author     "@GildasQ"

    Normal                  "ffffff", "242424", :gui => "none"
    Visual                  "none",   "111111", :gui => "none"
    LineNr                  "666666", "242424", :gui => "none"
    SignColumn              "666666", "242424", :gui => "none"
    CursorLineNr            "cccccc", "242424", :gui => "bold"
    Delimiter               "999999", "none",   :gui => "none"
    CursorLine              "none",   "333333", :gui => "none"
    MatchParen              "none",   "none",   :gui => "bold"
    NonText                 "242424", "none",   :gui => "none"
    Comment                 "999999", "none",   :gui => "none"
    Search                  "none",   "none",   :gui => "underline"
    Identifier              "cae682", "none",   :gui => "none"
    Special                 "8ac6f2", "none",   :gui => "none"
    Constant                "cae682", "none",   :gui => "none"
    Directory               "8ac6f2", "none",   :gui => "none"
    Error                   "95e454", "none",   :gui => "none"
    Statement               "8ac6f2", "none",   :gui => "none"
    Pmenu                   "none",   "444444", :gui => "none"
    PmenuSel                "b1d631", "444444", :gui => "bold"

    # Quickfix
    qfFileName              "95e454", "none",   :gui => "none"
    qfLineNr                "8ac6f2", "none",   :gui => "none"

    # Directory explorer
    netrwDir                "8ac6f2", "none",   :gui => "none"
    netrwClassify           "8ac6f2", "none",   :gui => "none"

    #LustyJuggler
    LustySelected           "ffaa00", "none",   :gui => "none"
    LustyDir                "8ac6f2", "none",   :gui => "none"

    # Syntastic
    SyntasticErrorSign      "ff0000", "none",   :gui => "none"
    SyntasticWarningSign    "ffaa00", "none",   :gui => "none"
    SpellBad                "ff0000", "none",   :gui => "bold"

    # PHP
    phpStructure            "ffaa00", "none",   :gui => "none" # class, extends, implements, ...
    phpFunctions            "ffaa00", "none",   :gui => "none" # str_reaplce, ...
    phpClasses              "aaaaaa", "none",   :gui => "none" # like \Exception
    phpSpecialFunction      "8ac6f2", "none",   :gui => "none"
    phpInclude              "e5786d", "none",   :gui => "none" # use, require, ...
    phpStorageClass         "cae682", "none",   :gui => "none" # public, private, protected, static, ...
    phpIdentifier           "cae682", "none",   :gui => "none" # $this
    phpConstant             "cae682", "none",   :gui => "none" # $this
    phpMethodsVar           "ffffff", "none",   :gui => "none" # $this->foo
    phpMethods              "ffffff", "none",   :gui => "none" # $this->name
    phpDefine               "e5786d", "none",   :gui => "none" # function, new
    phpParent               "cccccc", "none",   :gui => "none"

    phpMemberSelector       "cae682", "none",   :gui => "none" # ->
    phpVarSelector          "8ac6f2", "none",   :gui => "none" # $
    phpOperator             "8ac6f2", "none",   :gui => "none" # =
    phpRelation             "8ac6f2", "none",   :gui => "none" # >
    phpComparison           "8ac6f2", "none",   :gui => "none" # ===
    phpException            "8ac6f2", "none",   :gui => "none" # throw
    phpStatement            "8ac6f2", "none",   :gui => "none" # return
    phpConditional          "8ac6f2", "none",   :gui => "none"

    phpType                 "ffaa00", "none",   :gui => "none" # null, array, ...
    phpComment              "999999", "none",   :gui => "none"

    phpStringSingle         "95e454", "none",   :gui => "none"
    phpStringDouble         "95e454", "none",   :gui => "none"
    phpNumber               "ffaa00", "none",   :gui => "none"
    phpFloat                "ffaa00", "none",   :gui => "none"
    phpBoolean              "ffaa00", "none",   :gui => "none"

    # Javascript
    javaScriptStringD       "95e454", "none",   :gui => "none"
    javaScriptBraces        "ffaa00", "none",   :gui => "none"

    # Yaml
    yamlBlockMappingKey     "95e454", "none",   :gui => "none"

    # Markdown
    markdownH1              "ffffff", "none",   :gui => "bold"
    markdownH2              "ffffff", "none",   :gui => "bold"
    markdownH3              "ffffff", "none",   :gui => "bold"
    markdownHeadingRule     "ffffff", "none",   :gui => "bold"

    # Twig
    twigVarDelim            "ffaa00", "none",   :gui => "none" # {{ }}
    twigTagDelim            "ffaa00", "none",   :gui => "none" # {% %}
    twigStatement           "8ac6f2", "none",   :gui => "none"
    twigString              "95e454", "none",   :gui => "none"

    # HTML
    htmlString              "95e454", "none",   :gui => "none"
    htmlArg                 "cae682", "none",   :gui => "none"
    htmlTagName             "ffffff", "none",   :gui => "none"

    # Gherkin
    cucumberFeature         "ffaa00", "none",   :gui => "none"
    cucumberScenario        "ffaa00", "none",   :gui => "none"
    cucumberBackground      "ffaa00", "none",   :gui => "none"
    cucumberScenarioOutline "ffaa00", "none",   :gui => "none"
    cucumberExamples        "ffaa00", "none",   :gui => "none"
    cucumberGiven           "708b10", "none",   :gui => "none"
    cucumberWhen            "b1d631", "none",   :gui => "none"
    cucumberThen            "cceb63", "none",   :gui => "none"
end
