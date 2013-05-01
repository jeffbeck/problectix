from anki import latex
latex.latexDviPngCmd = ["dvipng", "-D", "150", "-T", "tight"]
latex.latexPreamble = ("\\documentclass[12pt]{article}\n"
                 "\\textwidth 12cm\n"
                 "\\usepackage{amsmath,amssymb}\n"
                 "\\input{/usr/share/problectix-anki/latex/preamble-input.tex}\n"
                 "\\usepackage[utf8]{inputenc}\n"
                 "\\pagestyle{empty}\n"
                 "\\begin{document}"
                 "\\begin{center}")
latex.latexPostamble = ("\\end{center}"
						"\\end{document}")
