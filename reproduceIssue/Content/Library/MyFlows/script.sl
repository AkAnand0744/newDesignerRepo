namespace: MyFlows
operation:
  name: script
  python_action:
    use_jython: false
    script: |-
      # do not remove the execute function
      def execute():
          # code goes here
      # you can add additional helper methods below.
  results:
    - SUCCESS
