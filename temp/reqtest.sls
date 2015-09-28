step1:
  cmd.run:
    - name: 'echo step1'
    - require:
      - cmd: step3

step2:
  cmd.run:
    - name: 'echo step2'
    - require:
      - cmd: step3

step3:
  cmd.run:
    - name: 'echo step3'
    - require:
      - cmd: this_will_always_fail
    
this_will_always_fail:
  cmd.run:
    - name: 'ls -e'
