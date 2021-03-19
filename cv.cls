% !TeX root = CorrinaSivakResume.tex
\LoadClass[a4paper]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\RequirePackage{xcolor}
\RequirePackage[document]{ragged2e}
\RequirePackage{geometry}

\geometry{margin=2em}


\definecolor{linkgray}{gray}{.13}

\setlength{\parskip}{0em}
\renewcommand{\baselinestretch}{1}
\thispagestyle{empty}


\hypersetup{
	colorlinks   = true, %Colours links instead of ugly boxes
	urlcolor     = linkgray, %Colour for external hyperlinks
	linkcolor    = blue, %Colour of internal links
	citecolor    = red %Colour of citations
}

\newcommand{\name}[1]{%
	\centerline{\Huge{#1}}
}

\newcommand\contact[3]{%
	\centerline{%
		\makebox[0pt][c]{%
			#1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
		}%
	}%
}

\titleformat{\section}       % Customise the \section command 
{\Large\scshape} % Make the \section headers large (\Large),
% small capitals (\scshape) and left aligned (\raggedright)
{}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
{}                           % Can be used to insert code before the heading
[\titlerule]                 % Inserts a horizontal line after the heading

\titleformat{\subsection}
{\large\scshape\raggedright}
{}{0em}
{}

\newcommand{\datedsection}[2]{%
	\section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
	\textbf{#1} \hfill \textbf{#2} \newline
}

\newcommand{\job}[4]{
	\datedsubsection{#1}{#2}
	#3 \hfill #4 \newline
	\vspace{-.5em}
}

\newcommand{\project}[3]{
	\href{#1}{\textbf{#2}}: #3 \newline
}