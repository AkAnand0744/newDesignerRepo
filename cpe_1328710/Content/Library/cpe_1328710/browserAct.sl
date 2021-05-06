namespace: cpe_1328710
operation:
  name: browserAct
  sequential_action:
    gav: com.microfocus.seq:cpe_1328710.browserAct:1.0.0
    skills:
    - Java
    - SAP
    - SAP NWBC Desktop
    - SAPUI5
    - SAPWDJ
    - SAPWebExt
    - Terminal Emulators
    - UI Automation
    - Web
    settings:
      sap:
        active: false
        auto_log_on: false
        close_on_exit: false
        ignore_existing_sessions: false
        remember_password: false
      windows:
        active: false
      terminal_settings:
        active: false
      web:
        active: true
        address: https://www.google.com/
        browser: CHROME
        close_on_exit: true
    steps:
    - step:
        id: '1'
        object_path: Window("Google Chrome").WinObject("Chrome Legacy Window")
        action: CaptureBitmap
        default_args: '"default1.png"'
  outputs:
  - return_result: ${return_result}
  - error_message: ${error_message}
  results:
  - SUCCESS
  - WARNING
  - FAILURE
object_repository:
  objects:
  - object:
      class: Window
      name: Google Chrome
      properties:
      - property:
          value:
            value: Google Chrome
            regular_expression: false
          name: regexpwndtitle
          hidden: false
          read_only: false
          type: STRING
      - property:
          value:
            value: Chrome_WidgetWin_1
            regular_expression: false
          name: regexpwndclass
          hidden: false
          read_only: false
          type: STRING
      - property:
          value:
            value: '0'
            regular_expression: false
          name: is owned window
          hidden: false
          read_only: false
          type: BOOL
      - property:
          value:
            value: '0'
            regular_expression: false
          name: is child window
          hidden: false
          read_only: false
          type: BOOL
      basic_identification:
        property_ref:
        - regexpwndtitle
        - regexpwndclass
        - is owned window
        - is child window
        ordinal_identifier: ''
      smart_identification: ''
      custom_replay:
        behavior:
          value: Chrome_WidgetWin_1
          name: simclass
          type: STRING
      comments: ''
      visual_relations: ''
      last_update_time: Tuesday, May 4, 2021 12:30:46 PM
      child_objects:
      - object:
          class: WinObject
          name: Chrome Legacy Window
          properties:
          - property:
              value:
                value: Chrome_RenderWidgetHostHWND
                regular_expression: false
              name: regexpwndclass
              hidden: false
              read_only: false
              type: STRING
          basic_identification:
            property_ref:
            - regexpwndclass
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: Chrome_RenderWidgetHostHWND
              name: simclass
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Tuesday, May 4, 2021 12:30:46 PM
          child_objects: []
  check_points_and_outputs: []
  parameters: []
