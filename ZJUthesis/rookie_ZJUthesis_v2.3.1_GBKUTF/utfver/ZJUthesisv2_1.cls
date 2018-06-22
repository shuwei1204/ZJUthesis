%% 这是浙江大学硕士博士毕业论文LaTeX模版
%%
%% 王东举于2013年撰写博士论文期间，根据上一版本反馈意见，对其进行增补修订。
%% 该模板修订部分，主要是出现了两个版本
%% GBK版本和UTF-8版本
%% 
%% 本模版是在88TeX版提供的数学系毕业论文模版2006年版基础上
%% 由王东举于2011年9-10月间修改出第一版，欢迎提出修改意见，欢迎在此基础上自行修改尝试，此后多次进行修订 
%% 邮箱：shuwei1204@163.com
%% 
%% 
%% 提供该模版的运行基础
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
% 下面这一句参见http://bbs.ctex.org/forum.php?mod=viewthread&tid=78610
% ctex 包中设置中文字体的命令要早于 \CTEX@spaceChar 的定义。而可能使用 \CTEX@spaceChar 的宏 \CTEXsetfont 则在 \CTEX@spaceChar 之前定义。
% 因为在线安装，用的是最新的 fontspec 2.4 版本。而 fontspec 改变了内部实现，需要在定义字体时设置字号，触发 \CTEXsetfont，造成问题。
\expandafter\def\csname CTEX@spaceChar\endcsname{\hspace{1em}}
% 版本说明
\ProvidesClass{ZJUthesisv2_1}[2016/08/17 v2.2.1 ZJUthesis document class]
% 基于ctexbook模版，增加专有内容
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
% 2016/02/02的v2.2及之后版本不再提供hyperref和fancyhdr选项的支持，需要单独将其列入
\LoadClass[zihao = -4,a4paper,fontset = windowsnew]{ctexbook}[2016/02/02]
%专门调入这两个包
\RequirePackage{fancyhdr,hyperref} 
%% math packages 数学公式包，非数学系可无视之
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
%% graphicx packages，psgrag用于修改eps图中的信息，但与dvipdfm不兼容
\RequirePackage{graphicx}
% 需要times包，让英文字体看起来更像windows下
%\RequirePackage{times}
\RequirePackage{fontspec}
% 需要array包，排姓名导师信息时用
\RequirePackage{array}
% 需要tocloft包，调整目录显示格式时使用，LaTeX2e默认的格式不符合模版要求
\RequirePackage[titles, subfigure]{tocloft}
% tocloft包需要tocbibind包来配合，同时tocloft包需要titles参数来将其置为chapter title
\RequirePackage[chapter]{tocbibind}
% 需要索引功能，加入索引包
\RequirePackage{makeidx}
% 参考文献格式调整需要natbib包
% sort&compress参数用于按引用顺序排列参考文献
% longnamesfirst参数用于处理长人名顺序，将first name排前面，用于外国人名
% square参数，引用标号用方括号括起
% super参数，引用标号为上标格式
\RequirePackage[sort&compress,longnamesfirst,square,super,comma]{natbib}
% 设置图片，表格头字体选项。间距10pt，字号为小字号，加粗字体，标题与题目间距1个字符
\RequirePackage[margin=10pt,font={small,bf},labelsep=quad]{caption}
% 粗线型表格需要的扩展包
\RequirePackage{booktabs}
% 计算宽度使用的包
\RequirePackage{calc}
% 合并表格行用到的包
\RequirePackage{multirow}
% 颜色包
\RequirePackage{xcolor}
% PDF文档超链接及书签标记，具体选项意义参考hyperref说明文档
% hyperref包要2011年版的才行
\hypersetup{CJKbookmarks=true,%
       bookmarksnumbered,%
               linkcolor=blue,%
              plainpages=false,%
            pdfstartview=FitH,
               hidelinks
         }
% 文档开始导入默认配置
\AtBeginDocument{\makeatletter\input{ZJUthesisv2.cfg}\makeatother}

% 使用geometry包来修改页面尺寸
\RequirePackage[a4paper,%
top=51pt,bottom=51pt,left=68pt,right=57pt,%
headsep=14pt,footskip=26pt,%
footnotesep=10.8pt plus 1fil minus 2.0pt,%
includehead, includefoot]{geometry}

% 子图工具包
\RequirePackage{subfigure}
%  大写希腊字母包
\RequirePackage{upgreek}
% 枚举类型包
\RequirePackage{enumerate}


