% 要求使用LaTeX2e的特定版本
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
% 定义MathorCupmodeling文档类，版本为1.0
\ProvidesClass{MMCStyle}[2020/01/14 version 1.0]

% 加载ctexart文档类，设置纸张为A4纸，行距为1.25倍，默认字号为小4
\LoadClass[oneside,a4paper,UTF8,linespread=1.25,zihao=-4]{ctexart}

% 设置章节格式
\ctexset{
    % 设置章节标题格式
    section={
        format={\zihao{4}\heiti\centering},
        name={,、},
        aftername={\hspace{0pt}},
        number=\chinese{section},
    },
    % 设置子章节标题格式
    subsection={
        format={\zihao{-4}\heiti\raggedright},
        name={},
        aftername={\hspace{5bp}},
        number={\arabic{section}.\arabic{subsection}},
    },
    % 设置子子章节标题格式
    subsubsection={
        format={\zihao{-4}\heiti\raggedright},
        name={},
        aftername={\hspace{5bp}},
        number={\arabic{section}.\arabic{subsection}.\arabic{subsubsection}},
    },
    % 设置附录格式
    appendix={
        name={附录,：},
        number=\arabic{section},
    }
}
% \setCJKmainfont[Mapping=fullwidth-stop]{SimSun}
\setmainfont{Times New Roman}

\def\bianhao#1{\gdef\@bianhao{#1}}
\def\tihao#1{\gdef\@tihao{#1}}
\def\timu#1{\gdef\@timu{#1}}
\def\keyword#1{\gdef\@keyword{#1}}

\renewenvironment{abstract}%
{%
% \begin{center}
%  % 设置一个基础的垂直内边距因子。如果第一行要很窄，这个值可能需要较小，例如 1.1 或 1.2
%  \renewcommand{\arraystretch}{1} % 调整此值来控制基础行高 (文字到上下线的距离)
\begin{center}
 \begin{tabularx}{16.3cm}{|>{\centering\arraybackslash}p{2.78cm}|>{\centering\arraybackslash}X|>{\centering\arraybackslash}p{2.78cm}|}
  \hline
  % 第一行
  \zihao{5}选题 &  \multirow{2}{*}{% Start multirow
    {% Local arraystretch for nested tabular internal spacing
    \renewcommand{\arraystretch}{1.6}% 调整中间合并单元格内文字的行距
    \begin{tabular}{@{}c@{}}
    \zihao{4}\textbf{2024年第十四届APMCM} \\
    \zihao{4}\textbf{ 亚太地区大学生数学建模竞赛（中文赛项）}
    \end{tabular}%
    }%
  }  & \zihao{5}参赛编号\\ % 第一行结束
  \cline{1-1}\cline{3-3} % 只绘制第一列和第三列的下边线
  % 第二行 - 并在行末添加额外的垂直空间使其变高
  \vfill\zihao{5}\@tihao &   &  \vfill\zihao{5}\@bianhao\\[2em] % <-- 在这里添加额外的垂直空间 (例如 2em，您可以调整这个值)
  \hline
 \end{tabularx}
\end{center}


% \hspace*{\fill}\\
% \phantom{1}\\
%\rule{16.3cm}{1.5pt}\\
\phantom{1}\\
\phantom{1}\hfill{\zihao{4}\@timu}\hfill\phantom{1}\\
\phantom{1}\hfill{\label{zy}摘~~要}\hfill\phantom{1}\pdfbookmark[1]{摘要}{zy}\par%
}{\\\phantom{1}\\关键词：\@keyword\thispagestyle{empty}\setcounter{page}{-1}
\newpage\thispagestyle{empty}
}


\renewcommand*{\textfraction}{0.05}
\renewcommand*{\topfraction}{0.9}
\renewcommand*{\bottomfraction}{0.8}
\renewcommand*{\floatpagefraction}{0.85}

\RequirePackage[top=2.5cm,bottom=2.5cm,left=2.5cm,right=2.5cm]{geometry}
\RequirePackage{fancyhdr,lastpage}
\pagestyle{fancy}
\fancyhf{}
\renewcommand\headrulewidth{0pt}
\fancyfoot[C]{第 \thepage{} 页~~共 \pageref{LastPage} 页}
\RequirePackage{titletoc}
\titlecontents{section}[0pt]{\addvspace{2pt}\filright}%
{\heiti\contentspush{\thecontentslabel\ }}%
{}{\titlerule*[8pt]{.}\contentspage}

