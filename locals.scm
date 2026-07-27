; Scopes

(module_clause) @local.scope

(seq_block) @local.scope

(function_declaration) @local.scope
(task_declaration) @local.scope

; Definitions

((module_clause
  (identifier) @local.definition.type)
  (#set! definition.type.scope "parent"))

(assignment_statement
  left: (expression_list
    (reference_expression
      (identifier) @local.definition.var)))

(data_declaration
  (variable_decl_assignment
    name: (identifier) @local.definition.var))

(ansi_port_declaration
  (identifier) @local.definition.parameter)

(non_ansi_port_declaration
  (identifier) @local.definition.parameter)

(parameter_declaration
  (identifier) @local.definition.constant)

(localparam_declaration
  (identifier) @local.definition.constant)

; References

(reference_expression
  (identifier) @local.reference)

(identifier) @local.reference