% 奇数页左边边距是1.5cm
%\oddsidemargin -0.14 true cm
% 偶数页的左边距设置则分双面模式与单面模式两种情况
%\if@twoside
%  \evensidemargin -0.34 true cm
%\else
%  \evensidemargin -0.14 true cm
%\fi
% 设置页头空白尺寸
%\topmargin -0.74 true cm
%\headheight 0.8 true cm
%\headsep 0.5 true cm
\topsep 0.7 true cm
%\textheight 23.9 true cm
%\textwidth 16.6 true cm
%\footskip 0.9 true cm
\parskip 0.5ex plus 0.25ex minus 0.25ex
% cleardoublepage这个命令的定义
\def\cleardoublepage{%
  \clearpage
  \if@twoside
    \ifodd
      \c@page
    \else
      \thispagestyle{empty}%
      \hbox{}\newpage
      \if@twocolumn
        \hbox{}\newpage
      \fi
    \fi
  \fi}

% 这个地方定义一页中浮动对象可占的最大比例
\renewcommand{\textfraction}{0.05}
\renewcommand{\topfraction}{0.95}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}

% 设置英文字体为Times New Roman
\setmainfont{Times New Roman}

\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}

\newcommand\ZJUspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}
\def\reserved@a#1 #2 #3\@nil{%
  \def\ZJUfiledate{#1}%
  \def\ZJUfileversion{#2}%
  \def\ZJUfileinfo{#3}}%
\edef\reserved@b{\csname ver@ZJUthesisv2_1.cls\endcsname}
\expandafter\reserved@a\reserved@b\@nil\relax

% 新命令Nchapter的定义
% 这里的mainmatter对应于tex文档中的定义
\newcommand\Nchapter[1]{%
  \if@mainmatter%
    \@mainmatterfalse%
    \chapter{#1}%
    \@mainmattertrue%
  \else
    \chapter{#1}%
  \fi}


% 下划线的一个定义
\def\ZJU@underline[#1]#2{%
  \underline{\hbox to #1{\hfil#2\hfil}}}
\def\ZJUunderline{\@ifnextchar[\ZJU@underline\underline}
\newcommand\classification[1]{\def\ZJU@value@classification{#1}}
\newcommand\confidential[1]{\def\ZJU@value@confidential{#1}}
\newcommand\UDC[1]{\def\ZJU@value@UDC{#1}}
\newcommand\serialnumber[1]{\def\ZJU@value@serialnumber{#1}}
\newcommand\school[1]{\def\ZJU@value@school{#1}}
\newcommand\SecretLevel[1]{%
  \def\ZJU@value@SecretLevel{#1}
  \def\ZJU@value@IsSecret{1}}
\newcommand\PersonalID[1]{\def\ZJU@value@PersonalID{#1}}
\newcommand\degree[1]{\def\ZJU@value@degree{#1}}
\renewcommand\title[2][\ZJU@value@title]{%
  \def\ZJU@value@title{#2}
  \def\ZJU@value@titlemark{\MakeUppercase{#1}}}
\newcommand\titletl[1]{\def\ZJU@value@titletl{#1}}
\newcommand\Etitle[1]{\def\ZJU@value@Etitle{#1}}
\newcommand\Etitletl[1]{\def\ZJU@value@Etitletl{#1}}
\newcommand\EtitletB[1]{\def\ZJU@value@EtitletB{#1}}
\renewcommand\author[1]{\def\ZJU@value@author{#1}}
\newcommand\supervisor[1]{\def\ZJU@value@supervisor{#1}}
\newcommand\cpsupervisor[1]{\def\ZJU@value@cpsupervisor{#1}}
\newcommand\supervisorinstitute[1]{\def\ZJU@value@supervisorinstitute{#1}}
\newcommand\major[1]{\def\ZJU@value@major{#1}}
\newcommand\researchdm[1]{\def\ZJU@value@researchdm{#1}}
\newcommand\submitdate[1]{\def\ZJU@value@submitdate{#1}}
\newcommand\defenddate[1]{\def\ZJU@value@defenddate{#1}}
\newcommand\defenddateE[1]{\def\ZJU@value@defenddateE{#1}}
\newcommand\institute[1]{\def\ZJU@value@institute{#1}}
\newcommand\chairman[1]{\def\ZJU@value@chairman{#1}}
\newcommand\commissionerA[1]{\def\ZJU@value@commissionerA{#1}}
\newcommand\commissionerB[1]{\def\ZJU@value@commissionerB{#1}}
\newcommand\commissionerC[1]{\def\ZJU@value@commissionerC{#1}}
\newcommand\commissionerD[1]{\def\ZJU@value@commissionerD{#1}}
\newcommand\commissionerE[1]{\def\ZJU@value@commissionerE{#1}}
\newcommand\reviewersA[1]{\def\ZJU@value@reviewersA{#1}}
\newcommand\reviewersB[1]{\def\ZJU@value@reviewersB{#1}}
\newcommand\reviewersC[1]{\def\ZJU@value@reviewersC{#1}}
\newcommand\reviewersD[1]{\def\ZJU@value@reviewersD{#1}}
\newcommand\reviewersE[1]{\def\ZJU@value@reviewersE{#1}}
% 制作签名时间的标签
\newcommand\SignautreDateA[3]{%
\def\ZJU@value@signaturedateAy{#1}
\def\ZJU@value@signaturedateAm{#2}
\def\ZJU@value@signaturedateAd{#3}}
\newcommand\SignautreDateB[3]{%
\def\ZJU@value@signaturedateBy{#1}
\def\ZJU@value@signaturedateBm{#2}
\def\ZJU@value@signaturedateBd{#3}}
\newcommand\SignautreDateC[3]{%
\def\ZJU@value@signaturedateCy{#1}
\def\ZJU@value@signaturedateCm{#2}
\def\ZJU@value@signaturedateCd{#3}}
\newcommand\PutsigndateA{%
签字日期：{\hbox to 3em{\hfil\ZJU@value@signaturedateAy\hfil}}年
  {\hbox to 2em{\hfil\ZJU@value@signaturedateAm\hfil}}月
  {\hbox to 2em{\hfil\ZJU@value@signaturedateAd\hfil}}日
}
\newcommand\PutsigndateB{%
签字日期：{\hbox to 3em{\hfil\ZJU@value@signaturedateBy\hfil}}年
  {\hbox to 2em{\hfil\ZJU@value@signaturedateBm\hfil}}月
  {\hbox to 2em{\hfil\ZJU@value@signaturedateBd\hfil}}日
}
\newcommand\PutsigndateC{%
签字日期：{\hbox to 3em{\hfil\ZJU@value@signaturedateCy\hfil}}年
  {\hbox to 2em{\hfil\ZJU@value@signaturedateCm\hfil}}月
  {\hbox to 2em{\hfil\ZJU@value@signaturedateCd\hfil}}日
}
% 制作封面的命令
\newcommand\makeCoverPage{%
  % 这个地方写的是封面上的分类号与学号，字体字号可以更改
  \pagenumbering{alph}
  \cleardoublepage
  \thispagestyle{empty}
  {
    \songti\zihao{-4}
    \linespread{1.3}
    \begin{center}
      {\hspace{2em}
      \ZJU@label@classification~
      \ZJUunderline[90pt]{\ZJU@value@classification}
      \hfill
      \ZJU@label@serialnumber~
      \ZJUunderline[60pt]{\ZJU@value@serialnumber} \\
      \vspace{3pt}
      \ifx\ZJU@value@IsSecret\undefined
      \else
        \hspace{2em}
        \ZJU@label@SecretLevel~
        \ZJUunderline[90pt]{\ZJU@value@SecretLevel}
      \fi
      \hfill
      \ZJU@label@PersonalID~
      \ZJUunderline[60pt]{\ZJU@value@PersonalID}\\
      }
      % 这个尺寸可以更改
      \vspace{10mm}
      % 浙江大学四个字
      \ifpdf
        \includegraphics[width=60.3mm]{./CoverPagepic/ZJDX.pdf} \\
      \else
        \includegraphics[width=60.3mm]{./CoverPagepic/ZJDX.eps} \\
      \fi
      % 这个尺寸可以更改
      \vspace{4mm}
      %% \ZJU@value@school \\  \zihao{-1}
      % 这个博士学位论文在def文件中已有，当然在tex文件中还可以更改
      \centerline{\songti \zihao{-1}{\ZJU@value@degree\ZJU@label@thesis} }
      % 这个尺寸可以更改
      \vspace{4mm}
      % 这个地方调入浙大徽标
      \ifpdf
        \includegraphics[width=22.8mm]{./CoverPagepic/QSY.pdf}    \\
      \else
        \includegraphics[width=22.8mm]{./CoverPagepic/QSY.eps}    \\
      \fi
    \end{center}
 
      \vspace{2mm}

    \begin{center}
      % 论文题目部分内容，可以修改
      \begin{tabular}{rl}
        {\bfseries\fangsong\zihao{3}\ZJU@label@title:} 
        &
        \bfseries\fangsong\zihao{-2} \ZJUunderline[260pt]{\ZJU@value@title} \\[3mm]
        &
        % 这个地方是做第二行标题的判断，如果标题一行写不下，有第二行则显示，否则不显示
        \ifx\ZJU@value@titletl\undefined
          \hfil
        \else
          {\bfseries\fangsong\zihao{-2}\ZJUunderline[260pt]{\ZJU@value@titletl}}
        \fi \\[4mm]
        {\bfseries\fangsong\zihao{3}\ZJU@label@Etitle:} 
        &
        {\bf\zihao{-3}\ZJUunderline[260pt]{\ZJU@value@Etitle}}\\[3mm]
        &
        %同样是英文标题的多行判断，如果一行写不下，有第二行显示，否则不显示第二行
        \ifx\ZJU@value@Etitletl\undefined
          \hfil
        \else
          {\bf\zihao{-3}\ZJUunderline[260pt]{\ZJU@value@Etitletl}}
        \fi\\[2mm]
        &
        \ifx\ZJU@value@EtitletB\undefined
          \hfil
        \else
          {\bf\zihao{-3}\ZJUunderline[260pt]{\ZJU@value@EtitletB}}
        \fi\\
      \end{tabular}

      % 这个距离可以修改
      \vspace{15mm}  

      % 左右两边字体不同，定义两个宏AB来简化代码，这个功能用到了array宏包
      \newcolumntype{A}{>{\songti}r<{}}
      \newcolumntype{B}{>{\fangsong}l<{}}
      \zihao{4}
      \begin{tabular}{A@{：}B}
        \ZJU@label@author & \ZJUunderline[200pt]{\ZJU@value@author} \\[3mm]
        \ZJU@label@supervisor & \ZJUunderline[200pt]{\ZJU@value@supervisor} \\[3mm]
        % 判断有没有合作导师
        \ifx\ZJU@value@cpsupervisor\undefined
        \else
         \ZJU@label@cpsupervisor
        \fi
        &
        \ifx\ZJU@value@cpsupervisor\undefined
        \hfil\\[-7.7mm]
        \else
          \ZJUunderline[200pt]{\ZJU@value@cpsupervisor} \\[3mm]
        \fi
        \ZJU@label@major & \ZJUunderline[200pt]{\ZJU@value@major} \\[3mm]
        \ZJU@label@researchdm & \ZJUunderline[200pt]{\ZJU@value@researchdm} \\[3mm]
        \ZJU@label@institute & \ZJUunderline[200pt]{\ZJU@value@institute} \\
      \end{tabular}
    \end{center}
    % 插入适当的空白
    \vfill
    % 最后一项 论文提交日期
    \hfil{\bfseries\songti\zihao{-3}\hspace{4em}\ZJU@label@submitdate%
    \ZJUunderline[150pt]{\ZJU@value@submitdate}}\hfil
  }
}

%插入中文题名页
\renewcommand\maketitle{%
  % 新开一个页面
  \cleardoublepage
  % 无页眉页脚
  \thispagestyle{empty}
  {
    \linespread{1.3}
    \begin{center}

      % 先插入中文论文题目
      {\bfseries\fangsong\zihao{-2}\ZJUunderline[340pt]{\ZJU@value@title}\\
      \ifx\ZJU@value@titletl\undefined
        \hfil\\
      \else
        \ZJUunderline[300pt]{\ZJU@value@titletl}\\
      \fi}

      % 插入一段距离
      \vspace{12mm}

      % 插入浙大徽标
      \ifpdf
        \includegraphics[width=22.8mm]{./CoverPagepic/QSY.pdf}    \\
      \else
        \includegraphics[width=22.8mm]{./CoverPagepic/QSY.eps}    \\
      \fi

      % 插入空白
      \vspace{8mm}
      {\bfseries\songti\zihao{3}
      论文作者签名：
      \ifpdf
          \ZJUunderline[120pt]{\includegraphics[width=100pt,height=45pt]{./Signature/sign_ch.pdf}}
      \else
          \ZJUunderline[120pt]{\includegraphics[width=100pt,height=45pt]{./Signature/sign_ch.eps}}
      \fi
      {\bfseries\songti\zihao{3}\textcolor{white}{。}}\\

      %\hfil\\
      指导教师签名：}
      \ifpdf
           \ZJUunderline[120pt]{\includegraphics[width=100pt,height=45pt]{./Signature/sign_ch_s.pdf}}
      \else
           \ZJUunderline[120pt]{\includegraphics[width=100pt,height=45pt]{./Signature/sign_ch_s.eps}}
      \fi
      {\bfseries\songti\zihao{3}\textcolor{white}{。}}\\
 
            
      % 插入空白
      \vspace{15mm}
      
      % 评阅人信息
      \newcolumntype{A}{>{\songti\zihao{4}}r}
      \newcolumntype{B}{>{\songti\zihao{4}}c}
      \begin{tabular}{A@{：}B}
        论文评阅人1 & \ZJUunderline[260pt]{\ZJU@value@reviewersA}\\[2.2mm]
        评阅人2 & \ZJUunderline[260pt]{\ZJU@value@reviewersB}\\[2.2mm]
        评阅人3 & \ZJUunderline[260pt]{\ZJU@value@reviewersC}\\[2.2mm]
        评阅人4 & \ZJUunderline[260pt]{\ZJU@value@reviewersD}\\[2.2mm]
        评阅人5 & \ZJUunderline[260pt]{\ZJU@value@reviewersE}\\
      \end{tabular}
    
      % 加一段空白
      \vspace{10mm}

      % 答辩委员会名单
      \begin{tabular}{A@{：}B}
        答辩委员会主席 & \ZJUunderline[260pt]{\ZJU@value@chairman}\\[2.2mm]
        委员1 & \ZJUunderline[260pt]{\ZJU@value@commissionerA}\\[2.2mm]
        委员2 & \ZJUunderline[260pt]{\ZJU@value@commissionerB}\\[2.2mm]
        委员3 & \ZJUunderline[260pt]{\ZJU@value@commissionerC}\\[2.2mm]
        委员4 & \ZJUunderline[260pt]{\ZJU@value@commissionerD}\\[2.2mm]
        委员5 & \ZJUunderline[260pt]{\ZJU@value@commissionerE}\\
      \end{tabular}

    \end{center}
    % 加一段可变空白
      \vfil
    % 答辩时间
      {\songti\zihao{4}\hfill\ZJU@label@defenddate%
      \ZJUunderline[150pt]{\ZJU@value@defenddate}\hspace{3em}}
  }
}

% 这个地方插入了英文标题页
\newcommand\englishtitle[1]{\def\ZJU@value@englishtitle{#1}}
\newcommand\englishtitletl[1]{\def\ZJU@value@englishtitletl{#1}}
\newcommand\EreviewersA[1]{\def\ZJU@value@EreviewersA{#1}}
\newcommand\EreviewersB[1]{\def\ZJU@value@EreviewersB{#1}}
\newcommand\EreviewersC[1]{\def\ZJU@value@EreviewersC{#1}}
\newcommand\EreviewersD[1]{\def\ZJU@value@EreviewersD{#1}}
\newcommand\EreviewersE[1]{\def\ZJU@value@EreviewersE{#1}}
\newcommand\Echairman[1]{\def\ZJU@value@Echairman{#1}}
\newcommand\EcommissionerA[1]{\def\ZJU@value@EcommissionerA{#1}}
\newcommand\EcommissionerB[1]{\def\ZJU@value@EcommissionerB{#1}}
\newcommand\EcommissionerC[1]{\def\ZJU@value@EcommissionerC{#1}}
\newcommand\EcommissionerD[1]{\def\ZJU@value@EcommissionerD{#1}}
\newcommand\EcommissionerE[1]{\def\ZJU@value@EcommissionerE{#1}}

\newcommand\makeenglishtitle{%
% 注意这个cleardoublepage的用法
  \cleardoublepage
  \thispagestyle{empty}
  {
    \linespread{1.3} 
    \begin{center}
      % 英文论文题目
      {\bf\zihao{-3}\ZJUunderline[400pt]{\ZJU@value@englishtitle}\\
      \vspace{1ex}
      % 判断英文标题有无第二行
      \ifx\ZJU@value@englishtitletl\undefined
        \hfil
      \else
        \ZJUunderline[360pt]{\ZJU@value@englishtitletl}
      \fi}

      % 插入一段空白距离
      \vspace{7mm}

      % 浙大校徽
      \ifpdf
        \includegraphics[width=22.8mm]{./CoverPagepic/QSY.pdf}    \\
      \else
        \includegraphics[width=22.8mm]{./CoverPagepic/QSY.eps}    \\
      \fi

      % 插入一段空白距离
      \vspace{1mm}

      % 作者英文签名
      {\bf\zihao{3}\hspace{1.7em}Author's signature:
      \ifpdf

      \ZJUunderline[120pt]{\includegraphics[width=100pt,height=45pt]{./Signature/sign_en.pdf}}\\
      \else
      \ZJUunderline[120pt]{\includegraphics[width=100pt,height=45pt]{./Signature/sign_en.eps}}\\
      \fi
      %\hfil\\
      % 导师英文签名
      Supervisor's signature:
      \ifpdf
      \ZJUunderline[120pt]{\includegraphics[width=100pt,height=45pt]{./Signature/sign_en_s.pdf}}\\
      \else
      \ZJUunderline[120pt]{\includegraphics[width=100pt,height=45pt]{./Signature/sign_en_s.eps}}\\
      \fi}
    \end{center}
  
    % 加入一段空白
    \vspace{7mm}

    \zihao{4}
    % 论文评阅人列表（英文）
    %\newcolumntype{A}{>{\zihao{4}}r}
    %\newcolumntype{B}{>{\zihao{4}}c}
    \begin{tabular}{rc}
      External Reviewers: & \ZJUunderline[260pt]{\ZJU@value@EreviewersA}\\[1.2mm]
      & \ZJUunderline[260pt]{\ZJU@value@EreviewersB}\\[1.2mm]
      & \ZJUunderline[260pt]{\ZJU@value@EreviewersC}\\[1.2mm]
      & \ZJUunderline[260pt]{\ZJU@value@EreviewersD}\\[1.2mm]
      & \ZJUunderline[260pt]{\ZJU@value@EreviewersE}\\
    \end{tabular}

    % 加入一段空白
    \vspace{6mm}

    % 答辩委员会名单（英文）
    ~\\[1.2mm]
    \hbox to 2.4em{}Examining Committee Chairperson:\\[1.2mm]
    \hbox to 11.4em{}\ZJUunderline[260pt]{\ZJU@value@Echairman}\\[1.2mm]
    \hbox to 2.4em{}Examining Committee Members:\\[1.2mm]
    \hbox to 11.4em{}\ZJUunderline[260pt]{\ZJU@value@EcommissionerA}\\[1.2mm]
    \hbox to 11.4em{}\ZJUunderline[260pt]{\ZJU@value@EcommissionerB}\\[1.2mm]
    \hbox to 11.4em{}\ZJUunderline[260pt]{\ZJU@value@EcommissionerC}\\[1.2mm]
    \hbox to 11.4em{}\ZJUunderline[260pt]{\ZJU@value@EcommissionerD}\\[1.2mm]
    \hbox to 11.4em{}\ZJUunderline[260pt]{\ZJU@value@EcommissionerE}\\

    % 加一段空白
    \vfill
    % 答辩日期  
    {\hfill Date of oral defence:\ZJUunderline[150pt]{\ZJU@value@defenddateE}\hspace{3em}}
  }
}

% 独创声明与版权协议转让页
\newcommand\makeOSandCPRTpage{%
  \cleardoublepage
  \thispagestyle{empty}
  \input{./Chapters/Copyright.tex}
}

\newcommand\ZJUfrontmatter{%
  \frontmatter
  % 正文内容前的部分页码格式为大写罗马数字
  \pagenumbering{Roman}
}

\newcommand\ZJUmainmatter{%
  \mainmatter
  % 修改页眉页脚
\pagestyle{fancy}
  \fancyhf{} %fancyhf实际是fancyhead与fancyfoot的合体，它的参数用H和F指定
  \renewcommand{\headrulewidth}{0.4pt}%
  \renewcommand{\footrulewidth}{0pt}%
  % 分单双面判断页眉的设置
  \if@twoside
    \fancyhead[CE]{\songti\zihao{-5}\ZJU@value@school\ZJU@value@degree\ZJU@label@thesis}
    \fancyhead[CO]{\songti\zihao{-5}\leftmark}
    \fancyfoot[RO]{\zihao{-5} ~\thepage~}
    \fancyfoot[LE]{\zihao{-5} ~\thepage~}
  \else
    \fancyhead[L]{\songti\zihao{-5}\ZJU@value@school\ZJU@value@degree\ZJU@label@thesis}
    \fancyhead[R]{\songti\zihao{-5}\leftmark}
    \fancyfoot[C]{\zihao{-5} ~\thepage~}
  \fi
}

\newcommand\ZJUbackmatter{%
  \backmatter
}

% 空页眉页的格式定义
% 每一个chapter开始的第一页的页眉页脚样式为plain样式
\fancypagestyle{plain}{%
  \fancyhf{}% 先清除当前页面的页眉页脚定义，是fancyhdr包中的定义
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\footrulewidth}{0pt}%
  \if@twoside
    \fancyfoot[RO]{\zihao{-5} ~\thepage~}
    \fancyfoot[LE]{\zihao{-5} ~\thepage~}
  \else
    \fancyfoot[C]{\zihao{-5} ~\thepage~}
  \fi
}

% L靠左 R靠右 O奇数页 E偶数页
% 一般页的页眉页脚样式
\pagestyle{fancy}
  \fancyhf{} %fancyhf实际是fancyhead与fancyfoot的合体，它的参数用H和F指定
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\footrulewidth}{0pt}%
  % 分单双面判断页眉的设置
  \if@twoside
    %\fancyhead[CE]{\songti\zihao{-5}\ZJU@value@school\ZJU@value@degree\ZJU@label@thesis}
    %\fancyhead[CO]{\songti\zihao{-5}\leftmark}
    \fancyfoot[RO]{\zihao{-5} ~\thepage~}
    \fancyfoot[LE]{\zihao{-5} ~\thepage~}
  \else
    %\fancyhead[L]{\songti\zihao{-5}\ZJU@value@school\ZJU@value@degree\ZJU@label@thesis}
    %\fancyhead[R]{\songti\zihao{-5}\leftmark}
    \fancyfoot[C]{\zihao{-5} ~\thepage~}
  \fi

% 设置章节标题格式
% 此处章节标题前后空白距离采用了默认设置，如需修改请参考ctex参考文档ctex.pdf
\ctexset { chapter = { name={,} } }
\ctexset { chapter = { number={\arabic {chapter}} } }
\ctexset { chapter = { format={\noindent } } }
\ctexset { chapter = { nameformat={\bfseries \zihao {-3}} } }
\ctexset { chapter = { titleformat={\bfseries \fangsong \zihao {-3}} } }
\ctexset { section = { format={\noindent } } }
\ctexset { section = { nameformat={\bfseries \zihao {4}} } }
\ctexset { section = { titleformat={\bfseries \fangsong \zihao {4}} } }
\ctexset { subsection = { format={\noindent } } }
\ctexset { subsection = { nameformat={\bfseries \zihao {-4}} } }
\ctexset { subsection = { titleformat={\bfseries \fangsong \zihao{-4}} } }
\ctexset { subsubsection = { format={\noindent } } }
\ctexset { subsubsection = { nameformat={\bfseries \zihao {-4}} } }
\ctexset { subsubsection = { titleformat={\bfseries \zihao {-4}} } }

% 正文部分文字的行距设置
\linespread{1.5}

% 去掉目录中的空格字符
\addtocontents{toc}{\let\string\CTEX@spaceChar\relax}

% 设置浮动对象的参数
\setcounter{topnumber}{4}
\setcounter{totalnumber}{5}

\setlength{\floatsep}{8pt plus 3pt minus 2pt}
\setlength{\textfloatsep}{8pt plus 2pt minus 4pt}
\setlength{\intextsep}{8pt plus 3pt minus 2pt}


% 勘误表
\newenvironment{corrigenda}
  {\Nchapter{\ZJU@label@corrigenda}}
  {}

% 致谢
\renewenvironment{thanks}
  {\Nchapter{\ZJU@label@thanks}}
  {}

% 序言
\newenvironment{preface}
  {\Nchapter{\ZJU@label@preface}}
  {}

% 摘要
\newenvironment{abstract}
  {\Nchapter{\ZJU@label@abstract}}
  {}

%关键字
\newcommand\keywords[1]{%
  \vspace{2ex}\noindent{\heiti \ZJU@label@keywords} #1}

%英文摘要
\newenvironment{englishabstract}
  {\Nchapter{\ZJU@label@englishabstract}}
  {}

%英文关键字
\newcommand\englishkeywords[1]{%
  \vspace{2ex}\noindent{\bf \ZJU@label@englishkeywords} #1}

% 生成目录（论文中称目次）
\newcommand\ZJUcontents{%
  % 修改目录的格式
  \renewcommand{\cftchapfont}{\fangsong\zihao{-4}}
  \renewcommand{\cftchapleader}{\cftdotfill{\cftdot}}
  \renewcommand{\cftchapdotsep}{\cftdotsep}
  \renewcommand{\cftchappagefont}{\rm\zihao{-4}}
  \renewcommand{\cftsecleader}{\cftdotfill{\cftdot}}
  \renewcommand{\cftsecdotsep}{\cftdotsep}
  \renewcommand{\cftsecfont}{\fangsong\zihao{-4}}
  \renewcommand{\cftsecpagefont}{\rm\zihao{-4}}
  \renewcommand{\cftsubsecleader}{\cftdotfill{\cftdot}}
  \renewcommand{\cftsubsecdotsep}{\cftdotsep}
  \renewcommand{\cftsubsecfont}{\fangsong\zihao{-4}}
  \renewcommand{\cftsubsecpagefont}{\rm\zihao{-4}}
  \setlength{\cftbeforechapskip}{-2pt}
  \setlength{\cftbeforesecskip}{-2pt}
  \setlength{\cftbeforesubsecskip}{-2pt}
  \setlength{\cftsecindent}{2em}
  \setlength{\cftsubsecindent}{4em}
  \setcounter{tocdepth}{2}
  \addtocontents{toc}{\cftpagenumbersoff{chapter}}
  \tableofcontents
  \addtocontents{toc}{\cftpagenumberson{chapter}}
}

% 插图目录
\newcommand\ZJUListofFigures{%
  \renewcommand{\cftfigfont}{\fangsong\zihao{-4}}
  \renewcommand{\cftfigleader}{\cftdotfill{\cftdot}}
  \renewcommand{\cftfigdotsep}{\cftdotsep}
  \renewcommand{\cftfigpagefont}{\rm\zihao{-4}}
  \setlength{\cftbeforefigskip}{-2pt}
  \listoffigures
}

% 附表目录
\newcommand\ZJUListofTables{%
  \renewcommand{\cfttabfont}{\fangsong\zihao{-4}}
  \renewcommand{\cfttableader}{\cftdotfill{\cftdot}}
  \renewcommand{\cfttabdotsep}{\cftdotsep}
  \renewcommand{\cfttabpagefont}{\rm\zihao{-4}}
  \setlength{\cftbeforetabskip}{-2pt}
  \listoftables
}

% 缩写、符号清单、术语表
\newenvironment{ListofSymbol}
{\Nchapter{\ZJU@label@symbol}}
{}

% 参考文献部分
\DeclareRobustCommand\citenum
   {\begingroup
     \NAT@swatrue\let\NAT@ctype\z@\NAT@parfalse\let\textsuperscript\relax
     \NAT@citexnum[][]}

\newcommand\ZJUthesisbib[1]{%
  \setcitestyle{numbers, round, comma, aysep={}, yysep={,}, notesep={,}}
  \setlength{\bibsep}{0.5ex}
  \setlength{\bibhang}{2em}
  \renewcommand{\bibfont}{\fangsong\zihao{5}}

  \bibliographystyle{ZJUthesis}
  \bibliography{#1}
}

\makeindex

% 索引
\newcommand\ZJUindex{%
  \cleardoublepage
  % 不用这一句会造成索引的书签位置错误
  \phantomsection
  \printindex
}

% 作者简历
\newenvironment{resume}
  {\Nchapter{\ZJU@label@resume}}
  {}

% 发表文章目录
\newenvironment{publications}
  {\Nchapter{\ZJU@label@publications}}
  {}



% 2006年版模版内未使用到的内容
\newenvironment{resumesection}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 2\ccwd}
   \item\relax}
  {\endlist}
\newenvironment{resumelist}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 4\ccwd
           \itemindent -2\ccwd
           \listparindent\itemindent}
   \item\relax}
  {\endlist}

\def\reflect#1{{\setbox0=\hbox{#1}\rlap{\kern0.5\wd0
  \special{x:gsave}\special{x:scale -1 1}}\box0 \special{x:grestore}}}
\def\XeTeX{\leavevmode
  \setbox0=\hbox{X\lower.5ex\hbox{\kern-.15em\reflect{E}}\kern-.1667em \TeX}%
  \dp0=0pt\ht0=0pt\box0 }

% 设置显示到4级标题 chapter section subsection subsubsection，可适当减小
\setcounter{secnumdepth}{4}
\newtheoremstyle{break}% name
  {}%      Space above, empty = `usual value'
  {}%      Space below
  {\itshape}% Body font
  {}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}% Thm head font
  {.}%        Punctuation after thm head
  {\newline}% Space after thm head: \newline = linebreak
  {}%         Thm head spec
\endinput
%%
%% End of file `ZJUthesisv2_1.cls'.
