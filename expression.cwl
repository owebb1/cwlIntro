cwlVersion: v1.0
class: CommandLineTool
baseCommand: echo

requirements:
  InlineJavascriptRequirement: {} #always need the requirement for special things

#no input
inputs: []

#output is just the usual
outputs:
  example_out:
    type: stdout
stdout: output.txt

#arguments tab does what
arguments:
  #prints out on command line just as we thought it would
  - prefix: -A
    valueFrom: $(1+1)
  - prefix: -B
    valueFrom: $("/foo/bar/baz".split('/').slice(-1)[0])
  - prefix: -C
    valueFrom: |
      ${
        var r = [];
        for (var i = 10; i >= 1; i--) {
          r.push(i);
        }
        return r;
      }
