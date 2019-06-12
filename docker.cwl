#Version and Class the same
cwlVersion: v1.0
class: CommandLineTool

#different baseCommand ??what is it used for??
baseCommand: node
hints:
  DockerRequirement:
    dockerPull: node:slim
inputs:
  src:
    type: File
    inputBinding:
      position: 1
outputs:
  example_out:
    type: stdout
stdout: output.txt
