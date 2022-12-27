dir=~/Documents/school/$1
mkdir $dir
cd $dir
cat << EOF > $1.tex
\documentclass[letterpaper,12pt]{article}
\usepackage[english]{babel}
\usepackage[blindtext]

\begin{document}

\title{\Large{\textbf{LaTeX Cheatsheet}}}
\author{By Ivan Rodrigues}
\date{Decembre 27, 2022}

\maketitle
\end{document}
EOF

vi $1.tex
