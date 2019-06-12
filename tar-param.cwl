#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool

#new base command that allows for tar files and extracting out of tar files
#kind of like a file folders
#this one includes the command and then any command line arguments it may need
baseCommand: [tar, --extract]

inputs:
  tarfile:
    type: File
    inputBinding:
      prefix: --file
  extractfile:
    type: string
    inputBinding:
      position: 1
outputs:
  extracted_file:
    type: File
    outputBinding:
      #uses the extract file in the input as the label for the output
      glob: $(inputs.extractfile)
      #Parameter reference... only certain ones allowed at certain times...check list
