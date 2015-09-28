human_friendly_state_id:        # An arbitrary state ID declaration.
  my_custom_state:              # The custom state module name.
    - enforce_custom_thing      # The function in the custom state module.
    - name: my_name_value             # Maps to the ``name`` parameter in the custom function.
    - foo: Foo                  # Specify the required ``foo`` parameter.
    - bar: :True                # Override the default value for the ``bar`` parameter
