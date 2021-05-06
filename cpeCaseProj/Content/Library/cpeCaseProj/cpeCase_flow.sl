namespace: cpeCaseProj
flow:
  name: cpeCase_flow
  workflow:
  - cpeCase:
      do:
        cpeCaseProj.cpeCase: []
      publish:
      - return_result
      - error_message
      navigate:
      - SUCCESS: SUCCESS
      - WARNING: SUCCESS
      - FAILURE: on_failure
  outputs:
  - return_result
  - error_message
  results:
  - SUCCESS
  - FAILURE
