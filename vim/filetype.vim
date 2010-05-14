" my filetype file
if exists("did_load_filetypes")
	finish
endif
augroup filetypedetect
	au! BufRead,BufNewFile *.pm.tp	setfiletype html
	au! BufRead,BufNewFile *.panel	setfiletype html
	au! BufRead,BufNewFile *.php.tp	setfiletype php
	"au! BufRead,BufNewFile *.{*}.tp setfiletype \1
augroup END

