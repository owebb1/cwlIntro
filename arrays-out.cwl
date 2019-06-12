cwlVersion: v1.0
class: CommandLineTool
baseCommand: touch   #will cause the command to originally touch certain files
inputs:
  touchfiles:
    type:
      type: array
      items: string
    inputBinding:
      position: 1
outputs:
  output:
    type:
      type: array
      items: File
    outputBinding:
      #baz or foo are the two that will have outputs bc they have the .txt
      glob: "*.txt" #will fill in with any files described that fit the description
