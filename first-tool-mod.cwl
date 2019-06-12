#!/usr/bin/env cwl-runner

#defines the version
cwlVersion: v1.0

#tells you what it is, Workflow or CommandLineTool
class: CommandLineTool

#program that will run most of the time it is echo bc built in
baseCommand: echo

#tells what the input messages are
inputs:
  message:
    type: string #defines type of input
    inputBinding: #defines position on command line
      position: 1

#describes the output of the tool
outputs:
  echo_out:
    type: stdout
