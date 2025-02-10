# BioMathQuartoPDFTemplate

A Quarto extension for creating professionally styled PDF documents for biological and mathematical content. This template provides a clean, modern design with customizable styling options.

## Installation

### Option 1: Start a New Project with the Template

To create a new project with this template:

```bash
quarto use template SchmidtPaul/BioMathQuartoPDFTemplate
```

### Option 2: Add to an Existing Project

To use this extension in an existing project:

```bash
quarto install extension SchmidtPaul/BioMathQuartoPDFTemplate
```

Then, add this to your document's YAML:

```yaml
format: BioMathQuartoPDFTemplate-pdf
```

## Usage

After installation, create a new .qmd file with this YAML header:

```yaml
---
title: "Your Document Title"
subtitle: "Document Subtitle"
author: "Your Name"
format: BioMathQuartoPDFTemplate-pdf
---
```
