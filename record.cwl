cwlVersion: v1.0
class: CommandLineTool
inputs:
  dependent_parameters:
    type:
      type: record
      name: dependent_parameters
      #can put as many as you would like
      fields:
        itemA:
          type: string
          inputBinding:
            prefix: -A
        itemB:
          type: string
          inputBinding:
            prefix: -B
        itemD:
          type: string
          inputBinding:
            prefix: -D

  exclusive_parameters:
  #these will stop after one of them hits
    type:
      - type: record
        name: itemC
        fields:
          itemC:
            type: string
            inputBinding:
              prefix: -C
      - type: record
        name: itemE
        fields:
          itemE:
            type: string
            inputBinding:
              prefix: -E

outputs:
  example_out:
    type: stdout

#seems to be kind of the default output because makes it easy with a few lines of code
stdout: output.txt
baseCommand: echo