\RequirePackage{amsmath}
\RequirePackage{amsfonts} 
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\let\lvert\relax\let\rvert\relax\let\lVert\relax\let\rVert\relax
\RequirePackage{newtxmath}
\RequirePackage{esint}
\DeclareSymbolFont{CMlargesymbols}{OMX}{cmex}{m}{n}
\let\sum\relax\let\prod\relax
\DeclareMathSymbol{\sum}{\mathop}{CMlargesymbols}{"50}
\DeclareMathSymbol{\prod}{\mathop}{CMlargesymbols}{"51}

% 扩展的数学宏包, 可根据自己的需求载入
% \RequirePackage{bm} %用\bm{}命令生成伪粗体
% \RequirePackage{upgreek}%用\uppi 调用正体的圆周率
% \RequirePackage{mathrsfs}%\mathscr{}调用傅里叶变换,拉普拉斯变换的符号

% 加载物理、国标宏包
\RequirePackage{physics,siunitx}

% 设置虚数,自然底数,微分符号
\def\ee{\mathrm{e}}
\def\ii{\mathrm{i}}
\def\leq{\leqslant}
\def\geq{\geqslant}

% 载入表格宏包和插图宏包
\RequirePackage{booktabs,tabularx,multirow,longtable,makecell,array}
\newcolumntype{Y}{>{\centering\arraybackslash}X}
\RequirePackage{graphicx}
% 设置图片路径
\graphicspath{{figures/}}
\RequirePackage{caption}
\RequirePackage[section]{placeins}
% 扩展的表格宏包和插图宏包
% \RequirePackage{subfig}
% \RequirePackage{longtable}

\captionsetup{format=hang}% 设置浮动体标题悬挂缩进
\DeclareCaptionLabelSeparator*{sspace}{\ \ }
\captionsetup[figure]{labelsep=sspace}
\captionsetup[table]{labelsep=sspace}
\DeclareCaptionFont{heiti}{\heiti}
\DeclareCaptionFont{5hao}{\zihao{5}}
\captionsetup{labelfont={heiti,5hao},textfont={heiti,5hao}}

% 载入颜色宏包
\RequirePackage{color,xcolor}

% 载入参考文献宏包，设置引用格式
\RequirePackage{natbib}
\setcitestyle{square,super}

% 载入代码宏包
\RequirePackage{listings}
% 设置代码的默认样式
\lstset{
	frame=none,% 取消边框
	breaklines=true,% 允许自动断行
	% breakatwhitespace=true,% 使用此命令仅允许在空格处自动断行
	showstringspaces=false,% 不显示字符串中的空格
	basicstyle=\small\ttfamily,% 设置代码基本样式
	flexiblecolumns=true,% 改善字母间距
	keywordstyle=\color{blue},% 设置关键词样式
	stringstyle=\color[rgb]{0.75,0,0.75},% 设置字符串样式
	commentstyle=\songti\color[rgb]{0,0.5,0},% 设置注释样式
	tabsize=4,% 设置制表符缩进
}

% 设置matlab代码环境
\lstnewenvironment{matlab}[1][]{
	\lstset{
		language=Matlab,
		% deletekeywords={disp},% 可在此行去除特定关键词的语法高亮		
		keywordstyle=\color{blue},% 设置关键词样式
		stringstyle=\color[rgb]{0.75,0,0.75},% 设置字符串样式
		commentstyle=\songti\color[rgb]{0,0.5,0},% 设置注释样式
		#1
	}
}{}

% 设置python代码环境
\lstnewenvironment{python}[1][]{
	\lstset{
		language=Python,
		keywordstyle=\color[RGB]{255,119,0},% 设置Keywords样式
		morekeywords={as},% 将特定单词加入Kewords中
		deletekeywords={print},%从 keywords中去除特定单词
		keywordstyle=[2]\color[RGB]{144,0,144},% 设置Builtins样式
		morekeywords=[2]{print},% 将特定单词加入Builtins中
		stringstyle=\color[RGB]{0,170,0},% 设置字符串样式
		commentstyle=\songti\color[RGB]{221,0,0},% 设置注释样式	
		#1
	}
}{}



% 载入超链接宏包
\RequirePackage{hyperref}
\hypersetup{breaklinks,colorlinks}% 允许超链接断行,取消超链接的边框,使链接文字带颜色
\hypersetup{hidelinks,bookmarksnumbered=true,bookmarksopen=true,pdfstartview=Fit}% 取消超链接的颜色，书签目录增加编号

\RequirePackage{cleveref}% 载入自动引用宏包
\crefname{figure}{图}{图}
\crefname{table}{表}{表}
\crefname{equation}{式}{式}
\renewcommand{\eqref}[1]{\labelcref{#1}~\namecref{#1}}
