#!/usr/bin/env cwl-runner

#Same setup as part 1 because just a command line tool
cwlVersion: v1.0
class: CommandLineTool
#uses the same baseCommand
baseCommand: echo

inputs:

  #defines a boolean flag in the workflow
  example_flag:
    type: boolean #obviously true or false
    inputBinding: #where it will appear and what it is prefixed with
      position: 1
      prefix: -f

  #defines a string input in the workflow
  example_string:
    type: string #defines it as a string
    inputBinding: #position and prefix
      position: 3
      prefix: --example-string

  #defines an integer input
  example_int:
    type: int #defines as an int
    inputBinding:
      position: 2
      prefix: -i
      separate: false #separates the prefix and then value... default is true 

  #defines a file input
  example_file:
    type: File? #question mark is used to define as optional in command line
    inputBinding:
      prefix: --file= #just used in these cases to help define
      separate: false #could separate the parts of the file if wanted
      position: 4 #where it will appear

outputs: []
