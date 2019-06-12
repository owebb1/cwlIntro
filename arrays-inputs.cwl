cwlVersion: v1.0
class: CommandLineTool
inputs:
  filesA:
    #creates one two three as three separate lines in the command line
    type: string[]
    inputBinding:
      prefix: -A
      position: 1

  filesB:
    #creates four five and six as 3 seperate strings each one having their prefix
    type:
      type: array
      items: string
      inputBinding:
        prefix: -B=
        separate: false
    inputBinding:
      position: 2

  filesC:
    #only separates seven eight nine by commas because one string
    type: string[]
    inputBinding:
      prefix: -C=
      itemSeparator: ","
      separate: false
      position: 4

outputs:
  example_out:
    type: stdout

#puts the output in the output.txt file
stdout: output.txt
baseCommand: echo #
