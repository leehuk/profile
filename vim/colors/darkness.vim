set background=dark

hi Title                 cterm=bold ctermbg=none ctermfg=15
hi VertSplit             cterm=bold ctermbg=none ctermfg=32

hi Visual                cterm=none ctermbg=237  ctermfg=none
hi Error                 cterm=none ctermbg=89   ctermfg=15

hi Statement             cterm=none ctermbg=none ctermfg=111
hi Identifier            cterm=none ctermbg=none ctermfg=153
hi Define                cterm=none ctermbg=none ctermfg=15
hi PreProc               cterm=none ctermbg=none ctermfg=15
hi Type                  cterm=none ctermbg=none ctermfg=36

hi String                cterm=none ctermbg=234  ctermfg=186
hi Comment               cterm=none ctermbg=none ctermfg=139
hi Constant              cterm=none ctermbg=none ctermfg=215
hi Special               cterm=none ctermbg=none ctermfg=183

hi DiffAdd               cterm=bold ctermbg=22   ctermfg=none
hi DiffChange            cterm=bold ctermbg=238  ctermfg=none
hi DiffDelete            cterm=bold ctermbg=52   ctermfg=none

hi GitGutterAdd          cterm=bold ctermbg=none ctermfg=112
hi GitGutterChange       cterm=bold ctermbg=none ctermfg=117
hi GitGutterDelete       cterm=bold ctermbg=none ctermfg=196
hi GitGutterChangeDelete cterm=bold ctermbg=none ctermfg=darkcyan
hi SignColumn            cterm=bold ctermbg=none ctermfg=15

hi! def link shShellVariables   Identifier
hi! def link rubyDefine         Statement
