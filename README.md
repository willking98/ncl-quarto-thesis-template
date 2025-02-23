# Quarto PhD Thesis Template: Newcastle University 

[PDF preview click here](_book/Knowledge-is-porridge.pdf), [HTML available click here](https://willking98.quarto.pub/knowledge-is-porridge/)

# Install & Usage

Follow the steps below to clone, customize, and build the document.

### Prerequisites
1. Install R: Follow the installation instructions on the official R website: https://cran.rstudio.com/
2. Install Quarto: Follow the installation instructions on the official Quarto website: https://quarto.org/docs/installation.html
3. Install `tiny_tex` required when rendering to PDF. Run the following command in the R Console.
4. Install Git: If you want to clone it from git then install git - though you should be able to just download this from GitHub if you really want.

```r
install.packages("tiny_tex")
```

### Clone the Repository
1. Open a terminal or command prompt.
2. Navigate to the directory where you want to clone the repository.
3. Run the following command to clone the repository:

```python
git clone https://github.com/willking98/ncl-thesis-template.git
```

### Customize the Document
1. Navigate to the cloned repository directory:

```python
cd quarto-phd-thesis
```

1. Open the source files (e.g., `.qmd` files) with a text editor, an integrated development environment (IDE) (like RStudio/Positron/VS Code) that supports Quarto or Markdown.
2. Customize the content by editing the source files, adding your own text, figures, tables, and citations. More details in the dir walkthrough below.
3. Customize the template to fit your specific requirements by modifying the content in the frontmatter, if necessary. 
4. Select the output format that you desire (pdf, html, docx) by commenting/uncommenting the specific section in the `_quarto.yml` file.
5. Call quarto render in the terminal in the main directory - or use the render option in your IDE.

### Build the Document

1. In the terminal or command prompt, make sure you are in the `ncl-thesis-template` directory.
2. Run the following command to build the document:

```python
quarto render
```

3. This will generate the output files in the `_book` directory within the `ncl-thesis-template` folder.
4. Open the output files (such as `thesis.pdf`) with your preferred PDF viewer or web browser to see the final result.

### Make Changes and Rebuild
1. After making changes to the source files, run `quarto render` again to update the output files.

# Further Details for Customising

This template has been constructed to specifically conform to the Newcastle University Thesis Guidelines. Roman numeral page numbering was used for frontmatter sections and Arabic numeral page numbering for the main content. To start the numerical page numbering in a different place the latex snippet below on the page/chapter on the last page you wish to be Roman numbers. By default this template places this snippet on the `dissemination.qmd` page. To ensure that Chapter heading pages always appear on the right page (odds) you might need to sprinkle in some of the following to ensure this works throughout the document (best done at the end before binding).

```latex
\clearpage
```

```latex
\newpage
\pagenumbering{arabic}
```

I have tried to keep this template pretty simple and limit the amount of latex usage throughout to ensure accessibility. Additionally, given university computer permissions I have tried to limit the number of dependencies required during the latex compilation process. Some other thesis templates wouldn't compile on my local machine due to associated admin permissions etc. 

## Submission and binding
You should change the following options to be uncommented in the `_quarto.yml` file to ensure consistency with the University template specifications.

```
linestretch: 1.5 # Line spacing - 1.5 is university guideline
geometry:
  - top=20mm
  - left=30mm
  - right=20mm
  - bottom=20mm
  - twoside # This flips the left/right margins on odd/even pages
```

You will also need to ensure that when you add your text to `abstract.tex` and `acknowledgements.tex` that if you want this to be 1.5 spaced you need to wrap the text in the following latex code. I have currently omitted this from the code as it is setup currently for normal line spacing during the writing process. Feel free to change this!

```latex
\begin{spacing}{1.5}
  Abstract text here...
\end{spacing}
```


## Repository / Thesis Structure
The repository is organized to mirror the structure of the thesis document. The index.qmd and _quarto.yml files can be edited as needed, but they cannot be deleted or renamed. The following diagram provides an overview of the template structure when rendered to pdf. Consult the code in the repository for a better understanding of how Quarto ties everything together. You might find it easier to place the figures within the chapters directory to avoid `../` in the file paths. 

```python
├───index.qmd
├───README.md
├───_quarto.qml
│
├───bibliography
│       references.qmd
│       vancouver.csl
│       zotero.bib
│
├───chapters
│   │   appendixA.qmd
│   │   background.qmd
│   │   conclusion.qmd
│   │   data.qmd
│   │   lies.qmd
│   │   part1.qmd
│   │   part2.qmd
│   │   part3.qmd
│   │   review.qmd
│   │   uglytruth.qmd
│   │   whatnow.qmd
│   │
│   ├───raw
│   │       airquality.csv
│   │
│   └───scripts
│           chap1.R
│           sensitivity-analysis.R
│
│
├───figures
│       stewart-pearson.jpg
│
├───frontmatter
│       abstract.tex
│       acknowledgements.tex
│       dissemination.qmd
│       shield.jpg
│       title-page.tex
│
└───_book
        Knowledge-is-porridge.pdf

```

## License

This template is released under the MIT License.

## Acknowledgements
This template was informed by the excellent work others have done on Quarto thesis templates, including the Edinburgh template [available here](https://github.com/james-d-h/quarto-phd-thesis) and the Oxford template [available here](https://github.com/ulyngs/oxforddown).

## Disclaimer

This repository and template is a data science product constructed by Will King. It does not represent official communication of the Newcastle University. All work and views are my own.
