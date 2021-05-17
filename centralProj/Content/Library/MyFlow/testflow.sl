namespace: MyFlow
flow:
  name: testflow
  workflow:
    - random_number_generator:
        do:
          io.cloudslang.base.math.random_number_generator:
            - min: '5'
            - max: '10'
        navigate:
          - SUCCESS: sleep
          - FAILURE: on_failure
    - sleep:
        do:
          io.cloudslang.base.utils.sleep:
            - seconds: '2'
        navigate:
          - SUCCESS: sleep_1
          - FAILURE: on_failure
    - sleep_1:
        do:
          io.cloudslang.base.utils.sleep:
            - seconds: '1'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      random_number_generator:
        x: 417
        'y': 214.5
      sleep:
        x: 570
        'y': 115
      sleep_1:
        x: 850
        'y': 90
        navigate:
          3335da1e-288c-c6cb-f930-3bc48c3be6e5:
            targetId: 7a99ed3c-961d-585a-c178-b7fa2b41bd9c
            port: SUCCESS
    results:
      SUCCESS:
        7a99ed3c-961d-585a-c178-b7fa2b41bd9c:
          x: 706
          'y': 214
