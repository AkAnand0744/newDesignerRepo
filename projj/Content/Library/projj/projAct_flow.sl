namespace: projj
flow:
  name: projAct_flow
  workflow:
  - projAct:
      do:
        projj.projAct: []
      publish:
      - akash
      - asia
      - return_result
      - error_message
      navigate:
      - SUCCESS: SUCCESS
      - WARNING: SUCCESS
      - FAILURE: on_failure
  outputs:
  - akash
  - asia
  - return_result
  - error_message
  results:
  - SUCCESS
  - FAILURE
