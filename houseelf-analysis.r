# Sarah Graves
# House elf analysis

# LOAD LIBRARIES
library(stringr)

# This script will analyze house elf data
# Functions of analysis include:
  # classify based on ear length
  # calculate the GC content
  # output GC content for size classes


# import house elf data
data <- read.csv("data/houseelf_earlength_dna_data_1.csv")


# FUNCTION
# calculate GC content of DNA sequence
calculate_gc_pct <- function(seq_string){
  # INPUT: string of a dna sequence
  # OUTPUT: percent GC content for the string
  
  # convert the string to lower case
  # if it is already lowercase, nothing will change
  string_lower <- str_to_lower(seq_string)
  
  gs <- str_count(string_lower, 'g')
  cs <- str_count(string_lower, 'c')
  
  # calcualte the percent
  gc_content <- (gs + cs) / str_length(string_lower) * 100
  
  return(gc_content)}

gc_pct <- calculate_gc_pct(data$dnaseq)

