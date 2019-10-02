" Vim syntax file
" Language: Semantic Code String
" Maintainer: Aliaksandr Klijeu
" Version: 0.1

if exists("b:current_syntax")
  finish
endif

" Comments
syn keyword scsTodo TODO FIXME contained
syn match scsLComment "//.*$" contains=scsTodo
syn region scsBComment start="/\*" end="\*/" contains=scsBComment, scsTodo

" String
syn match scsSCharErr "\\." contained
syn match scsSChar '\\["\\n]' contained
syn match scsPathFile "file:\|[/.]" contained
syn region scsString start='"' skip='\\"' end='"' contains=scsSChar, scsPathFile, scsSCharErr

" Braces
syn match scsSqBracesVar "\$\w\+" contained
syn region scsSqBraces start='\[' end='\]' contains=scsSqBracesVar
syn match scsBraces "[{}()]"
syn match scsBraces "(\*\|\*)"
syn match scsBraces "\(\[\*\)\|\(\*\]\)"

" Operators
syn match scsOperator  "|\|;\|;;\|#\|:"
syn match scsConnector "[_]\?<\?=>\?"
syn match scsConnector "\s*[_]\?[-~][/|]\?>\s*"
syn match scsConnector "\s*[_]\?<[/|]\?[-~]\s*"
syn match scsConnector "[.]\{0,2}>\|<[.]\{0,2}"

" Identifiers
syn keyword scsIdtfs nrel_main_idtf nrel_idtf
syn keyword scsIdtfs rrel_example
syn keyword scsIdtfs not_enough_formed_structure
syn keyword scpIdtfs nrel_goto nrel_then nrel_else
syn keyword scpIdtfs rrel_params rrel_in rrel_out
syn keyword scpIdtfs scp_program
syn keyword scpFunc return
syn match scpGSFunc "\(gen\|search\)\(El\|Set\)\(\(Str\)\d\)\?"
syn match scsNrel "nrel_\w\+"
syn match scsRrel "rrel_\w\+"
syn match scsConcept "concept_\w\+"
syn match scsSection "section_\w\+"
syn match scsLang "lang_\w\+"
syn match scsEmpty "\.\.\."
syn match scpProc "proc_\w\+"

" Highlighting definitions
hi def link scsTodo     Todo
hi def link scsLComment Comment
hi def link scsBComment Comment

hi def link scsString   String
hi def link scsSChar    SpecialChar
hi def link scsPathFile Directory
hi def link scsSCharErr Error

hi def link scsSqBraces    Label
hi def link scsSqBracesVar Identifier
hi def link scsBraces      Operator

hi def link scsOperator  Operator
hi def link scsConnector Operator

hi def link scsIdtfs   Keyword
hi def link scpIdtfs   Define
hi def link scsNrel    Identifier
hi def link scsRrel    Identifier
hi def link scsConcept Identifier
hi def link scsSection Identifier
hi def link scsLang    Identifier
hi def link scsEmpty   Identifier
hi def link scpProc    Label
hi def link scpFunc    Function
hi def link scpGSFunc  Function

let b:current_syntax = 'scs'
