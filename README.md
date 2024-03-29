# Analyzing Deaths of People Experiencing Homelessness

## Summary
In Toronto, the economy has been increased rapdily, in partiuclarly, housing and due to the pandemic, it goes higher uncontrollably and in results, the people experiencing homelessness get in trouble to stay and the death rates are higher than others in Toronto. In this paper, it will examine the death of people experiencing homelessness by extracting the data from 'Open Data Toronto'. 

## Code
This paper is used by Quarto in R Studio to make it more simple and easy to read compare to R Markdown.

## Usage LLM
This paper uses Chapt-GPT for some perspective of the idea in getting the idea of analyzing the death of the homeless in Toronto and comparing months of the death of the homeless in Toronto provided wit the help of ChatGPT. The source is available in `input/data/lim/usage.text`

## Data Structure
The unedited data set was extracted from open source: Open Data Toronto Data and files and repo that are used in this paper can be found in below:
- `input/data` contains 'csv' files and sketches for the data
- `output/paper` contains pdf (Report paper), qmd (Main Quarto)
- `output/references.bib` contains references.bib (references) to cite
- `scripts` contains 'R' extension test files (00-simulate R, 01-download_data R)
- 
## To run and locate
The unedited data set was extracted from open source: Open Data Toronto Data and files and repo that are used in this paper can be found in below:
- Run `scripts/00-download_data.R` to download raw data
- Run `scripts/01-simulate_data.R` to simulate raw data
- Run `scripts/02-data_cleaning.R` to generate cleaned data
- Run `scripts/03-test_data.R` to generate test data
- Run `outputs/paper/Death_of_People_Experiencing_Homelessness.qmd` to generate the PDF of the paper
