from anki import latex
latex.latexDviPngCmd = ["dvipng", "-D", "150", "-T", "tight"]
latex.latexPreamble = ("\\documentclass[12pt]{article}\n"
                 "\\textwidth 12cm\n"
                 "\\usepackage{amsmath,amssymb}\n"
                 "\\usepackage[cdot,amssymb,thickqspace]{SIunits}\n"
                 "%\\input completePathToYourMacros (remove percent to enable this)\n"
                 "\\usepackage[utf8]{inputenc}\n"
                 "\\pagestyle{empty}\n"
                 "\\begin{document}"
                 "\\begin{center}")
latex.latexPostamble = ("\\end{center}"
						"\\end{document}")
