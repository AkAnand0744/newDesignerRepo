namespace: uploadToCentral
flow:
  name: actCase_flow
  workflow:
    - actCase:
        do:
          uploadToCentral.actCase: []
        publish:
          - return_result
          - error_message
        navigate:
          - SUCCESS: sleep
          - WARNING: sleep
          - FAILURE: on_failure
    - sleep:
        do:
          io.cloudslang.base.utils.sleep:
            - seconds: '1'
        navigate:
          - SUCCESS: SUCCESS
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
      actCase:
        x: 261
        'y': 161
      sleep:
        x: 479
        'y': 158
        navigate:
          c2258ca8-1853-4200-2f27-90ba3e27d613:
            targetId: 1f1d2965-0048-5c52-3690-4ed0c22f0821
            port: SUCCESS
    results:
      SUCCESS:
        1f1d2965-0048-5c52-3690-4ed0c22f0821:
          x: 621
          'y': 150
