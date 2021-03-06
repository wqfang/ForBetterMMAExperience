(*Get@URLDownload[LocalSymbol["Githubpath"] <> "InlineLaTeX.wl"]*)
(*Alt + M*)
(*Need to escape backslashs *)

Needs["MaTeX`"]
AppendTo[$ContextPath, "LaTeXHK`"]


LaTeXHK`M[x_, fnt_: 14, blp_: Bottom] := 
 Module[{exp}, 
  exp = MaTeX[ToString[x], FontSize -> fnt, ContentPadding -> True, 
    "DisplayStyle" -> False]
  (*Graphics[exp, BaselinePosition -> blp]*)]
SetAttributes[M, HoldAll]




(* LaTeXHK`LIA[s_] := 
 PopupWindow[MaTeX[#, FontSize -> s] , 
   StringReplace[#, "\\" -> "\\\\"]] & 
 *)
 
LaTeXHK`LIA[s_] := 
   PopupWindow[MaTeX[#1, FontSize -> s], 
     "LIA[" <> ToString[s] <> "][\"" <> 
      StringReplace[#1, "\\" -> "\\\\"] <> "\"]"] &
