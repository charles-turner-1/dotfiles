" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:


noremap <Leader>wc :!texcount % <CR>

inoremap co2 CO\textsubscript{2}

inoremap tcanth \(\mathrm{C_{anth}}\)
inoremap canth \mathrm{C_{anth}}

inoremap tcnat \(\mathrm{C_{nat}}\)
inoremap cnat \mathrm{C_{nat}}

inoremap dtdcanth \frac{d\Theta}{\mathrm{C_{anth}}}
inoremap tdtdcanth \(d\Theta / d\mathrm{C_{anth}}\)

inoremap dtdcnat \frac{d\Theta}{dC_{nat}}
inoremap tdtdcnat \( d\Theta / dC_{nat}\)

inoremap micromol \(\mu\)mol/kg

inoremap <Leader><C-n> <C-x><C-o>


set path+=figures/
