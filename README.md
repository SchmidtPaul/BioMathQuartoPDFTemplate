# BioMathQuartoTemplate

A Quarto extension for creating professionally styled PDF documents for biological and mathematical content. This template provides a clean, modern design with customizable styling options.

## Features

- Professional PDF styling with customizable colors
- Right-sided margin with accent color
- Clean typography and section styling
- Support for both single documents and book projects
- Customizable page layouts

## Installation

### Option 1: Start a New Project with the Template

To create a new project with this template:

```bash
quarto use template yourusername/BioMathQuartoTemplate
```

### Option 2: Add to an Existing Project

To use this extension in an existing project:

```bash
quarto install extension yourusername/BioMathQuartoTemplate
```

Then, add this to your document's YAML:

```yaml
format: BioMathQuartoTemplate-pdf
```

## Usage

After installation, create a new .qmd file with this YAML header:

```yaml
---
title: "Your Document Title"
subtitle: "Document Subtitle"
author: "Your Name"
format: BioMathQuartoTemplate-pdf
---
```

## Customization

You can customize various aspects of the template by modifying the following files in the `_extensions/BioMathQuartoTemplate/` directory:

- `BioMathQuartoTemplate.tex`: Main styling file
- `pagestyle.tex`: Page layout settings
- Color scheme (in `BioMathQuartoTemplate.tex`):
  ```latex
  \definecolor{light}{HTML}{E6E6FA}
  \definecolor{highlight}{HTML}{800080}
  \definecolor{dark}{HTML}{330033}
  ```