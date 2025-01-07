" Vim syntax file
" Language: RMVL Parameter
" Maintainer: Unknown
" Latest Revision: 2024

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword rmvlParaType bool int uint8_t uint16_t uint32_t uint64_t size_t float double string Point2f Point3f Point2d Point3d Point
syn keyword rmvlParaClass vector Matx11f Matx12f Matx13f Matx14f Matx15f Matx16f Matx11d Matx12d Matx13d Matx14d Matx15d Matx16d
syn keyword rmvlParaClass Matx21f Matx22f Matx23f Matx24f Matx25f Matx26f Matx21d Matx22d Matx23d Matx24d Matx25d Matx26d
syn keyword rmvlParaClass Matx31f Matx32f Matx33f Matx34f Matx35f Matx36f Matx31d Matx32d Matx33d Matx34d Matx35d Matx36d
syn keyword rmvlParaClass Matx41f Matx42f Matx43f Matx44f Matx45f Matx46f Matx41d Matx42d Matx43d Matx44d Matx45d Matx46d
syn keyword rmvlParaClass Matx51f Matx52f Matx53f Matx54f Matx55f Matx56f Matx51d Matx52d Matx53d Matx54d Matx55d Matx56d
syn keyword rmvlParaClass Matx61f Matx62f Matx63f Matx64f Matx65f Matx66f Matx61d Matx62d Matx63d Matx64d Matx65d Matx66d
syn keyword rmvlParaClass Vec2f Vec3f Vec4f Vec5f Vec6f Vec2d Vec3d Vec4d Vec5d Vec6d'
syn keyword rmvlParaBoolean true false
syn keyword rmvlParaEnumBlock enum endenum
syn keyword rmvlParaFunction diag zeros ones eye all randu randn

" Identifiers
syn match rmvlParaIdentifier "\<[a-zA-Z]\w*\>"

" Numbers
syn match rmvlParaNumber "\<[+-]\=\d\+\(\.\d*\)\=[eE][+-]\=\d\+[fFlL]\=\>"
syn match rmvlParaNumber "\<[+-]\=\d\+\(\.\d*\)\=[fFlL]\=\>"
syn match rmvlParaHex "\<0[xX][0-9a-fA-F]\+\>"
syn match rmvlParaBin "\<0[bB][01]\+\>"
syn match rmvlParaOctal "\<0[0-7]\+\>"

" String
syn region rmvlParaString start='"' skip='\\"' end='"' contains=rmvlParaComment skipwhite
syn region rmvlParaString start="'" skip="''"  end="'" contains=rmvlParaComment skipwhite

" Comments
syn match rmvlParaComment "#.*$"

" Highlighting links
hi def link rmvlParaType Type
hi def link rmvlParaClass Type
hi def link rmvlParaBoolean Boolean
hi def link rmvlParaFunction Function
hi def link rmvlParaEnumBlock Structure
hi def link rmvlParaIdentifier Identifier
hi def link rmvlParaNumber Number
hi def link rmvlParaHex Number
hi def link rmvlParaBin Number
hi def link rmvlParaOctal Number
hi def link rmvlParaString String
hi def link rmvlParaStringType Type
hi def link rmvlParaComment Comment

let b:current_syntax = "rmvlpara"
