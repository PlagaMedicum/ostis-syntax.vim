" Vim syntax file
" Language: Semantic Code String
" Maintainer: Aliaksandr Klijeu
" Version: 0.1

if exists("b:current_syntax")
  finish
endif

" Comments
syn keyword scsTodo contained TODO FIXME
syn match scsLComment "//.*$" contains=scsTodo
syn region scsBComment start="/\*" end="\*/" contains=scsBComment, scsTodo

" String
syn match scsSCharErr "\\." contained
syn match scsSChar '\\["\\n]' contained
syn region scsString start='"' skip='\\"' end='"' contains=scsSChar, scsSCharErr

" Braces
syn match scsBraces "[{}[]()]"
syn match scsBraces "(\*\|\*)"
syn match scsBraces "\(\[\*\)\|\(\*\]\)"

" Operators
syn match scsOperator  "|\|;\|;;\|#"
syn match scsConnector "[_]\?<\?=>\?"
syn match scsConnector "\s*[_]\?[-~][/|]\?>\s*"
syn match scsConnector "\s*[_]\?<[/|]\?[-~]\s*"
syn match scsConnector "[.]\{0,2}>\|<[.]\{0,2}"

" Identifiers
syn match scsNrel "nrel_\w\+"
syn match scsRrel "rrel_\w\+"
syn match scsConcept "concept_\w\+"
syn match scsEmpty "\.\.\."
syn keyword scsIdtfs nrel_main_idtf

" Highlighting definitions
hi def link scsTodo      Todo
hi def link scsLComment  Comment
hi def link scsBComment  Comment

hi def link scsString    String
hi def link scsSChar     SpecialChar
hi def link scsSCharErr  Error

hi def link scsBraces    Operator

hi def link scsOperator  Operator
hi def link scsConnector Operator

hi def link scsNrel      Identifier
hi def link scsRrel      Identifier
hi def link scsConcept   Identifier
hi def link scsEmpty     Identifier
hi def link scsIdtfs     Keyword

let b:current_syntax = 'scs'
