
## Introduction to reporting

### Common document formats

Markdown (md), R Markdown (Rmd), Quarto(qmd), and IPython Notebooks (ipynb) are all formats used for creating documents that blend text, code, and visualizations, commonly employed in data science, research, and technical documentation. 


## Markdown

"Markdown is a lightweight markup language for creating formatted text using a plain-text editor."

It's what's used for creating our presentations.

# Heading 1 Example

This is a simple example of Markdown formatting.

### Basic Formatting

You can use *italic*, **bold**, and ~~strikethrough~~ text.

### Lists

- Item 1
- Item 2
  - Sub-item 2.1
  - Sub-item 2.2

### Links and Images

You can [link to websites](https://www.example.com) and embed images:

![Markdown Logo](https://upload.wikimedia.org/wikipedia/commons/4/48/Markdown-mark.svg)

## Exercise 1 - R Markdown

[ Link to the file](https://github.com/glowform/reproducible-research/blob/main/Assignments/RR_7_markdown.Rmd)


## Exercise 2 - Quarto

Quarto is an open source publishing system for technical and scientific documents. It implements Markdown, allowing for integration with multiple languages, (e.g. R and Python).

Meant as a non-R-focused replacement for RMarkdown.

It allows:

- automated reports with dynamic fields based on data inputs
- clear code and results documentation
- presentations with direct code outputs etc.

Quarto workflow:

<img src="https://i.imgur.com/amUmSws.png" width="700">

Quarto file – .Qmd
Markdown file – .md
Final output – .html/tex/pdf/others

(Note: it was similar for RMarkdown, with Rmd instead of qmd)

[ Link to the file](https://github.com/glowform/reproducible-research/blob/main/Assignments/RR_7_quarto.qmd)

## Exercise 3 - Jupyter Notebooks

[ Link to the file](https://github.com/glowform/reproducible-research/blob/main/Assignments/RR_7_jupyter.ipynb)


## Assignment 
1. Send me a link to your project repository (the one you're doing for this course), with your teammates added as collaborators.
2. Send me the html/pdf output of the example files we did today. Change some of the numeric values in the code. Make sure that it states you're the author and it has todays date.



## Helpful links

[Quarto Guide](https://quarto.org/docs/guide/)

[Quarto CLI](https://quarto.org/docs/get-started/)

[Quarto with Jupyter](https://quarto.org/docs/get-started/hello/jupyter.html)

[Markdown vs Quarto](https://quarto.org/docs/faq/rmarkdown.html)

[Jupyter Notebooks docs](https://docs.jupyter.org/en/latest/)


## Questions

#### How to merge jupyter notebook files?

Have a look at [git lens VSCode extension](https://www.gitkraken.com/gitlens) 

Also [Jupyter Notebook extension](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter) 

And [nbdime](https://github.com/jupyter/nbdime)

#### Latex and Overleaf - its relation to MD and Quarto

#### Talk about projects and coding issues


## Acknowledgements
Based on the materials prepared by dr Wojciech Hardy
