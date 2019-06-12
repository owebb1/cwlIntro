cwlVersion: v1.0
class: CommandLineTool
baseCommand: echo
#specify file and used when goes back
stdout: output.txt  #??Why is this defined now??
inputs:
  message:
    type: string
    inputBinding:
      position: 1



outputs:
  example_out:
    #now will reference the stdout: file listed in the original definition
    type: stdout
