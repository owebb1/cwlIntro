#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow


requirements:
  #turns on the scatter feature, taking parts of the array and running them at separate times
  ScatterFeatureRequirement: {}

#takes an input as an array of strings and tells the machine what is coming
inputs:
  message_array: string[]

#the main workflow that tells the machine how to do it
steps:
  #echo is the jobs
  echo:
    #what is this part doing?
    run: 1st-tool.cwl
    scatter: message
    in:
      message: message_array
    out: []

#no output for this workflow
outputs: []
