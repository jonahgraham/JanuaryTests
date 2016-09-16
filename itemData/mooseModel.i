[Variables]
  [./temp]
  [../]
[]
[BCs]
  [./bottom]
    boundary = bottom
    type = DirichletBC
    value = 1
    variable = temp
  [../]
  [./top]
    boundary = top
    type = DirichletBC
    value = 0
    variable = temp
  [../]
[]
[Executioner]
# abort_on_solve_fail = true
# compute_initial_residual_before_preset_bcs = true
# control_tags = 
  dt = 1
# dtmax = 1e+30
# dtmin = 2e-14
# enable = true
# end_time = 1e+30
# l_abs_step_tol = -1
# l_max_its = 10000
# l_tol = 1e-05
# line_search = default
# max_xfem_update = 4294967295
# n_startup_steps = 0
# nl_abs_step_tol = 1e-50
# nl_abs_tol = 1e-50
# nl_max_funcs = 10000
# nl_max_its = 50
# nl_rel_step_tol = 1e-50
# nl_rel_tol = 1e-08
# no_fe_reinit = true
  num_steps = 10
# petsc_options = -dm_moose_print_embedding
# petsc_options_iname = -ksp_atol
# petsc_options_value = 
# picard_abs_tol = 1e-50
# picard_max_its = 1
# picard_rel_tol = 1e-08
# reset_dt = true
# restart_file_base = 
# scheme = implicit-euler
# solve_type = PJFNK
# splitting = 
# ss_check_tol = 1e-08
# ss_tmin = 0
# start_time = 0
# time_period_ends = 
# time_period_starts = 
# time_periods = 
# timestep_tolerance = 2e-14
# trans_ss_check = true
  type = Transient
# use_multiapp_dt = true
# verbose = true
[]
[Kernels]
  [./Convection]
    type = Convection
    velocity = '0 0 1'
    variable = temp
  [../]
  [./Diffusion]
    type = Diffusion
    variable = temp
  [../]
  [./TimeDerivative]
    type = TimeDerivative
    variable = temp
  [../]
[]
[Mesh]
# centroid_partitioner_direction = x
# control_tags = 
# dim = 3
# distribution = DEFAULT
# enable = true
  file = mug.e
# nemesis = true
# partitioner = default
# patch_update_strategy = never
  type = FileMesh
# displacements = 
# block_id = 
# block_name = 
# boundary_id = 
# boundary_name = 
# construct_side_list_from_node_list = true
# ghosted_boundaries = 
# ghosted_boundaries_inflation = 
# patch_size = 40
# second_order = true
# skip_partitioning = true
# uniform_refine = 0
[]
[Outputs]
  console = true
  exodus = true
  file_base = out
[]
[Postprocessors]
  [./NodalVariableValue]
    nodeid = 10
    type = NodalVariableValue
    variable = temp
  [../]
[]
