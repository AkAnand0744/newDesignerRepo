namespace: uploadToCentral
operation:
  name: actCase
  sequential_action:
    gav: com.microfocus.seq:uploadToCentral.actCase:1.0.0
    skills:
    - Java
    - SAP NWBC Desktop
    - SAP
    - SAPUI5
    - SAPWDJ
    - SAPWebExt
    - Terminal Emulators
    - UI Automation
    - Web
    - WPF
    settings:
      sap:
        active: false
        auto_log_on: false
        close_on_exit: false
        ignore_existing_sessions: false
        remember_password: false
      windows:
        active: true
        apps:
          app_1:
            args: ''
            directory: ''
            include_child_processes: true
            launch_application: true
            path: C:\Program Files\Notepad++\notepad++.exe
      terminal_settings:
        active: false
      web:
        active: false
        address: ''
        browser: IE64
        close_on_exit: false
    steps:
    - step:
        id: '1'
        object_path: Window("Notepad++ [Administrator]").WinObject("hi")
        action: Type
        args: '"hello"'
    - step:
        id: '2'
        object_path: Window("Notepad++ [Administrator]").WinObject("hi")
        action: Type
        args: micReturn
        snapshot: .\Snapshots\ssf10.png
        highlight_id: '7342180'
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
      name: Notepad++ [Administrator]
      properties:
      - property:
          value:
            value: Notepad++ [Administrator]
            regular_expression: false
          name: regexpwndtitle
          hidden: false
          read_only: false
          type: STRING
      - property:
          value:
            value: Notepad++
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
          value: Notepad++
          name: simclass
          type: STRING
      comments: ''
      visual_relations: ''
      last_update_time: Monday, May 3, 2021 2:17:21 PM
      child_objects:
      - object:
          class: WinToolbar
          name: ToolbarWindow32
          properties:
          - property:
              value:
                value: ''
                regular_expression: false
              name: text
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: ToolbarWindow32
                regular_expression: false
              name: nativeclass
              hidden: false
              read_only: false
              type: STRING
          basic_identification:
            property_ref:
            - text
            - nativeclass
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: ToolbarWindow32
              name: simclass
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Monday, May 3, 2021 2:17:21 PM
          child_objects: []
      - object:
          class: WinObject
          name: Scintilla
          properties:
          - property:
              value:
                value: Scintilla
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
              value: Scintilla
              name: simclass
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Monday, May 3, 2021 2:17:21 PM
          child_objects: []
  check_points_and_outputs: []
  parameters: []
