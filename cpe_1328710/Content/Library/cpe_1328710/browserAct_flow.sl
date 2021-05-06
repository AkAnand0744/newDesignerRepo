namespace: cpe_1328710
flow:
  name: browserAct_flow
  workflow:
    - browserAct:
        do:
          cpe_1328710.browserAct: []
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
extensions:
  graph:
    steps:
      browserAct:
        x: 103
        'y': 157
        navigate:
          185bf2dc-78dc-0dcd-5602-254774f2186f:
            targetId: fb284014-3ad7-b14b-4254-6bc6c152cb28
            port: WARNING
          783be1a8-c48f-d2c9-2910-4a7d715fa10c:
            targetId: fb284014-3ad7-b14b-4254-6bc6c152cb28
            port: SUCCESS
    results:
      SUCCESS:
        fb284014-3ad7-b14b-4254-6bc6c152cb28:
          x: 400
          'y': 150
