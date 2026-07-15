(module $todomvc.wasm
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32 i32 i32 i32)))
  (type (;3;) (func (param i32 i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;6;) (func (param i32) (result i32)))
  (type (;7;) (func (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;9;) (func))
  (type (;10;) (func (param i32 i32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (import "webidl:baseline/web" "[method]element.set-attribute" (func $_RNvNvMsB_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_7Element13set_attribute11wit_import4 (;0;) (type 5)))
  (import "webidl:baseline/web" "[method]html-element.append-child" (func $_RNvNvMsD_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_11HtmlElement12append_child11wit_import0 (;1;) (type 4)))
  (import "webidl:baseline/web" "[method]window.document" (func $_RNvNvMsI_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_6Window8document11wit_import0 (;2;) (type 6)))
  (import "webidl:baseline/web" "[method]document.body" (func $_RNvNvMsm_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_8Document4body11wit_import1 (;3;) (type 1)))
  (import "webidl:baseline/web" "[method]document.create-element" (func $_RNvNvMsn_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_8Document14create_element11wit_import1 (;4;) (type 3)))
  (import "webidl:baseline/web" "[method]document.create-text-node" (func $_RNvNvMso_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_8Document16create_text_node11wit_import1 (;5;) (type 3)))
  (import "webidl:baseline/web" "[method]element.append-child" (func $_RNvNvMsw_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_7Element12append_child11wit_import0 (;6;) (type 4)))
  (import "webidl:baseline/web" "get-window" (func $_RNvNvNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web10get_window11wit_import0 (;7;) (type 7)))
  (import "webidl:baseline/web" "text-as-node" (func $_RNvNvNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web12text_as_node11wit_import0 (;8;) (type 6)))
  (import "webidl:baseline/web" "element-as-node" (func $_RNvNvNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web15element_as_node11wit_import0 (;9;) (type 6)))
  (import "webidl:baseline/web" "[resource-drop]element" (func $_RNvNvXs5_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_7ElementNtNtBd_3__rt12WasmResource4drop4drop (;10;) (type 0)))
  (import "webidl:baseline/web" "[resource-drop]html-element" (func $_RNvNvXs7_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_11HtmlElementNtNtBd_3__rt12WasmResource4drop4drop (;11;) (type 0)))
  (import "webidl:baseline/web" "[resource-drop]node" (func $_RNvNvXs9_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_4NodeNtNtBd_3__rt12WasmResource4drop4drop (;12;) (type 0)))
  (import "webidl:baseline/web" "[resource-drop]document" (func $_RNvNvXs_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB6_8DocumentNtNtBc_3__rt12WasmResource4drop4drop (;13;) (type 0)))
  (import "webidl:baseline/web" "[resource-drop]text" (func $_RNvNvXsb_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_4TextNtNtBd_3__rt12WasmResource4drop4drop (;14;) (type 0)))
  (import "webidl:baseline/web" "[resource-drop]trusted-html" (func $_RNvNvXsd_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_11TrustedHtmlNtNtBd_3__rt12WasmResource4drop4drop (;15;) (type 0)))
  (import "webidl:baseline/web" "[resource-drop]trusted-script" (func $_RNvNvXsf_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_13TrustedScriptNtNtBd_3__rt12WasmResource4drop4drop (;16;) (type 0)))
  (import "webidl:baseline/web" "[resource-drop]trusted-script-url" (func $_RNvNvXsh_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_16TrustedScriptUrlNtNtBd_3__rt12WasmResource4drop4drop (;17;) (type 0)))
  (import "webidl:baseline/web" "[resource-drop]window" (func $_RNvNvXsl_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_6WindowNtNtBd_3__rt12WasmResource4drop4drop (;18;) (type 0)))
  (import "wasi_snapshot_preview1" "environ_get" (func $__imported_wasi_snapshot_preview1_environ_get (;19;) (type 4)))
  (import "wasi_snapshot_preview1" "environ_sizes_get" (func $__imported_wasi_snapshot_preview1_environ_sizes_get (;20;) (type 4)))
  (import "wasi_snapshot_preview1" "fd_write" (func $__imported_wasi_snapshot_preview1_fd_write (;21;) (type 8)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__imported_wasi_snapshot_preview1_proc_exit (;22;) (type 0)))
  (func $__wasm_call_ctors (;23;) (type 9))
  (func $_RNvNvMNtNtCs8dNdkSoVEg0_4core5alloc6layoutNtB4_6Layout25from_size_align_unchecked18precondition_checkCsaJolGoatC1G_7todomvc (;24;) (type 10) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 1
    i32.popcnt
    i32.store offset=16
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 3
            i32.load offset=16
            i32.const 1
            i32.eq
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          br 1 (;@2;)
        end
        local.get 1
        i32.const 1048696
        call $_RNvNvMNtNtCs8dNdkSoVEg0_4core3mem9alignmentNtB4_9Alignment13new_unchecked18precondition_checkCsaJolGoatC1G_7todomvc
        local.get 3
        local.get 1
        i32.store offset=20
        local.get 0
        i32.const -2147483648
        local.get 1
        i32.sub
        i32.le_u
        i32.const 1
        i32.and
        br_if 1 (;@1;)
      end
      local.get 3
      i32.const 1048712
      i32.store offset=24
      local.get 3
      i32.const 281
      i32.store offset=28
      i32.const 1048712
      i32.const 563
      i32.const 0
      i32.const 1
      i32.and
      local.get 2
      call $_RNvNtCs8dNdkSoVEg0_4core9panicking18panic_nounwind_fmt
      unreachable
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvNvMs_NtCs51AVrxNfmOa_5alloc3vecINtB6_3VecppE7set_len18precondition_checkCsaJolGoatC1G_7todomvc (;25;) (type 10) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.store offset=4
    block ;; label = @1
      local.get 0
      local.get 1
      i32.le_u
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 3
      i32.const 1048993
      i32.store offset=8
      local.get 3
      i32.const 198
      i32.store offset=12
      i32.const 1048993
      i32.const 397
      i32.const 0
      i32.const 1
      i32.and
      local.get 2
      call $_RNvNtCs8dNdkSoVEg0_4core9panicking18panic_nounwind_fmt
      unreachable
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvXs2J_NtNtCs8dNdkSoVEg0_4core5slice4iterINtB7_4IterNtCsaJolGoatC1G_7todomvc4TodoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1q_8adapters3map8map_foldRBQ_jjNCINvNvXs1_NtB2c_6filterINtB2V_6FilterppEB1k_5count8to_usizeB2E_NCNvXBS_NtBS_9ComponentNtNtBS_8bindings5Guest3run0E0NCINvXsK_NtB1o_5accumjNtB4L_3Sum3sumINtB2a_3MapBF_B2K_EE0E0EBS_ (;26;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=32
    local.get 3
    i32.const 12
    i32.store offset=36
    local.get 3
    i32.const 1
    i32.store offset=40
    local.get 3
    local.get 1
    i32.store offset=44
    local.get 3
    local.get 0
    local.get 1
    i32.eq
    i32.const 1
    i32.and
    i32.store8 offset=19
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 3
          i32.load8_u offset=19
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 3
          i32.const 0
          i32.store offset=20
          br 1 (;@2;)
        end
        local.get 3
        local.get 3
        i32.load offset=4
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 3
      local.get 1
      i32.store offset=48
      local.get 3
      local.get 0
      i32.store offset=52
      local.get 3
      local.get 1
      i32.store offset=56
      local.get 3
      local.get 0
      i32.store offset=60
      local.get 3
      local.get 1
      i32.store offset=64
      local.get 1
      local.get 0
      i32.const 1049308
      call $_RNvNvMNtNtCs8dNdkSoVEg0_4core3ptr9const_ptrPp20offset_from_unsigned18precondition_checkCsaJolGoatC1G_7todomvc
      local.get 3
      local.get 1
      local.get 0
      i32.sub
      i32.const 12
      i32.div_u
      i32.store offset=24
      loop ;; label = @2
        local.get 3
        local.get 0
        i32.store offset=68
        local.get 3
        i32.load offset=20
        local.set 4
        local.get 3
        local.get 4
        i32.store offset=72
        local.get 0
        local.get 4
        i32.const 12
        i32.mul
        i32.add
        local.set 5
        local.get 3
        local.get 5
        i32.store offset=76
        local.get 3
        i32.load offset=4
        local.set 6
        local.get 3
        local.get 3
        i32.const 11
        i32.add
        local.get 6
        local.get 5
        call $_RNCINvNtNtNtCs8dNdkSoVEg0_4core4iter8adapters3map8map_foldRNtCsaJolGoatC1G_7todomvc4TodojjNCINvNvXs1_NtB6_6filterINtB1B_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXBX_NtBX_9ComponentNtNtBX_8bindings5Guest3run0E0NCINvXsK_NtB28_5accumjNtB3T_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1q_EE0E0BX_
        i32.store offset=4
        local.get 3
        i32.load offset=20
        i32.const 1
        i32.const 1049440
        call $_RNvNvMs9_NtCs8dNdkSoVEg0_4core3numj13unchecked_add18precondition_checkCsaJolGoatC1G_7todomvc
        local.get 3
        local.get 3
        i32.load offset=20
        i32.const 1
        i32.add
        i32.store offset=20
        block ;; label = @3
          local.get 3
          i32.load offset=20
          local.get 3
          i32.load offset=24
          i32.eq
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
      end
      local.get 3
      local.get 3
      i32.load offset=4
      i32.store offset=12
    end
    local.get 3
    i32.load offset=12
    local.set 7
    local.get 3
    i32.const 80
    i32.add
    global.set $__stack_pointer
    local.get 7
    return
  )
  (func $_RINvYINtNtNtCs8dNdkSoVEg0_4core5slice4iter4IterNtCsaJolGoatC1G_7todomvc4TodoENtNtNtNtBa_4iter6traits8iterator8Iterator3mapjNCINvNvXs1_NtNtB1j_8adapters6filterINtB28_6FilterppEB1d_5count8to_usizeRBJ_NCNvXBL_NtBL_9ComponentNtNtBL_8bindings5Guest3run0E0EBL_ (;27;) (type 10) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 3
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    return
  )
  (func $_RINvYINtNtNtCs8dNdkSoVEg0_4core5slice4iter4IterNtCsaJolGoatC1G_7todomvc4TodoENtNtNtNtBa_4iter6traits8iterator8Iterator6filterNCNvXBL_NtBL_9ComponentNtNtBL_8bindings5Guest3run0EBL_ (;28;) (type 10) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 3
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    return
  )
  (func $_RNvMs4_NtNtCs8dNdkSoVEg0_4core5slice4iterINtB5_4IterNtCsaJolGoatC1G_7todomvc4TodoE3newBQ_ (;29;) (type 10) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 3
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 2
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=16
    local.get 3
    local.get 2
    i32.store offset=20
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 1
    local.get 2
    i32.const 12
    i32.mul
    i32.add
    i32.store
    local.get 0
    local.get 3
    i32.load
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    return
  )
  (func $_RNvXs2J_NtNtCs8dNdkSoVEg0_4core5slice4iterINtB6_4IterNtCsaJolGoatC1G_7todomvc4TodoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBR_ (;30;) (type 6) (param i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 1
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 1
    i32.store offset=16
    local.get 1
    i32.const 1
    i32.store offset=20
    local.get 0
    i32.load
    local.set 2
    local.get 1
    local.get 2
    i32.store offset=24
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 1
    local.get 3
    i32.store offset=28
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 2
            local.get 3
            i32.eq
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 0
            local.get 2
            i32.const 12
            i32.add
            i32.store
            br 1 (;@3;)
          end
          local.get 1
          i32.const 0
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 1
        local.get 2
        i32.store offset=8
        br 1 (;@1;)
      end
    end
    local.get 1
    i32.load offset=8
    return
  )
  (func $_RNvXs2J_NtNtCs8dNdkSoVEg0_4core5slice4iterINtB6_4IterNtCsaJolGoatC1G_7todomvc4TodoENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintBR_ (;31;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 12
    i32.store offset=8
    local.get 1
    i32.load offset=4
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=12
    local.get 1
    i32.load
    local.set 4
    local.get 2
    local.get 4
    i32.store offset=16
    local.get 2
    local.get 3
    i32.store offset=20
    local.get 2
    local.get 4
    i32.store offset=24
    local.get 2
    local.get 3
    i32.store offset=28
    local.get 3
    local.get 4
    i32.const 1049308
    call $_RNvNvMNtNtCs8dNdkSoVEg0_4core3ptr9const_ptrPp20offset_from_unsigned18precondition_checkCsaJolGoatC1G_7todomvc
    local.get 2
    local.get 3
    local.get 4
    i32.sub
    i32.const 12
    i32.div_u
    i32.store
    local.get 2
    i32.load
    local.set 5
    local.get 2
    i32.load
    local.set 6
    local.get 0
    local.get 5
    i32.store
    local.get 0
    i32.const 1
    i32.store offset=4
    local.get 0
    local.get 6
    i32.store offset=8
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs8_NtNtNtCs8dNdkSoVEg0_4core4iter8adapters6filterINtNtNtBb_5slice4iter4IterNtCsaJolGoatC1G_7todomvc4TodoENtB5_15SpecAssumeCount27assume_count_le_upper_boundB1h_ (;32;) (type 1) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 1
    i32.le_u
    local.set 3
    local.get 2
    local.get 3
    i32.const 1
    i32.and
    i32.store8 offset=15
    i32.const 1049580
    local.set 4
    local.get 3
    i32.const 1
    i32.and
    local.get 4
    call $_RNvNvNtCs8dNdkSoVEg0_4core4hint16assert_unchecked18precondition_checkCsaJolGoatC1G_7todomvc
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNCINvNtNtNtCs8dNdkSoVEg0_4core4iter8adapters3map8map_foldRNtCsaJolGoatC1G_7todomvc4TodojjNCINvNvXs1_NtB6_6filterINtB1B_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXBX_NtBX_9ComponentNtNtBX_8bindings5Guest3run0E0NCINvXsK_NtB28_5accumjNtB3T_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1q_EE0E0BX_ (;33;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=4
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 0
    local.get 1
    local.get 0
    local.get 2
    call $_RNCINvNvXs1_NtNtNtCs8dNdkSoVEg0_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRNtCsaJolGoatC1G_7todomvc4TodoNCNvXB20_NtB20_9ComponentNtNtB20_8bindings5Guest3run0E0B20_
    call $_RNCINvXsK_NtNtNtCs8dNdkSoVEg0_4core4iter6traits5accumjNtB8_3Sum3sumINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtCsaJolGoatC1G_7todomvc4TodoENCINvNvXs1_NtB18_6filterINtB2z_6FilterppENtNtBa_8iterator8Iterator5count8to_usizeRB1U_NCNvXB1W_NtB1W_9ComponentNtNtB1W_8bindings5Guest3run0E0EE0B1W_
    local.set 4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4
    return
  )
  (func $_RNCINvNvXs1_NtNtNtCs8dNdkSoVEg0_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRNtCsaJolGoatC1G_7todomvc4TodoNCNvXB20_NtB20_9ComponentNtNtB20_8bindings5Guest3run0E0B20_ (;34;) (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 0
    local.get 2
    i32.const 8
    i32.add
    call $_RNCNvXCsaJolGoatC1G_7todomvcNtB4_9ComponentNtNtB4_8bindings5Guest3run0B4_
    i32.const 1
    i32.and
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3
    return
  )
  (func $_RNvXs1_NtNtNtCs8dNdkSoVEg0_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtCsaJolGoatC1G_7todomvc4TodoENCNvXB1u_NtB1u_9ComponentNtNtB1u_8bindings5Guest3run0ENtNtNtB9_6traits8iterator8Iterator5countB1u_ (;35;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=20
    local.get 2
    local.get 1
    i32.store offset=24
    local.get 2
    i32.const -1
    i32.store offset=56
    local.get 2
    i32.const 0
    i32.store offset=60
    local.get 2
    i32.const 40
    i32.add
    local.get 2
    i32.const 20
    i32.add
    call $_RNvXs2J_NtNtCs8dNdkSoVEg0_4core5slice4iterINtB6_4IterNtCsaJolGoatC1G_7todomvc4TodoENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintBR_
    local.get 2
    i32.load offset=44
    local.set 3
    local.get 2
    i32.load offset=48
    local.set 4
    local.get 2
    local.get 3
    i32.store offset=32
    local.get 2
    local.get 4
    i32.store offset=36
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.load offset=32
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 2
        i32.load offset=36
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 2
      i32.const -1
      i32.store offset=28
    end
    local.get 2
    i32.load offset=20
    local.set 5
    local.get 2
    i32.load offset=24
    local.set 6
    local.get 2
    i32.const 8
    i32.add
    local.get 5
    local.get 6
    call $_RINvYINtNtNtCs8dNdkSoVEg0_4core5slice4iter4IterNtCsaJolGoatC1G_7todomvc4TodoENtNtNtNtBa_4iter6traits8iterator8Iterator3mapjNCINvNvXs1_NtNtB1j_8adapters6filterINtB28_6FilterppEB1d_5count8to_usizeRBJ_NCNvXBL_NtBL_9ComponentNtNtBL_8bindings5Guest3run0E0EBL_
    local.get 2
    i32.load offset=12
    local.set 7
    local.get 2
    i32.load offset=8
    local.set 8
    local.get 2
    local.get 8
    i32.store offset=68
    local.get 2
    local.get 7
    i32.store offset=72
    local.get 8
    local.get 7
    i32.const 0
    call $_RINvXs2J_NtNtCs8dNdkSoVEg0_4core5slice4iterINtB7_4IterNtCsaJolGoatC1G_7todomvc4TodoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1q_8adapters3map8map_foldRBQ_jjNCINvNvXs1_NtB2c_6filterINtB2V_6FilterppEB1k_5count8to_usizeB2E_NCNvXBS_NtBS_9ComponentNtNtBS_8bindings5Guest3run0E0NCINvXsK_NtB1o_5accumjNtB4L_3Sum3sumINtB2a_3MapBF_B2K_EE0E0EBS_
    local.set 9
    local.get 2
    local.get 9
    i32.store offset=76
    local.get 9
    local.get 2
    i32.load offset=28
    call $_RNvXs8_NtNtNtCs8dNdkSoVEg0_4core4iter8adapters6filterINtNtNtBb_5slice4iter4IterNtCsaJolGoatC1G_7todomvc4TodoENtB5_15SpecAssumeCount27assume_count_le_upper_boundB1h_
    local.get 2
    i32.const 80
    i32.add
    global.set $__stack_pointer
    local.get 9
    return
  )
  (func $_RNvXsB_NtCs51AVrxNfmOa_5alloc6stringeNtB5_8ToString9to_stringCsaJolGoatC1G_7todomvc (;36;) (type 10) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 0
    local.get 1
    local.get 2
    call $_RNvXs26_NtCs51AVrxNfmOa_5alloc6stringeNtB6_12SpecToString14spec_to_stringCsaJolGoatC1G_7todomvc
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXsB_NtCs51AVrxNfmOa_5alloc6stringjNtB5_8ToString9to_stringCsaJolGoatC1G_7todomvc (;37;) (type 1) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 1
    call $_RNvXs1P_NtCs51AVrxNfmOa_5alloc6stringjNtB6_12SpecToString14spec_to_stringCsaJolGoatC1G_7todomvc
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCsaJolGoatC1G_7todomvc8bindings16__export_run_cabiNtB4_9ComponentEB4_ (;38;) (type 9)
    call $_RNvNtNtCsaJolGoatC1G_7todomvc8bindings3__rt14run_ctors_once
    call $_RNvXCsaJolGoatC1G_7todomvcNtB2_9ComponentNtNtB2_8bindings5Guest3run
    return
  )
  (func $_RNvMs2_NtCs51AVrxNfmOa_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsaJolGoatC1G_7todomvc (;39;) (type 10) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 2
    i32.store offset=32
    local.get 3
    i32.const 12
    i32.add
    local.get 0
    local.get 1
    local.get 2
    call $_RNvMs2_NtCs51AVrxNfmOa_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsaJolGoatC1G_7todomvc
    local.get 3
    i32.load offset=16
    local.set 4
    i32.const 0
    local.set 5
    block ;; label = @1
      block ;; label = @2
        i32.const 1
        local.get 5
        local.get 4
        select
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=12
        local.set 6
        local.get 3
        local.get 6
        i32.store offset=36
        local.get 3
        i32.load offset=16
        local.set 7
        local.get 3
        i32.load offset=20
        local.set 8
        local.get 3
        local.get 7
        i32.store offset=40
        local.get 3
        local.get 8
        i32.store offset=44
        local.get 0
        i32.const 8
        i32.add
        local.get 6
        local.get 7
        local.get 8
        call $_RNvXs_NtCs51AVrxNfmOa_5alloc5allocNtB4_6GlobalNtNtCs8dNdkSoVEg0_4core5alloc9Allocator10deallocateCsaJolGoatC1G_7todomvc
        br 1 (;@1;)
      end
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvMs2_NtCs51AVrxNfmOa_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsaJolGoatC1G_7todomvc (;40;) (type 2) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 1
    i32.store offset=16
    local.get 4
    local.get 2
    i32.store offset=20
    local.get 4
    local.get 3
    i32.store offset=24
    local.get 4
    local.get 3
    i32.store offset=28
    block ;; label = @1
      block ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.set 5
        local.get 4
        local.get 5
        i32.store offset=32
        block ;; label = @3
          local.get 5
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        local.get 1
        i32.load
        local.set 6
        local.get 4
        local.get 6
        i32.store offset=36
        local.get 4
        local.get 6
        i32.store offset=40
        local.get 3
        local.get 6
        i32.const 1049712
        call $_RNvNvMs9_NtCs8dNdkSoVEg0_4core3numj13unchecked_mul18precondition_checkCsaJolGoatC1G_7todomvc
        local.get 3
        local.get 6
        i32.mul
        local.set 7
        local.get 4
        local.get 7
        i32.store offset=44
        local.get 4
        local.get 2
        i32.store offset=48
        local.get 7
        local.get 2
        i32.const 1049728
        call $_RNvNvMNtNtCs8dNdkSoVEg0_4core5alloc6layoutNtB4_6Layout25from_size_align_unchecked18precondition_checkCsaJolGoatC1G_7todomvc
        local.get 4
        local.get 2
        i32.store offset=52
        local.get 4
        local.get 7
        i32.store offset=56
        local.get 1
        i32.load offset=4
        local.set 8
        local.get 4
        local.get 8
        i32.store offset=60
        local.get 4
        local.get 8
        i32.store offset=4
        local.get 4
        local.get 2
        i32.store offset=8
        local.get 4
        local.get 7
        i32.store offset=12
        local.get 0
        local.get 4
        i32.load offset=12
        i32.store offset=8
        local.get 0
        local.get 4
        i64.load offset=4 align=4
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=4
    end
    local.get 4
    i32.const 64
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvMs4_NtCs51AVrxNfmOa_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaJolGoatC1G_7todomvc (;41;) (type 11) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    i32.const 0
    i32.load offset=1049744
    local.set 6
    i32.const 0
    i32.load offset=1049748
    local.set 7
    i32.const 0
    i32.load offset=1049744
    local.set 8
    i32.const 0
    i32.load offset=1049748
    local.set 9
    local.get 5
    local.get 1
    i32.store offset=56
    local.get 5
    local.get 2
    i32.store8 offset=63
    local.get 5
    local.get 3
    i32.store offset=64
    local.get 5
    local.get 4
    i32.store offset=68
    local.get 5
    local.get 6
    i32.store offset=76
    local.get 5
    local.get 7
    i32.store offset=80
    local.get 5
    local.get 8
    i32.store offset=84
    local.get 5
    local.get 9
    i32.store offset=88
    local.get 5
    local.get 4
    i32.store offset=92
    local.get 5
    local.get 3
    i32.store offset=96
    local.get 1
    i64.extend_i32_u
    local.get 4
    i64.extend_i32_u
    i64.mul
    local.set 10
    local.get 10
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    i32.const 0
    i32.ne
    local.set 11
    local.get 10
    i32.wrap_i64
    local.set 12
    local.get 5
    local.get 11
    i32.const 1
    i32.and
    i32.store8 offset=103
    local.get 5
    local.get 12
    i32.store offset=104
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    local.get 11
                    i32.const 1
                    i32.and
                    br_if 0 (;@8;)
                    local.get 12
                    i32.const -2147483648
                    local.get 3
                    i32.sub
                    i32.le_u
                    i32.const 1
                    i32.and
                    br_if 2 (;@6;)
                    br 1 (;@7;)
                  end
                  i32.const 0
                  i32.load offset=1049744
                  local.set 13
                  i32.const 0
                  i32.load offset=1049748
                  local.set 14
                  local.get 5
                  local.get 13
                  i32.store offset=48
                  local.get 5
                  local.get 14
                  i32.store offset=52
                  br 2 (;@5;)
                end
                i32.const 0
                i32.load offset=1049744
                local.set 15
                i32.const 0
                i32.load offset=1049748
                local.set 16
                local.get 5
                local.get 15
                i32.store offset=48
                local.get 5
                local.get 16
                i32.store offset=52
                br 1 (;@5;)
              end
              local.get 5
              local.get 3
              i32.store offset=48
              local.get 5
              local.get 12
              i32.store offset=52
              local.get 5
              i32.load offset=48
              local.set 17
              local.get 5
              i32.load offset=52
              local.set 18
              local.get 5
              local.get 17
              i32.store offset=108
              local.get 5
              local.get 18
              i32.store offset=112
              local.get 5
              local.get 17
              i32.store offset=32
              local.get 5
              local.get 18
              i32.store offset=36
              local.get 5
              i32.const 0
              i32.store offset=28
              local.get 5
              i32.load offset=32
              local.set 19
              local.get 5
              i32.load offset=36
              local.set 20
              local.get 5
              local.get 19
              i32.store offset=116
              local.get 5
              local.get 20
              i32.store offset=120
              local.get 20
              i32.eqz
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            i32.const 0
            i32.load offset=1049744
            local.set 21
            i32.const 0
            i32.load offset=1049748
            local.set 22
            local.get 0
            local.get 21
            i32.store offset=4
            local.get 0
            local.get 22
            i32.store offset=8
            local.get 0
            i32.const 1
            i32.store
            br 2 (;@2;)
          end
          local.get 0
          i32.const 0
          i32.store offset=4
          local.get 0
          local.get 3
          i32.store offset=8
          local.get 0
          i32.const 0
          i32.store
          br 2 (;@1;)
        end
        block ;; label = @3
          block ;; label = @4
            local.get 2
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.const 8
            i32.add
            local.get 5
            i32.const 27
            i32.add
            local.get 19
            local.get 20
            call $_RNvXs_NtCs51AVrxNfmOa_5alloc5allocNtB4_6GlobalNtNtCs8dNdkSoVEg0_4core5alloc9Allocator15allocate_zeroedCsaJolGoatC1G_7todomvc
            local.get 5
            i32.load offset=12
            local.set 23
            local.get 5
            local.get 5
            i32.load offset=8
            i32.store offset=40
            local.get 5
            local.get 23
            i32.store offset=44
            br 1 (;@3;)
          end
          local.get 5
          i32.const 16
          i32.add
          local.get 5
          i32.const 27
          i32.add
          local.get 19
          local.get 20
          call $_RNvXs_NtCs51AVrxNfmOa_5alloc5allocNtB4_6GlobalNtNtCs8dNdkSoVEg0_4core5alloc9Allocator8allocateCsaJolGoatC1G_7todomvc
          local.get 5
          i32.load offset=20
          local.set 24
          local.get 5
          local.get 5
          i32.load offset=16
          i32.store offset=40
          local.get 5
          local.get 24
          i32.store offset=44
        end
        local.get 5
        i32.load offset=40
        local.set 25
        i32.const 1
        local.set 26
        block ;; label = @3
          i32.const 0
          local.get 26
          local.get 25
          select
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          local.get 19
          i32.store offset=136
          local.get 5
          local.get 20
          i32.store offset=140
          local.get 0
          local.get 19
          i32.store offset=4
          local.get 0
          local.get 20
          i32.store offset=8
          local.get 0
          i32.const 1
          i32.store
          br 1 (;@2;)
        end
        local.get 5
        i32.load offset=40
        local.set 27
        local.get 5
        i32.load offset=44
        local.set 28
        local.get 5
        local.get 27
        i32.store offset=124
        local.get 5
        local.get 28
        i32.store offset=128
        local.get 5
        local.get 27
        i32.store offset=132
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        local.get 27
        i32.store offset=8
        local.get 0
        i32.const 0
        i32.store
        br 1 (;@1;)
      end
    end
    local.get 5
    i32.const 144
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvMs4_NtCs51AVrxNfmOa_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaJolGoatC1G_7todomvc (;42;) (type 2) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 1
    i32.store offset=28
    local.get 4
    local.get 2
    i32.store offset=36
    local.get 4
    local.get 3
    i32.store offset=40
    local.get 4
    i32.const 0
    i32.store offset=44
    local.get 4
    i32.const 0
    i32.store offset=48
    local.get 4
    i32.const 12
    i32.add
    local.get 1
    i32.const 0
    i32.const 1
    i32.and
    local.get 2
    local.get 3
    call $_RNvMs4_NtCs51AVrxNfmOa_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaJolGoatC1G_7todomvc
    block ;; label = @1
      local.get 4
      i32.load offset=12
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=16
      local.set 5
      local.get 4
      i32.load offset=20
      local.set 6
      local.get 4
      local.get 5
      i32.store offset=72
      local.get 4
      local.get 6
      i32.store offset=76
      local.get 5
      local.get 6
      call $_RNvNtCs51AVrxNfmOa_5alloc7raw_vec12handle_error
      unreachable
    end
    local.get 4
    i32.load offset=16
    local.set 7
    local.get 4
    i32.load offset=20
    local.set 8
    local.get 4
    local.get 7
    i32.store offset=52
    local.get 4
    local.get 8
    i32.store offset=56
    local.get 4
    local.get 3
    i32.store offset=60
    block ;; label = @1
      block ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        local.get 4
        i32.const -1
        i32.store offset=24
        br 1 (;@1;)
      end
      local.get 4
      local.get 7
      i32.store offset=64
      local.get 4
      local.get 7
      i32.store offset=24
    end
    local.get 1
    local.get 4
    i32.load offset=24
    i32.const 0
    i32.sub
    i32.gt_u
    i32.const -1
    i32.xor
    local.set 9
    local.get 4
    local.get 9
    i32.const 1
    i32.and
    i32.store8 offset=71
    i32.const 1049752
    local.set 10
    local.get 9
    i32.const 1
    i32.and
    local.get 10
    call $_RNvNvNtCs8dNdkSoVEg0_4core4hint16assert_unchecked18precondition_checkCsaJolGoatC1G_7todomvc
    local.get 0
    local.get 8
    i32.store offset=4
    local.get 0
    local.get 7
    i32.store
    local.get 4
    i32.const 80
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvMNtCs8dNdkSoVEg0_4core3stre3lenCsaJolGoatC1G_7todomvc (;43;) (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 2
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 1
    return
  )
  (func $_RINvXs_NvMNtCs51AVrxNfmOa_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsaJolGoatC1G_7todomvc (;44;) (type 10) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=16
    local.get 3
    local.get 2
    i32.store offset=20
    local.get 3
    i32.const 1
    i32.store offset=28
    local.get 3
    local.get 2
    i32.store offset=32
    i32.const 1
    local.set 4
    local.get 3
    local.get 2
    local.get 4
    local.get 4
    call $_RNvMs4_NtCs51AVrxNfmOa_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaJolGoatC1G_7todomvc
    local.get 3
    i32.load offset=4
    local.set 5
    local.get 0
    local.get 3
    i32.load
    i32.store
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store offset=8
    block ;; label = @1
      local.get 2
      i32.const 0
      i32.gt_u
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=36
      local.get 0
      i32.load offset=4
      local.set 6
      local.get 3
      local.get 6
      i32.store offset=40
      i32.const 1
      local.set 7
      local.get 1
      local.get 6
      local.get 7
      local.get 7
      local.get 2
      i32.const 1049880
      call $_RNvNvNtCs8dNdkSoVEg0_4core3ptr19copy_nonoverlapping18precondition_checkCsaJolGoatC1G_7todomvc
      local.get 2
      i32.const 0
      i32.shl
      local.set 8
      block ;; label = @2
        local.get 8
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        local.get 1
        local.get 8
        memory.copy
      end
      local.get 0
      i32.load
      local.set 9
      local.get 3
      local.get 9
      i32.store offset=44
      local.get 3
      local.get 9
      i32.store offset=12
      local.get 2
      local.get 3
      i32.load offset=12
      i32.const 1050008
      call $_RNvNvMs_NtCs51AVrxNfmOa_5alloc3vecINtB6_3VecppE7set_len18precondition_checkCsaJolGoatC1G_7todomvc
      local.get 0
      local.get 2
      i32.store offset=8
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvMNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB2_8Document11from_handle (;45;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    local.get 0
    call $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web8DocumentE11from_handleB6_
    i32.store offset=12
    local.get 1
    local.get 1
    i32.load offset=12
    i32.store offset=4
    local.get 1
    local.get 1
    i32.load offset=4
    i32.store
    local.get 1
    i32.load
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB2_8Document6handle (;46;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web8DocumentE6handleB6_
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMs4_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_7Element11from_handle (;47;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    local.get 0
    call $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web7ElementE11from_handleB6_
    i32.store offset=12
    local.get 1
    local.get 1
    i32.load offset=12
    i32.store offset=4
    local.get 1
    local.get 1
    i32.load offset=4
    i32.store
    local.get 1
    i32.load
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMs4_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_7Element6handle (;48;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web7ElementE6handleB6_
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMs6_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_11HtmlElement11from_handle (;49;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    local.get 0
    call $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web11HtmlElementE11from_handleB6_
    i32.store offset=12
    local.get 1
    local.get 1
    i32.load offset=12
    i32.store offset=4
    local.get 1
    local.get 1
    i32.load offset=4
    i32.store
    local.get 1
    i32.load
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMs6_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_11HtmlElement6handle (;50;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web11HtmlElementE6handleB6_
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMs8_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_4Node11from_handle (;51;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    local.get 0
    call $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web4NodeE11from_handleB6_
    i32.store offset=12
    local.get 1
    local.get 1
    i32.load offset=12
    i32.store offset=4
    local.get 1
    local.get 1
    i32.load offset=4
    i32.store
    local.get 1
    i32.load
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMs8_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_4Node6handle (;52;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web4NodeE6handleB6_
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMsB_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_7Element13set_attribute (;53;) (type 2) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=28
    local.get 4
    local.get 1
    i32.store offset=32
    local.get 4
    local.get 2
    i32.store offset=36
    local.get 4
    local.get 1
    i32.store offset=112
    local.get 4
    local.get 2
    i32.store offset=116
    local.get 4
    local.get 1
    i32.store offset=100
    local.get 4
    local.get 1
    i32.store offset=40
    local.get 1
    local.get 2
    call $_RNvMNtCs8dNdkSoVEg0_4core3stre3lenCsaJolGoatC1G_7todomvc
    local.set 5
    local.get 4
    local.get 5
    i32.store offset=44
    local.get 3
    i32.load
    i32.const -1
    i32.eq
    local.set 6
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.const 1
        local.get 6
        i32.const 1
        i32.and
        select
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 3
        i32.store offset=72
        local.get 4
        local.get 3
        call $_RNvXsx_NtCs51AVrxNfmOa_5alloc6stringNtB5_6StringNtNtNtCs8dNdkSoVEg0_4core3ops5deref5Deref5derefCsaJolGoatC1G_7todomvc
        local.get 4
        i32.load offset=4
        local.set 7
        local.get 4
        i32.load
        local.set 8
        local.get 4
        local.get 8
        i32.store offset=104
        local.get 4
        local.get 7
        i32.store offset=108
        local.get 4
        local.get 8
        i32.store offset=96
        local.get 4
        local.get 8
        i32.store offset=76
        local.get 3
        call $_RNvMNtCs51AVrxNfmOa_5alloc6stringNtB2_6String3lenCsaJolGoatC1G_7todomvc
        local.set 9
        local.get 4
        local.get 9
        i32.store offset=80
        local.get 4
        local.get 8
        i32.store offset=124
        local.get 4
        i32.const 1
        i32.store offset=8
        local.get 4
        local.get 8
        i32.store offset=12
        local.get 4
        local.get 9
        i32.store offset=16
        br 1 (;@1;)
      end
      local.get 3
      i32.const 4
      i32.add
      local.set 10
      local.get 4
      local.get 10
      i32.store offset=48
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 3
              i32.load offset=4
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 0 (;@5;)
            end
            local.get 10
            i32.const 4
            i32.add
            local.set 11
            local.get 4
            local.get 11
            i32.store offset=52
            local.get 11
            call $_RNvMsc_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_11TrustedHtml11take_handle
            local.set 12
            local.get 4
            i32.const 0
            i32.store offset=20
            local.get 4
            local.get 12
            i32.store offset=24
            br 2 (;@2;)
          end
          local.get 10
          i32.const 4
          i32.add
          local.set 13
          local.get 4
          local.get 13
          i32.store offset=56
          local.get 13
          call $_RNvMse_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_13TrustedScript11take_handle
          local.set 14
          local.get 4
          i32.const 1
          i32.store offset=20
          local.get 4
          local.get 14
          i32.store offset=24
          br 1 (;@2;)
        end
        local.get 10
        i32.const 4
        i32.add
        local.set 15
        local.get 4
        local.get 15
        i32.store offset=60
        local.get 15
        call $_RNvMsg_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_16TrustedScriptUrl11take_handle
        local.set 16
        local.get 4
        i32.const 2
        i32.store offset=20
        local.get 4
        local.get 16
        i32.store offset=24
      end
      local.get 4
      i32.load offset=20
      local.set 17
      local.get 4
      local.get 17
      i32.store offset=64
      local.get 4
      i32.load offset=24
      local.set 18
      local.get 4
      local.get 18
      i32.store offset=68
      local.get 4
      i32.const 0
      i32.store offset=8
      local.get 4
      local.get 17
      i32.store offset=12
      local.get 4
      local.get 18
      i32.store offset=16
    end
    local.get 4
    i32.load offset=8
    local.set 19
    local.get 4
    local.get 19
    i32.store offset=84
    local.get 4
    i32.load offset=12
    local.set 20
    local.get 4
    local.get 20
    i32.store offset=88
    local.get 4
    i32.load offset=16
    local.set 21
    local.get 4
    local.get 21
    i32.store offset=92
    local.get 0
    call $_RNvMs4_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_7Element6handle
    local.set 22
    local.get 4
    local.get 1
    i32.store offset=120
    local.get 22
    local.get 1
    local.get 5
    local.get 19
    local.get 20
    local.get 21
    call $_RNvNvMsB_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_7Element13set_attribute11wit_import4
    local.get 3
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web19TrustedTypeOrStringEBL_
    local.get 4
    i32.const 128
    i32.add
    global.set $__stack_pointer
    return
    unreachable
  )
  (func $_RNvMsc_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_11TrustedHtml11take_handle (;54;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web11TrustedHtmlE11take_handleB6_
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMse_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_13TrustedScript11take_handle (;55;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web13TrustedScriptE11take_handleB6_
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMsg_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_16TrustedScriptUrl11take_handle (;56;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web16TrustedScriptUrlE11take_handleB6_
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMsD_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_11HtmlElement12append_child (;57;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=16
    local.get 2
    local.get 1
    i32.store offset=20
    local.get 0
    call $_RNvMs6_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_11HtmlElement6handle
    local.get 1
    call $_RNvMs8_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_4Node6handle
    call $_RNvNvMsD_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_11HtmlElement12append_child11wit_import0
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=24
    local.get 2
    local.get 3
    call $_RNvMs8_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_4Node11from_handle
    i32.store offset=28
    local.get 2
    local.get 2
    i32.load offset=28
    i32.store offset=12
    local.get 2
    i32.load offset=12
    local.set 4
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 4
    return
  )
  (func $_RNvMsI_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_6Window8document (;58;) (type 6) (param i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 0
    call $_RNvMsk_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_6Window6handle
    call $_RNvNvMsI_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_6Window8document11wit_import0
    local.set 2
    local.get 1
    local.get 2
    i32.store offset=8
    local.get 1
    local.get 2
    call $_RNvMNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB2_8Document11from_handle
    i32.store offset=12
    local.get 1
    local.get 1
    i32.load offset=12
    i32.store
    local.get 1
    i32.load
    local.set 3
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3
    return
  )
  (func $_RNvMsk_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_6Window6handle (;59;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web6WindowE6handleB6_
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMsa_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_4Text11from_handle (;60;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    local.get 0
    call $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web4TextE11from_handleB6_
    i32.store offset=12
    local.get 1
    local.get 1
    i32.load offset=12
    i32.store offset=4
    local.get 1
    local.get 1
    i32.load offset=4
    i32.store
    local.get 1
    i32.load
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMsa_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_4Text6handle (;61;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web4TextE6handleB6_
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMsk_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_6Window11from_handle (;62;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    local.get 0
    call $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web6WindowE11from_handleB6_
    i32.store offset=12
    local.get 1
    local.get 1
    i32.load offset=12
    i32.store offset=4
    local.get 1
    local.get 1
    i32.load offset=4
    i32.store
    local.get 1
    i32.load
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMsm_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_8Document4body (;63;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=36
    local.get 2
    local.get 2
    i64.load offset=16 align=1
    i64.store offset=8
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=68
    local.get 2
    i32.const 8
    i32.store offset=72
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=56
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=40
    local.get 1
    call $_RNvMNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB2_8Document6handle
    local.get 2
    i32.const 8
    i32.add
    call $_RNvNvMsm_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_8Document4body11wit_import1
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=84
    local.get 2
    i32.const 0
    i32.store offset=88
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=60
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 2
              i32.const 8
              i32.add
              i32.const 0
              i32.eq
              i32.const -1
              i32.and
              i32.const -1
              i32.xor
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.load8_u offset=8
              local.set 3
              local.get 2
              local.get 3
              i32.store8 offset=95
              local.get 2
              local.get 3
              i32.store offset=44
              local.get 3
              i32.const 1
              i32.gt_u
              drop
              local.get 3
              br_table 2 (;@3;) 3 (;@2;) 1 (;@4;)
            end
            i32.const 1050044
            call $_RNvNtCs8dNdkSoVEg0_4core9panicking30panic_null_pointer_dereference
            unreachable
          end
          local.get 2
          i32.const 24
          i32.add
          call $_RINvNtNtCsaJolGoatC1G_7todomvc8bindings3__rt25invalid_enum_discriminantINtNtCs8dNdkSoVEg0_4core6option6OptionNtNtNtNtB4_6webidl8baseline3web11HtmlElementEEB6_
          br 2 (;@1;)
        end
        local.get 2
        i32.const 0
        i32.store offset=24
        br 1 (;@1;)
      end
      local.get 2
      local.get 2
      i32.const 8
      i32.add
      i32.store offset=76
      local.get 2
      i32.const 4
      i32.store offset=80
      local.get 2
      i32.const 8
      i32.add
      i32.const 4
      i32.add
      local.set 4
      local.get 2
      local.get 4
      i32.store offset=64
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 4
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 4
            i32.const 0
            i32.eq
            i32.const -1
            i32.and
            i32.const -1
            i32.xor
            i32.const 1
            i32.and
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 4
          local.get 4
          i32.const 1050060
          call $_RNvNtCs8dNdkSoVEg0_4core9panicking36panic_misaligned_pointer_dereference
          unreachable
        end
        local.get 4
        i32.load
        local.set 5
        local.get 2
        local.get 5
        i32.store offset=48
        local.get 2
        local.get 5
        call $_RNvMs6_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_11HtmlElement11from_handle
        i32.store offset=52
        local.get 2
        local.get 2
        i32.load offset=52
        i32.store offset=32
        local.get 2
        i32.const 24
        i32.add
        i32.const 4
        i32.add
        local.get 2
        i32.load offset=32
        i32.store
        local.get 2
        i32.const 1
        i32.store offset=24
        br 1 (;@1;)
      end
      i32.const 1050060
      call $_RNvNtCs8dNdkSoVEg0_4core9panicking30panic_null_pointer_dereference
      unreachable
    end
    local.get 0
    local.get 2
    i64.load offset=24 align=4
    i64.store align=4
    local.get 2
    i32.const 96
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvMsn_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_8Document14create_element (;64;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=4
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=36
    local.get 3
    local.get 2
    i32.store offset=40
    local.get 3
    local.get 1
    i32.store offset=32
    local.get 3
    local.get 1
    i32.store offset=16
    local.get 1
    local.get 2
    call $_RNvMNtCs8dNdkSoVEg0_4core3stre3lenCsaJolGoatC1G_7todomvc
    local.set 4
    local.get 3
    local.get 4
    i32.store offset=20
    local.get 0
    call $_RNvMNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB2_8Document6handle
    local.set 5
    local.get 3
    local.get 1
    i32.store offset=44
    local.get 5
    local.get 1
    local.get 4
    call $_RNvNvMsn_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_8Document14create_element11wit_import1
    local.set 6
    local.get 3
    local.get 6
    i32.store offset=24
    local.get 3
    local.get 6
    call $_RNvMs4_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_7Element11from_handle
    i32.store offset=28
    local.get 3
    local.get 3
    i32.load offset=28
    i32.store
    local.get 3
    i32.load
    local.set 7
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 7
    return
  )
  (func $_RNvMso_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_8Document16create_text_node (;65;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=4
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=36
    local.get 3
    local.get 2
    i32.store offset=40
    local.get 3
    local.get 1
    i32.store offset=32
    local.get 3
    local.get 1
    i32.store offset=16
    local.get 1
    local.get 2
    call $_RNvMNtCs8dNdkSoVEg0_4core3stre3lenCsaJolGoatC1G_7todomvc
    local.set 4
    local.get 3
    local.get 4
    i32.store offset=20
    local.get 0
    call $_RNvMNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB2_8Document6handle
    local.set 5
    local.get 3
    local.get 1
    i32.store offset=44
    local.get 5
    local.get 1
    local.get 4
    call $_RNvNvMso_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_8Document16create_text_node11wit_import1
    local.set 6
    local.get 3
    local.get 6
    i32.store offset=24
    local.get 3
    local.get 6
    call $_RNvMsa_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_4Text11from_handle
    i32.store offset=28
    local.get 3
    local.get 3
    i32.load offset=28
    i32.store
    local.get 3
    i32.load
    local.set 7
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 7
    return
  )
  (func $_RNvMsw_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_7Element12append_child (;66;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=16
    local.get 2
    local.get 1
    i32.store offset=20
    local.get 0
    call $_RNvMs4_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_7Element6handle
    local.get 1
    call $_RNvMs8_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_4Node6handle
    call $_RNvNvMsw_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_7Element12append_child11wit_import0
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=24
    local.get 2
    local.get 3
    call $_RNvMs8_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_4Node11from_handle
    i32.store offset=28
    local.get 2
    local.get 2
    i32.load offset=28
    i32.store offset=12
    local.get 2
    i32.load offset=12
    local.set 4
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 4
    return
  )
  (func $_RNvNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web10get_window (;67;) (type 7) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 0
    local.get 0
    global.set $__stack_pointer
    call $_RNvNvNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web10get_window11wit_import0
    local.set 1
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 1
    call $_RNvMsk_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_6Window11from_handle
    i32.store offset=12
    local.get 0
    local.get 0
    i32.load offset=12
    i32.store offset=4
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web12text_as_node (;68;) (type 6) (param i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 0
    call $_RNvMsa_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_4Text6handle
    call $_RNvNvNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web12text_as_node11wit_import0
    local.set 2
    local.get 1
    local.get 2
    i32.store offset=8
    local.get 1
    local.get 2
    call $_RNvMs8_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_4Node11from_handle
    i32.store offset=12
    local.get 1
    local.get 1
    i32.load offset=12
    i32.store
    local.get 1
    i32.load
    local.set 3
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3
    return
  )
  (func $_RNvNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web15element_as_node (;69;) (type 6) (param i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 0
    call $_RNvMs4_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_7Element6handle
    call $_RNvNvNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web15element_as_node11wit_import0
    local.set 2
    local.get 1
    local.get 2
    i32.store offset=8
    local.get 1
    local.get 2
    call $_RNvMs8_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_4Node11from_handle
    i32.store offset=12
    local.get 1
    local.get 1
    i32.load offset=12
    i32.store
    local.get 1
    i32.load
    local.set 3
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3
    return
  )
  (func $_RNvXs5_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_7ElementNtNtBb_3__rt12WasmResource4dropBd_ (;70;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvNvXs5_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_7ElementNtNtBd_3__rt12WasmResource4drop4drop
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs7_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_11HtmlElementNtNtBb_3__rt12WasmResource4dropBd_ (;71;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvNvXs7_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_11HtmlElementNtNtBd_3__rt12WasmResource4drop4drop
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs9_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_4NodeNtNtBb_3__rt12WasmResource4dropBd_ (;72;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvNvXs9_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_4NodeNtNtBd_3__rt12WasmResource4drop4drop
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB4_8DocumentNtNtBa_3__rt12WasmResource4dropBc_ (;73;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvNvXs_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB6_8DocumentNtNtBc_3__rt12WasmResource4drop4drop
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXsb_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_4TextNtNtBb_3__rt12WasmResource4dropBd_ (;74;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvNvXsb_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_4TextNtNtBd_3__rt12WasmResource4drop4drop
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXsd_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_11TrustedHtmlNtNtBb_3__rt12WasmResource4dropBd_ (;75;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvNvXsd_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_11TrustedHtmlNtNtBd_3__rt12WasmResource4drop4drop
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXsf_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_13TrustedScriptNtNtBb_3__rt12WasmResource4dropBd_ (;76;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvNvXsf_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_13TrustedScriptNtNtBd_3__rt12WasmResource4drop4drop
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXsh_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_16TrustedScriptUrlNtNtBb_3__rt12WasmResource4dropBd_ (;77;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvNvXsh_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_16TrustedScriptUrlNtNtBd_3__rt12WasmResource4drop4drop
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXsl_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_6WindowNtNtBb_3__rt12WasmResource4dropBd_ (;78;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvNvXsl_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB7_6WindowNtNtBd_3__rt12WasmResource4drop4drop
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvNvNtCs8dNdkSoVEg0_4core9ub_checks23maybe_is_nonoverlapping7runtimeCsaJolGoatC1G_7todomvc (;79;) (type 8) (param i32 i32 i32 i32) (result i32)
    (local i32 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=16
    local.get 4
    local.get 2
    i32.store offset=20
    local.get 4
    local.get 3
    i32.store offset=24
    local.get 4
    local.get 0
    i32.store offset=28
    local.get 4
    local.get 1
    i32.store offset=32
    local.get 3
    i64.extend_i32_u
    local.get 2
    i64.extend_i32_u
    i64.mul
    local.set 5
    local.get 5
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    i32.const 0
    i32.ne
    local.set 6
    local.get 5
    i32.wrap_i64
    local.set 7
    local.get 4
    local.get 6
    i32.const 1
    i32.and
    i32.store8 offset=39
    local.get 4
    local.get 7
    i32.store offset=40
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 6
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 4
            local.get 7
            i32.store offset=4
            local.get 4
            i32.const 1
            i32.store
            local.get 4
            i32.load offset=4
            local.set 8
            local.get 4
            local.get 8
            i32.store offset=44
            local.get 0
            local.get 1
            i32.lt_u
            i32.const 1
            i32.and
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          i32.const 1050076
          i32.const 61
          call $_RNvNtCs8dNdkSoVEg0_4core9panicking14panic_nounwind
          unreachable
        end
        local.get 4
        local.get 0
        local.get 1
        i32.sub
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 4
      local.get 1
      local.get 0
      i32.sub
      i32.store offset=8
    end
    local.get 4
    i32.load offset=8
    local.get 8
    i32.ge_u
    i32.const 1
    i32.and
    local.set 9
    local.get 4
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 9
    return
  )
  (func $_RNvNtNtCsaJolGoatC1G_7todomvc8bindings3__rt14run_ctors_once (;80;) (type 9)
    call $_RNvCsg6JWgYfQRHW_14wit_bindgen_rt14run_ctors_once
    return
  )
  (func $_RINvNtNtCs8dNdkSoVEg0_4core4sync6atomic11atomic_loadmECsaJolGoatC1G_7todomvc (;81;) (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store8 offset=15
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 1
                i32.const 255
                i32.and
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;) 3 (;@3;) 4 (;@2;) 0 (;@6;)
              end
              local.get 2
              local.get 0
              i32.load
              i32.store offset=4
              br 4 (;@1;)
            end
            local.get 2
            i32.const 1050137
            i32.store offset=16
            local.get 2
            i32.const 40
            i32.store offset=20
            i32.const 1050137
            i32.const 81
            i32.const 1050292
            call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
            unreachable
          end
          local.get 2
          local.get 0
          i32.load
          i32.store offset=4
          br 2 (;@1;)
        end
        local.get 2
        i32.const 1050308
        i32.store offset=24
        local.get 2
        i32.const 49
        i32.store offset=28
        i32.const 1050308
        i32.const 99
        i32.const 1050360
        call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
        unreachable
      end
      local.get 2
      local.get 0
      i32.load
      i32.store offset=4
    end
    local.get 2
    i32.load offset=4
    local.set 3
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 3
    return
    unreachable
  )
  (func $_RNvNvNtCs8dNdkSoVEg0_4core3ptr19copy_nonoverlapping18precondition_checkCsaJolGoatC1G_7todomvc (;82;) (type 5) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 6
    local.get 0
    i32.store offset=12
    local.get 6
    local.get 1
    i32.store offset=16
    local.get 6
    local.get 2
    i32.store offset=20
    local.get 6
    local.get 3
    i32.store offset=24
    local.get 6
    local.get 4
    i32.store offset=28
    block ;; label = @1
      block ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        local.get 6
        i32.const 1
        i32.store8 offset=11
        br 1 (;@1;)
      end
      local.get 6
      local.get 2
      i32.const 0
      i32.eq
      i32.const 1
      i32.and
      i32.store8 offset=11
    end
    local.get 6
    i32.load8_u offset=11
    local.set 7
    local.get 6
    local.get 7
    i32.const 1
    i32.and
    i32.store8 offset=35
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 0
            local.get 3
            call $_RNvMNtNtCs8dNdkSoVEg0_4core3ptr9const_ptrPu13is_aligned_toCskFxZBb8Pa6P_8bitflags
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          block ;; label = @4
            block ;; label = @5
              local.get 7
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 0
              i32.const 0
              i32.eq
              i32.const -1
              i32.xor
              i32.const 1
              i32.and
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
          end
          local.get 6
          local.get 1
          i32.store offset=36
          block ;; label = @4
            block ;; label = @5
              local.get 1
              local.get 3
              call $_RNvMNtNtCs8dNdkSoVEg0_4core3ptr9const_ptrPu13is_aligned_toCskFxZBb8Pa6P_8bitflags
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              br 1 (;@4;)
            end
            block ;; label = @5
              block ;; label = @6
                local.get 6
                i32.load8_u offset=11
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                local.get 1
                i32.const 0
                i32.eq
                i32.const -1
                i32.xor
                i32.const 1
                i32.and
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
            end
            local.get 0
            local.get 1
            local.get 2
            local.get 4
            call $_RNvNvNtCs8dNdkSoVEg0_4core9ub_checks23maybe_is_nonoverlapping7runtimeCsaJolGoatC1G_7todomvc
            i32.const 1
            i32.and
            i32.eqz
            br_if 3 (;@1;)
            local.get 6
            i32.const 48
            i32.add
            global.set $__stack_pointer
            return
          end
          br 1 (;@2;)
        end
      end
    end
    local.get 6
    i32.const 1050376
    i32.store offset=40
    local.get 6
    i32.const 283
    i32.store offset=44
    i32.const 1050376
    i32.const 567
    i32.const 0
    i32.const 1
    i32.and
    local.get 5
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking18panic_nounwind_fmt
    unreachable
  )
  (func $_RNCINvXsK_NtNtNtCs8dNdkSoVEg0_4core4iter6traits5accumjNtB8_3Sum3sumINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtCsaJolGoatC1G_7todomvc4TodoENCINvNvXs1_NtB18_6filterINtB2z_6FilterppENtNtBa_8iterator8Iterator5count8to_usizeRB1U_NCNvXB1W_NtB1W_9ComponentNtNtB1W_8bindings5Guest3run0E0EE0B1W_ (;83;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=4
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 1
    local.get 2
    i32.add
    local.set 4
    block ;; label = @1
      local.get 4
      local.get 1
      i32.lt_u
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 4
      return
    end
    i32.const 1050780
    call $_RNvNtNtCs8dNdkSoVEg0_4core9panicking11panic_const24panic_const_add_overflow
    unreachable
  )
  (func $_RNvMs4_NtCs8dNdkSoVEg0_4core3fmtNtB5_9Arguments8from_strCsaJolGoatC1G_7todomvc (;84;) (type 10) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 3
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=12
    i32.const 1
    local.set 4
    local.get 0
    local.get 4
    local.get 2
    local.get 4
    i32.shl
    i32.or
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    return
  )
  (func $_RNvNvNtCs8dNdkSoVEg0_4core4hint16assert_unchecked18precondition_checkCsaJolGoatC1G_7todomvc (;85;) (type 1) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store8 offset=7
    block ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      local.get 2
      i32.const 1050796
      i32.store offset=8
      local.get 2
      i32.const 221
      i32.store offset=12
      i32.const 1050796
      i32.const 443
      i32.const 0
      i32.const 1
      i32.and
      local.get 1
      call $_RNvNtCs8dNdkSoVEg0_4core9panicking18panic_nounwind_fmt
      unreachable
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvCsaJolGoatC1G_7todomvc11append_text (;86;) (type 2) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=20
    local.get 4
    local.get 1
    i32.store offset=24
    local.get 4
    local.get 2
    i32.store offset=28
    local.get 4
    local.get 3
    i32.store offset=32
    local.get 4
    local.get 0
    local.get 2
    local.get 3
    call $_RNvMso_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_8Document16create_text_node
    i32.store offset=36
    local.get 4
    local.get 4
    i32.load offset=36
    i32.store offset=8
    local.get 4
    local.get 4
    i32.const 8
    i32.add
    call $_RNvNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web12text_as_node
    i32.store offset=40
    local.get 4
    local.get 4
    i32.load offset=40
    i32.store offset=16
    local.get 4
    local.get 1
    local.get 4
    i32.const 16
    i32.add
    call $_RNvMsw_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_7Element12append_child
    i32.store offset=44
    local.get 4
    local.get 4
    i32.load offset=44
    i32.store offset=12
    local.get 4
    i32.const 12
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web4NodeEBL_
    local.get 4
    i32.const 16
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web4NodeEBL_
    local.get 4
    i32.const 8
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web4TextEBL_
    local.get 4
    i32.const 48
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvCsaJolGoatC1G_7todomvc12append_child (;87;) (type 1) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=16
    local.get 2
    local.get 1
    i32.store offset=20
    local.get 2
    local.get 1
    call $_RNvNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web15element_as_node
    i32.store offset=24
    local.get 2
    local.get 2
    i32.load offset=24
    i32.store offset=12
    local.get 2
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    call $_RNvMsw_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_7Element12append_child
    i32.store offset=28
    local.get 2
    local.get 2
    i32.load offset=28
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web4NodeEBL_
    local.get 2
    i32.const 12
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web4NodeEBL_
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvCsaJolGoatC1G_7todomvc12build_filter (;88;) (type 12) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 6
    local.get 0
    i32.store offset=16
    local.get 6
    local.get 1
    i32.store offset=20
    local.get 6
    local.get 2
    i32.store offset=24
    local.get 6
    local.get 3
    i32.store offset=28
    local.get 6
    local.get 4
    i32.store offset=32
    local.get 6
    local.get 5
    i32.store8 offset=39
    local.get 6
    local.get 0
    i32.const 1051017
    i32.const 2
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=40
    local.get 6
    local.get 6
    i32.load offset=40
    i32.store offset=8
    local.get 6
    local.get 0
    i32.const 1051019
    i32.const 1
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=44
    local.get 6
    local.get 6
    i32.load offset=44
    i32.store offset=12
    local.get 6
    i32.const 12
    i32.add
    i32.const 1051020
    i32.const 4
    local.get 3
    local.get 4
    call $_RNvCsaJolGoatC1G_7todomvc8set_attr
    block ;; label = @1
      local.get 5
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      i32.const 12
      i32.add
      i32.const 1051024
      i32.const 8
      call $_RNvCsaJolGoatC1G_7todomvc9set_class
    end
    local.get 0
    local.get 6
    i32.const 12
    i32.add
    local.get 1
    local.get 2
    call $_RNvCsaJolGoatC1G_7todomvc11append_text
    local.get 6
    i32.const 8
    i32.add
    local.get 6
    i32.const 12
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    local.get 6
    local.get 6
    i32.load offset=8
    i32.store offset=4
    local.get 6
    i32.const 12
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 6
    i32.load offset=4
    local.set 7
    local.get 6
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 7
    return
  )
  (func $_RNvCsaJolGoatC1G_7todomvc6create (;89;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=16
    local.get 3
    local.get 1
    i32.store offset=20
    local.get 3
    local.get 2
    i32.store offset=24
    local.get 3
    local.get 0
    local.get 1
    local.get 2
    call $_RNvMsn_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_8Document14create_element
    i32.store offset=28
    local.get 3
    local.get 3
    i32.load offset=28
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 4
    return
  )
  (func $_RNvCsaJolGoatC1G_7todomvc8set_attr (;90;) (type 11) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=28
    local.get 5
    local.get 1
    i32.store offset=32
    local.get 5
    local.get 2
    i32.store offset=36
    local.get 5
    local.get 3
    i32.store offset=40
    local.get 5
    local.get 4
    i32.store offset=44
    local.get 5
    i32.const 16
    i32.add
    local.get 3
    local.get 4
    call $_RNvXsB_NtCs51AVrxNfmOa_5alloc6stringeNtB5_8ToString9to_stringCsaJolGoatC1G_7todomvc
    local.get 5
    local.get 5
    i32.load offset=24
    i32.store offset=8
    local.get 5
    local.get 5
    i64.load offset=16 align=4
    i64.store
    local.get 0
    local.get 1
    local.get 2
    local.get 5
    call $_RNvMsB_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_7Element13set_attribute
    local.get 5
    i32.const 48
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvCsaJolGoatC1G_7todomvc9set_class (;91;) (type 10) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=36
    local.get 3
    local.get 1
    i32.store offset=40
    local.get 3
    local.get 2
    i32.store offset=44
    local.get 3
    i32.const 24
    i32.add
    local.get 1
    local.get 2
    call $_RNvXsB_NtCs51AVrxNfmOa_5alloc6stringeNtB5_8ToString9to_stringCsaJolGoatC1G_7todomvc
    local.get 3
    local.get 3
    i32.load offset=32
    i32.store offset=16
    local.get 3
    local.get 3
    i64.load offset=24 align=4
    i64.store offset=8
    local.get 0
    i32.const 1051096
    i32.const 5
    local.get 3
    i32.const 8
    i32.add
    call $_RNvMsB_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_7Element13set_attribute
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvCsaJolGoatC1G_7todomvc15build_todo_item (;92;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=36
    local.get 2
    local.get 1
    i32.store offset=40
    local.get 2
    local.get 0
    i32.const 1051017
    i32.const 2
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=44
    local.get 2
    local.get 2
    i32.load offset=44
    i32.store offset=16
    block ;; label = @1
      local.get 1
      i32.load8_u offset=8
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 16
      i32.add
      i32.const 1051032
      i32.const 9
      call $_RNvCsaJolGoatC1G_7todomvc9set_class
    end
    local.get 2
    local.get 0
    i32.const 1051041
    i32.const 3
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=48
    local.get 2
    local.get 2
    i32.load offset=48
    i32.store offset=20
    i32.const 1051044
    local.set 3
    i32.const 4
    local.set 4
    local.get 2
    i32.const 20
    i32.add
    local.get 3
    local.get 4
    call $_RNvCsaJolGoatC1G_7todomvc9set_class
    local.get 2
    i32.const 16
    i32.add
    local.get 2
    i32.const 20
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    local.get 2
    local.get 0
    i32.const 1051048
    i32.const 5
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=52
    local.get 2
    local.get 2
    i32.load offset=52
    i32.store offset=24
    i32.const 1051053
    local.set 5
    i32.const 6
    local.set 6
    local.get 2
    i32.const 24
    i32.add
    local.get 5
    local.get 6
    call $_RNvCsaJolGoatC1G_7todomvc9set_class
    i32.const 1051063
    local.set 7
    i32.const 1051059
    local.set 8
    i32.const 8
    local.set 9
    local.get 2
    i32.const 24
    i32.add
    local.get 8
    local.get 4
    local.get 7
    local.get 9
    call $_RNvCsaJolGoatC1G_7todomvc8set_attr
    block ;; label = @1
      local.get 1
      i32.load8_u offset=8
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 24
      i32.add
      local.set 10
      i32.const 1051071
      local.set 11
      i32.const 7
      local.set 12
      local.get 10
      local.get 11
      local.get 12
      local.get 11
      local.get 12
      call $_RNvCsaJolGoatC1G_7todomvc8set_attr
    end
    local.get 2
    i32.const 20
    i32.add
    local.get 2
    i32.const 24
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    local.get 2
    local.get 0
    i32.const 1051078
    i32.const 5
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=56
    local.get 2
    local.get 2
    i32.load offset=56
    i32.store offset=28
    local.get 1
    i32.load
    local.set 13
    local.get 1
    i32.load offset=4
    local.set 14
    local.get 0
    local.get 2
    i32.const 28
    i32.add
    local.get 13
    local.get 14
    call $_RNvCsaJolGoatC1G_7todomvc11append_text
    local.get 2
    i32.const 20
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    local.get 2
    local.get 0
    i32.const 1051083
    i32.const 6
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=60
    local.get 2
    local.get 2
    i32.load offset=60
    i32.store offset=32
    local.get 2
    i32.const 32
    i32.add
    i32.const 1051089
    i32.const 7
    call $_RNvCsaJolGoatC1G_7todomvc9set_class
    local.get 2
    i32.const 20
    i32.add
    local.get 2
    i32.const 32
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    local.get 2
    local.get 2
    i32.load offset=16
    i32.store offset=12
    local.get 2
    i32.const 32
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 2
    i32.const 28
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 2
    i32.const 24
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 2
    i32.const 20
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 2
    i32.load offset=12
    local.set 15
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 15
    return
  )
  (func $_RNvXCsaJolGoatC1G_7todomvcNtB2_9ComponentNtNtB2_8bindings5Guest3run (;93;) (type 9)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 256
    i32.sub
    local.set 0
    local.get 0
    global.set $__stack_pointer
    local.get 0
    call $_RNvNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web10get_window
    i32.store offset=168
    local.get 0
    local.get 0
    i32.load offset=168
    i32.store offset=40
    local.get 0
    local.get 0
    i32.const 40
    i32.add
    call $_RNvMsI_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_6Window8document
    i32.store offset=172
    local.get 0
    local.get 0
    i32.load offset=172
    i32.store offset=36
    local.get 0
    i32.const 40
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web6WindowEBL_
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.const 1051101
    i32.const 7
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=176
    local.get 0
    local.get 0
    i32.load offset=176
    i32.store offset=44
    local.get 0
    i32.const 44
    i32.add
    i32.const 1051108
    i32.const 7
    call $_RNvCsaJolGoatC1G_7todomvc9set_class
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.const 1051115
    i32.const 6
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=180
    local.get 0
    local.get 0
    i32.load offset=180
    i32.store offset=48
    local.get 0
    i32.const 48
    i32.add
    i32.const 1051115
    i32.const 6
    call $_RNvCsaJolGoatC1G_7todomvc9set_class
    local.get 0
    i32.const 44
    i32.add
    local.get 0
    i32.const 48
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.const 1051121
    i32.const 2
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=184
    local.get 0
    local.get 0
    i32.load offset=184
    i32.store offset=52
    local.get 0
    i32.const 36
    i32.add
    local.get 0
    i32.const 52
    i32.add
    i32.const 1051123
    i32.const 5
    call $_RNvCsaJolGoatC1G_7todomvc11append_text
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 52
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.const 1051048
    i32.const 5
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=188
    local.get 0
    local.get 0
    i32.load offset=188
    i32.store offset=56
    local.get 0
    i32.const 56
    i32.add
    i32.const 1051128
    i32.const 8
    call $_RNvCsaJolGoatC1G_7todomvc9set_class
    local.get 0
    i32.const 56
    i32.add
    i32.const 1051136
    i32.const 11
    i32.const 1051147
    i32.const 22
    call $_RNvCsaJolGoatC1G_7todomvc8set_attr
    local.get 0
    i32.const 56
    i32.add
    local.set 1
    i32.const 1051169
    local.set 2
    i32.const 9
    local.set 3
    local.get 1
    local.get 2
    local.get 3
    local.get 2
    local.get 3
    call $_RNvCsaJolGoatC1G_7todomvc8set_attr
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 56
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.const 1051101
    i32.const 7
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=192
    local.get 0
    local.get 0
    i32.load offset=192
    i32.store offset=60
    local.get 0
    i32.const 60
    i32.add
    i32.const 1051178
    i32.const 4
    call $_RNvCsaJolGoatC1G_7todomvc9set_class
    local.get 0
    i32.const 44
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.const 1051048
    i32.const 5
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=196
    local.get 0
    local.get 0
    i32.load offset=196
    i32.store offset=64
    local.get 0
    i32.const 64
    i32.add
    i32.const 1051182
    i32.const 10
    call $_RNvCsaJolGoatC1G_7todomvc9set_class
    local.get 0
    i32.const 64
    i32.add
    i32.const 1051192
    i32.const 2
    i32.const 1051182
    i32.const 10
    call $_RNvCsaJolGoatC1G_7todomvc8set_attr
    local.get 0
    i32.const 64
    i32.add
    i32.const 1051059
    i32.const 4
    i32.const 1051063
    i32.const 8
    call $_RNvCsaJolGoatC1G_7todomvc8set_attr
    local.get 0
    i32.const 60
    i32.add
    local.get 0
    i32.const 64
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.const 1051078
    i32.const 5
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=200
    local.get 0
    local.get 0
    i32.load offset=200
    i32.store offset=68
    local.get 0
    i32.const 68
    i32.add
    i32.const 1051194
    i32.const 3
    i32.const 1051182
    i32.const 10
    call $_RNvCsaJolGoatC1G_7todomvc8set_attr
    local.get 0
    i32.const 36
    i32.add
    local.get 0
    i32.const 68
    i32.add
    i32.const 1051197
    i32.const 20
    call $_RNvCsaJolGoatC1G_7todomvc11append_text
    local.get 0
    i32.const 60
    i32.add
    local.get 0
    i32.const 68
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.const 1051217
    i32.const 2
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=204
    local.get 0
    local.get 0
    i32.load offset=204
    i32.store offset=72
    local.get 0
    i32.const 72
    i32.add
    i32.const 1051219
    i32.const 9
    call $_RNvCsaJolGoatC1G_7todomvc9set_class
    local.get 0
    i32.const 60
    i32.add
    local.get 0
    i32.const 72
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    i32.const 1051260
    local.set 4
    i32.const 2
    local.set 5
    local.get 0
    i32.const 8
    i32.add
    local.get 4
    local.get 5
    call $_RNvMNtCs8dNdkSoVEg0_4core5sliceSNtCsaJolGoatC1G_7todomvc4Todo4iterBw_
    local.get 0
    i32.load offset=12
    local.set 6
    local.get 0
    i32.load offset=8
    local.set 7
    local.get 0
    i32.const 16
    i32.add
    local.get 7
    local.get 6
    call $_RINvYINtNtNtCs8dNdkSoVEg0_4core5slice4iter4IterNtCsaJolGoatC1G_7todomvc4TodoENtNtNtNtBa_4iter6traits8iterator8Iterator6filterNCNvXBL_NtBL_9ComponentNtNtBL_8bindings5Guest3run0EBL_
    local.get 0
    i32.load offset=20
    local.set 8
    local.get 0
    local.get 0
    i32.load offset=16
    local.get 8
    call $_RNvXs1_NtNtNtCs8dNdkSoVEg0_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtCsaJolGoatC1G_7todomvc4TodoENCNvXB1u_NtB1u_9ComponentNtNtB1u_8bindings5Guest3run0ENtNtNtB9_6traits8iterator8Iterator5countB1u_
    i32.store offset=76
    i32.const 1051260
    local.set 9
    i32.const 2
    local.set 10
    local.get 0
    i32.const 24
    i32.add
    local.get 9
    local.get 10
    call $_RNvXs_NtNtCs8dNdkSoVEg0_4core5slice4iterRSNtCsaJolGoatC1G_7todomvc4TodoNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterBG_
    local.get 0
    i32.load offset=28
    local.set 11
    local.get 0
    local.get 0
    i32.load offset=24
    i32.store offset=80
    local.get 0
    local.get 11
    i32.store offset=84
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 80
        i32.add
        call $_RNvXs2J_NtNtCs8dNdkSoVEg0_4core5slice4iterINtB6_4IterNtCsaJolGoatC1G_7todomvc4TodoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBR_
        i32.store offset=88
        local.get 0
        i32.load offset=88
        local.set 12
        i32.const 0
        local.set 13
        i32.const 1
        local.get 13
        local.get 12
        select
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=88
        local.set 14
        local.get 0
        local.get 14
        i32.store offset=248
        local.get 0
        local.get 0
        i32.const 36
        i32.add
        local.get 14
        call $_RNvCsaJolGoatC1G_7todomvc15build_todo_item
        i32.store offset=252
        local.get 0
        local.get 0
        i32.load offset=252
        i32.store offset=92
        local.get 0
        i32.const 72
        i32.add
        local.get 0
        i32.const 92
        i32.add
        call $_RNvCsaJolGoatC1G_7todomvc12append_child
        local.get 0
        i32.const 92
        i32.add
        call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.const 1051284
    i32.const 6
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=208
    local.get 0
    local.get 0
    i32.load offset=208
    i32.store offset=96
    local.get 0
    i32.const 96
    i32.add
    i32.const 1051284
    i32.const 6
    call $_RNvCsaJolGoatC1G_7todomvc9set_class
    local.get 0
    i32.const 44
    i32.add
    local.get 0
    i32.const 96
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.const 1051290
    i32.const 4
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=212
    local.get 0
    local.get 0
    i32.load offset=212
    i32.store offset=100
    local.get 0
    i32.const 100
    i32.add
    i32.const 1051294
    i32.const 10
    call $_RNvCsaJolGoatC1G_7todomvc9set_class
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.const 1051304
    i32.const 6
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=216
    local.get 0
    local.get 0
    i32.load offset=216
    i32.store offset=104
    local.get 0
    i32.const 108
    i32.add
    local.get 0
    i32.const 76
    i32.add
    call $_RNvXsB_NtCs51AVrxNfmOa_5alloc6stringjNtB5_8ToString9to_stringCsaJolGoatC1G_7todomvc
    local.get 0
    local.get 0
    i32.const 108
    i32.add
    call $_RNvXsx_NtCs51AVrxNfmOa_5alloc6stringNtB5_6StringNtNtNtCs8dNdkSoVEg0_4core3ops5deref5Deref5derefCsaJolGoatC1G_7todomvc
    local.get 0
    i32.load offset=4
    local.set 15
    local.get 0
    i32.load
    local.set 16
    local.get 0
    i32.const 36
    i32.add
    local.get 0
    i32.const 104
    i32.add
    local.get 16
    local.get 15
    call $_RNvCsaJolGoatC1G_7todomvc11append_text
    local.get 0
    i32.const 108
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtCs51AVrxNfmOa_5alloc6string6StringECsaJolGoatC1G_7todomvc
    local.get 0
    i32.const 100
    i32.add
    local.get 0
    i32.const 104
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=76
        i32.const 1
        i32.eq
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 0
        i32.const 1051310
        i32.store offset=120
        local.get 0
        i32.const 11
        i32.store offset=124
        br 1 (;@1;)
      end
      local.get 0
      i32.const 1051321
      i32.store offset=120
      local.get 0
      i32.const 10
      i32.store offset=124
    end
    local.get 0
    i32.load offset=120
    local.set 17
    local.get 0
    i32.load offset=124
    local.set 18
    local.get 0
    i32.const 36
    i32.add
    local.get 0
    i32.const 100
    i32.add
    local.get 17
    local.get 18
    call $_RNvCsaJolGoatC1G_7todomvc11append_text
    local.get 0
    i32.const 96
    i32.add
    local.get 0
    i32.const 100
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.const 1051217
    i32.const 2
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=220
    local.get 0
    local.get 0
    i32.load offset=220
    i32.store offset=128
    local.get 0
    i32.const 128
    i32.add
    i32.const 1051331
    i32.const 7
    call $_RNvCsaJolGoatC1G_7todomvc9set_class
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.const 1051338
    i32.const 3
    i32.const 1051341
    i32.const 2
    i32.const 1
    i32.const 1
    i32.and
    call $_RNvCsaJolGoatC1G_7todomvc12build_filter
    i32.store offset=224
    local.get 0
    local.get 0
    i32.load offset=224
    i32.store offset=132
    local.get 0
    i32.const 128
    i32.add
    local.get 0
    i32.const 132
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    local.get 0
    i32.const 132
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.const 1051343
    i32.const 6
    i32.const 1051349
    i32.const 8
    i32.const 0
    i32.const 1
    i32.and
    call $_RNvCsaJolGoatC1G_7todomvc12build_filter
    i32.store offset=228
    local.get 0
    local.get 0
    i32.load offset=228
    i32.store offset=136
    local.get 0
    i32.const 128
    i32.add
    local.get 0
    i32.const 136
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    local.get 0
    i32.const 136
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.const 1051357
    i32.const 9
    i32.const 1051366
    i32.const 11
    i32.const 0
    i32.const 1
    i32.and
    call $_RNvCsaJolGoatC1G_7todomvc12build_filter
    i32.store offset=232
    local.get 0
    local.get 0
    i32.load offset=232
    i32.store offset=140
    local.get 0
    i32.const 128
    i32.add
    local.get 0
    i32.const 140
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    local.get 0
    i32.const 140
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 0
    i32.const 96
    i32.add
    local.get 0
    i32.const 128
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.const 1051083
    i32.const 6
    call $_RNvCsaJolGoatC1G_7todomvc6create
    i32.store offset=236
    local.get 0
    local.get 0
    i32.load offset=236
    i32.store offset=144
    local.get 0
    i32.const 144
    i32.add
    i32.const 1051377
    i32.const 15
    call $_RNvCsaJolGoatC1G_7todomvc9set_class
    local.get 0
    i32.const 36
    i32.add
    local.get 0
    i32.const 144
    i32.add
    i32.const 1051392
    i32.const 15
    call $_RNvCsaJolGoatC1G_7todomvc11append_text
    local.get 0
    i32.const 96
    i32.add
    local.get 0
    i32.const 144
    i32.add
    call $_RNvCsaJolGoatC1G_7todomvc12append_child
    local.get 0
    i32.const 148
    i32.add
    local.get 0
    i32.const 36
    i32.add
    call $_RNvMsm_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_8Document4body
    block ;; label = @1
      local.get 0
      i32.load offset=148
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i32.const 148
      i32.add
      i32.const 4
      i32.add
      i32.load
      i32.store offset=156
      local.get 0
      local.get 0
      i32.const 44
      i32.add
      call $_RNvNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web15element_as_node
      i32.store offset=240
      local.get 0
      local.get 0
      i32.load offset=240
      i32.store offset=164
      local.get 0
      local.get 0
      i32.const 156
      i32.add
      local.get 0
      i32.const 164
      i32.add
      call $_RNvMsD_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_11HtmlElement12append_child
      i32.store offset=244
      local.get 0
      local.get 0
      i32.load offset=244
      i32.store offset=160
      local.get 0
      i32.const 160
      i32.add
      call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web4NodeEBL_
      local.get 0
      i32.const 164
      i32.add
      call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web4NodeEBL_
      local.get 0
      i32.const 156
      i32.add
      call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web11HtmlElementEBL_
    end
    local.get 0
    i32.const 144
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 0
    i32.const 128
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 0
    i32.const 104
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 0
    i32.const 100
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 0
    i32.const 96
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 0
    i32.const 72
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 0
    i32.const 68
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 0
    i32.const 64
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 0
    i32.const 60
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 0
    i32.const 56
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 0
    i32.const 52
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 0
    i32.const 48
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 0
    i32.const 44
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_
    local.get 0
    i32.const 36
    i32.add
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web8DocumentEBL_
    local.get 0
    i32.const 256
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $run (;94;) (type 9)
    call $_RINvNtCsaJolGoatC1G_7todomvc8bindings16__export_run_cabiNtB4_9ComponentEB4_
    return
  )
  (func $_RNvNvMNtNtCs8dNdkSoVEg0_4core3ptr9const_ptrPp20offset_from_unsigned18precondition_checkCsaJolGoatC1G_7todomvc (;95;) (type 10) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.store offset=4
    block ;; label = @1
      local.get 0
      local.get 1
      i32.ge_u
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 3
      i32.const 1051407
      i32.store offset=8
      local.get 3
      i32.const 201
      i32.store offset=12
      i32.const 1051407
      i32.const 403
      i32.const 0
      i32.const 1
      i32.and
      local.get 2
      call $_RNvNtCs8dNdkSoVEg0_4core9panicking18panic_nounwind_fmt
      unreachable
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvNvMs1_NtNtCs8dNdkSoVEg0_4core3ptr8non_nullINtB7_7NonNullpE13new_unchecked18precondition_checkCsaJolGoatC1G_7todomvc (;96;) (type 1) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=4
    block ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      local.get 2
      i32.const 1051608
      i32.store offset=8
      local.get 2
      i32.const 210
      i32.store offset=12
      i32.const 1051608
      i32.const 421
      i32.const 0
      i32.const 1
      i32.and
      local.get 1
      call $_RNvNtCs8dNdkSoVEg0_4core9panicking18panic_nounwind_fmt
      unreachable
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvNvMs9_NtCs8dNdkSoVEg0_4core3numj13unchecked_add18precondition_checkCsaJolGoatC1G_7todomvc (;97;) (type 10) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.store offset=4
    block ;; label = @1
      local.get 0
      local.get 1
      i32.add
      local.get 0
      i32.lt_u
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 3
    i32.const 1051818
    i32.store offset=8
    local.get 3
    i32.const 186
    i32.store offset=12
    i32.const 1051818
    i32.const 373
    i32.const 0
    i32.const 1
    i32.and
    local.get 2
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking18panic_nounwind_fmt
    unreachable
  )
  (func $_RNvNvMs9_NtCs8dNdkSoVEg0_4core3numj13unchecked_mul18precondition_checkCsaJolGoatC1G_7todomvc (;98;) (type 10) (param i32 i32 i32)
    (local i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 1
    i64.extend_i32_u
    local.get 0
    i64.extend_i32_u
    i64.mul
    local.set 4
    local.get 4
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    i32.const 0
    i32.ne
    local.set 5
    local.get 4
    i32.wrap_i64
    drop
    block ;; label = @1
      local.get 5
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 3
    i32.const 1052004
    i32.store offset=8
    local.get 3
    i32.const 186
    i32.store offset=12
    i32.const 1052004
    i32.const 373
    i32.const 0
    i32.const 1
    i32.and
    local.get 2
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking18panic_nounwind_fmt
    unreachable
  )
  (func $_RNCNvXCsaJolGoatC1G_7todomvcNtB4_9ComponentNtNtB4_8bindings5Guest3run0B4_ (;99;) (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 2
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 1
    i32.load
    i32.load8_u offset=8
    i32.const -1
    i32.xor
    i32.const 1
    i32.and
    return
  )
  (func $_RNvMNtCs8dNdkSoVEg0_4core5sliceSNtCsaJolGoatC1G_7todomvc4Todo4iterBw_ (;100;) (type 10) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    local.get 1
    local.get 2
    call $_RNvMs4_NtNtCs8dNdkSoVEg0_4core5slice4iterINtB5_4IterNtCsaJolGoatC1G_7todomvc4TodoE3newBQ_
    local.get 3
    i32.load
    local.set 4
    local.get 0
    local.get 3
    i32.load offset=4
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs_NtNtCs8dNdkSoVEg0_4core5slice4iterRSNtCsaJolGoatC1G_7todomvc4TodoNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterBG_ (;101;) (type 10) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 3
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 2
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=16
    local.get 3
    local.get 2
    i32.store offset=20
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 1
    local.get 2
    i32.const 12
    i32.mul
    i32.add
    i32.store
    local.get 0
    local.get 3
    i32.load
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    return
  )
  (func $_RINvNtNtCsaJolGoatC1G_7todomvc8bindings3__rt25invalid_enum_discriminantINtNtCs8dNdkSoVEg0_4core6option6OptionNtNtNtNtB4_6webidl8baseline3web11HtmlElementEEB6_ (;102;) (type 0) (param i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    i32.const 1052190
    local.set 2
    i32.const 25
    local.set 3
    local.get 1
    i32.const 8
    i32.add
    local.get 2
    local.get 3
    call $_RNvMs4_NtCs8dNdkSoVEg0_4core3fmtNtB5_9Arguments8from_strCsaJolGoatC1G_7todomvc
    local.get 1
    i32.load offset=12
    local.set 4
    local.get 1
    i32.load offset=8
    local.get 4
    i32.const 1052232
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
    unreachable
  )
  (func $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web11HtmlElementE11from_handleB6_ (;103;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    block ;; label = @1
      local.get 0
      i32.const -1
      i32.ne
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      i32.const 1052248
      i32.const 36
      i32.const 1052284
      call $_RNvNtCs8dNdkSoVEg0_4core9panicking5panic
      unreachable
    end
    local.get 1
    local.get 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE3newCsaJolGoatC1G_7todomvc
    i32.store offset=12
    local.get 1
    local.get 1
    i32.load offset=12
    i32.store offset=4
    local.get 1
    local.get 1
    i32.load offset=4
    i32.store
    local.get 1
    i32.load
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web11HtmlElementE6handleB6_ (;104;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    i32.const 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4loadCsaJolGoatC1G_7todomvc
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web11TrustedHtmlE11take_handleB6_ (;105;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    i32.const -1
    i32.const 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4swapCsaJolGoatC1G_7todomvc
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web13TrustedScriptE11take_handleB6_ (;106;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    i32.const -1
    i32.const 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4swapCsaJolGoatC1G_7todomvc
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web16TrustedScriptUrlE11take_handleB6_ (;107;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    i32.const -1
    i32.const 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4swapCsaJolGoatC1G_7todomvc
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web4NodeE11from_handleB6_ (;108;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    block ;; label = @1
      local.get 0
      i32.const -1
      i32.ne
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      i32.const 1052248
      i32.const 36
      i32.const 1052284
      call $_RNvNtCs8dNdkSoVEg0_4core9panicking5panic
      unreachable
    end
    local.get 1
    local.get 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE3newCsaJolGoatC1G_7todomvc
    i32.store offset=12
    local.get 1
    local.get 1
    i32.load offset=12
    i32.store offset=4
    local.get 1
    local.get 1
    i32.load offset=4
    i32.store
    local.get 1
    i32.load
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web4NodeE6handleB6_ (;109;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    i32.const 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4loadCsaJolGoatC1G_7todomvc
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web4TextE11from_handleB6_ (;110;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    block ;; label = @1
      local.get 0
      i32.const -1
      i32.ne
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      i32.const 1052248
      i32.const 36
      i32.const 1052284
      call $_RNvNtCs8dNdkSoVEg0_4core9panicking5panic
      unreachable
    end
    local.get 1
    local.get 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE3newCsaJolGoatC1G_7todomvc
    i32.store offset=12
    local.get 1
    local.get 1
    i32.load offset=12
    i32.store offset=4
    local.get 1
    local.get 1
    i32.load offset=4
    i32.store
    local.get 1
    i32.load
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web4TextE6handleB6_ (;111;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    i32.const 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4loadCsaJolGoatC1G_7todomvc
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web6WindowE11from_handleB6_ (;112;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    block ;; label = @1
      local.get 0
      i32.const -1
      i32.ne
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      i32.const 1052248
      i32.const 36
      i32.const 1052284
      call $_RNvNtCs8dNdkSoVEg0_4core9panicking5panic
      unreachable
    end
    local.get 1
    local.get 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE3newCsaJolGoatC1G_7todomvc
    i32.store offset=12
    local.get 1
    local.get 1
    i32.load offset=12
    i32.store offset=4
    local.get 1
    local.get 1
    i32.load offset=4
    i32.store
    local.get 1
    i32.load
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web6WindowE6handleB6_ (;113;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    i32.const 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4loadCsaJolGoatC1G_7todomvc
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web7ElementE11from_handleB6_ (;114;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    block ;; label = @1
      local.get 0
      i32.const -1
      i32.ne
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      i32.const 1052248
      i32.const 36
      i32.const 1052284
      call $_RNvNtCs8dNdkSoVEg0_4core9panicking5panic
      unreachable
    end
    local.get 1
    local.get 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE3newCsaJolGoatC1G_7todomvc
    i32.store offset=12
    local.get 1
    local.get 1
    i32.load offset=12
    i32.store offset=4
    local.get 1
    local.get 1
    i32.load offset=4
    i32.store
    local.get 1
    i32.load
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web7ElementE6handleB6_ (;115;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    i32.const 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4loadCsaJolGoatC1G_7todomvc
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web8DocumentE11from_handleB6_ (;116;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    block ;; label = @1
      local.get 0
      i32.const -1
      i32.ne
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      i32.const 1052248
      i32.const 36
      i32.const 1052284
      call $_RNvNtCs8dNdkSoVEg0_4core9panicking5panic
      unreachable
    end
    local.get 1
    local.get 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE3newCsaJolGoatC1G_7todomvc
    i32.store offset=12
    local.get 1
    local.get 1
    i32.load offset=12
    i32.store offset=4
    local.get 1
    local.get 1
    i32.load offset=4
    i32.store
    local.get 1
    i32.load
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RNvMNtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB2_8ResourceNtNtNtNtB4_6webidl8baseline3web8DocumentE6handleB6_ (;117;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    i32.const 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4loadCsaJolGoatC1G_7todomvc
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtCs51AVrxNfmOa_5alloc3vec3VechEECsaJolGoatC1G_7todomvc (;118;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvXso_NtCs51AVrxNfmOa_5alloc3vecINtB5_3VechENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropCsaJolGoatC1G_7todomvc
    local.get 0
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtCs51AVrxNfmOa_5alloc7raw_vec6RawVechEECsaJolGoatC1G_7todomvc
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXso_NtCs51AVrxNfmOa_5alloc3vecINtB5_3VechENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropCsaJolGoatC1G_7todomvc (;119;) (type 0) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 1
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 1
    local.get 2
    i32.store offset=16
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 1
    local.get 3
    i32.store offset=20
    local.get 1
    local.get 2
    i32.store offset=24
    local.get 1
    local.get 3
    i32.store offset=28
    local.get 1
    i32.const 0
    i32.store offset=8
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        i32.load offset=8
        local.get 3
        i32.eq
        i32.const 1
        i32.and
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load offset=8
        i32.const 1
        i32.add
        i32.store offset=8
        br 0 (;@2;)
      end
    end
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtCs51AVrxNfmOa_5alloc7raw_vec6RawVechEECsaJolGoatC1G_7todomvc (;120;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvXs1_NtCs51AVrxNfmOa_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropCsaJolGoatC1G_7todomvc
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs1_NtCs51AVrxNfmOa_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropCsaJolGoatC1G_7todomvc (;121;) (type 0) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    i32.const 1
    local.set 2
    local.get 0
    local.get 2
    local.get 2
    call $_RNvMs2_NtCs51AVrxNfmOa_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsaJolGoatC1G_7todomvc
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtNtCsaJolGoatC1G_7todomvc8bindings3__rt8ResourceNtNtNtNtBG_6webidl8baseline3web11HtmlElementEEBI_ (;122;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvXs0_NtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB5_8ResourceNtNtNtNtB7_6webidl8baseline3web11HtmlElementENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropB9_
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs0_NtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB5_8ResourceNtNtNtNtB7_6webidl8baseline3web11HtmlElementENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropB9_ (;123;) (type 0) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 0
    i32.const 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4loadCsaJolGoatC1G_7todomvc
    local.set 2
    local.get 1
    local.get 2
    i32.store offset=12
    block ;; label = @1
      local.get 2
      i32.const -1
      i32.eq
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 2
      call $_RNvXs7_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_11HtmlElementNtNtBb_3__rt12WasmResource4dropBd_
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtNtCsaJolGoatC1G_7todomvc8bindings3__rt8ResourceNtNtNtNtBG_6webidl8baseline3web11TrustedHtmlEEBI_ (;124;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvXs0_NtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB5_8ResourceNtNtNtNtB7_6webidl8baseline3web11TrustedHtmlENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropB9_
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs0_NtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB5_8ResourceNtNtNtNtB7_6webidl8baseline3web11TrustedHtmlENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropB9_ (;125;) (type 0) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 0
    i32.const 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4loadCsaJolGoatC1G_7todomvc
    local.set 2
    local.get 1
    local.get 2
    i32.store offset=12
    block ;; label = @1
      local.get 2
      i32.const -1
      i32.eq
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 2
      call $_RNvXsd_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_11TrustedHtmlNtNtBb_3__rt12WasmResource4dropBd_
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtNtCsaJolGoatC1G_7todomvc8bindings3__rt8ResourceNtNtNtNtBG_6webidl8baseline3web13TrustedScriptEEBI_ (;126;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvXs0_NtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB5_8ResourceNtNtNtNtB7_6webidl8baseline3web13TrustedScriptENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropB9_
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs0_NtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB5_8ResourceNtNtNtNtB7_6webidl8baseline3web13TrustedScriptENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropB9_ (;127;) (type 0) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 0
    i32.const 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4loadCsaJolGoatC1G_7todomvc
    local.set 2
    local.get 1
    local.get 2
    i32.store offset=12
    block ;; label = @1
      local.get 2
      i32.const -1
      i32.eq
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 2
      call $_RNvXsf_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_13TrustedScriptNtNtBb_3__rt12WasmResource4dropBd_
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtNtCsaJolGoatC1G_7todomvc8bindings3__rt8ResourceNtNtNtNtBG_6webidl8baseline3web16TrustedScriptUrlEEBI_ (;128;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvXs0_NtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB5_8ResourceNtNtNtNtB7_6webidl8baseline3web16TrustedScriptUrlENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropB9_
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs0_NtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB5_8ResourceNtNtNtNtB7_6webidl8baseline3web16TrustedScriptUrlENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropB9_ (;129;) (type 0) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 0
    i32.const 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4loadCsaJolGoatC1G_7todomvc
    local.set 2
    local.get 1
    local.get 2
    i32.store offset=12
    block ;; label = @1
      local.get 2
      i32.const -1
      i32.eq
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 2
      call $_RNvXsh_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_16TrustedScriptUrlNtNtBb_3__rt12WasmResource4dropBd_
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtNtCsaJolGoatC1G_7todomvc8bindings3__rt8ResourceNtNtNtNtBG_6webidl8baseline3web4NodeEEBI_ (;130;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvXs0_NtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB5_8ResourceNtNtNtNtB7_6webidl8baseline3web4NodeENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropB9_
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs0_NtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB5_8ResourceNtNtNtNtB7_6webidl8baseline3web4NodeENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropB9_ (;131;) (type 0) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 0
    i32.const 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4loadCsaJolGoatC1G_7todomvc
    local.set 2
    local.get 1
    local.get 2
    i32.store offset=12
    block ;; label = @1
      local.get 2
      i32.const -1
      i32.eq
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 2
      call $_RNvXs9_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_4NodeNtNtBb_3__rt12WasmResource4dropBd_
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtNtCsaJolGoatC1G_7todomvc8bindings3__rt8ResourceNtNtNtNtBG_6webidl8baseline3web4TextEEBI_ (;132;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvXs0_NtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB5_8ResourceNtNtNtNtB7_6webidl8baseline3web4TextENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropB9_
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs0_NtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB5_8ResourceNtNtNtNtB7_6webidl8baseline3web4TextENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropB9_ (;133;) (type 0) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 0
    i32.const 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4loadCsaJolGoatC1G_7todomvc
    local.set 2
    local.get 1
    local.get 2
    i32.store offset=12
    block ;; label = @1
      local.get 2
      i32.const -1
      i32.eq
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 2
      call $_RNvXsb_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_4TextNtNtBb_3__rt12WasmResource4dropBd_
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtNtCsaJolGoatC1G_7todomvc8bindings3__rt8ResourceNtNtNtNtBG_6webidl8baseline3web6WindowEEBI_ (;134;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvXs0_NtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB5_8ResourceNtNtNtNtB7_6webidl8baseline3web6WindowENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropB9_
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs0_NtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB5_8ResourceNtNtNtNtB7_6webidl8baseline3web6WindowENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropB9_ (;135;) (type 0) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 0
    i32.const 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4loadCsaJolGoatC1G_7todomvc
    local.set 2
    local.get 1
    local.get 2
    i32.store offset=12
    block ;; label = @1
      local.get 2
      i32.const -1
      i32.eq
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 2
      call $_RNvXsl_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_6WindowNtNtBb_3__rt12WasmResource4dropBd_
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtNtCsaJolGoatC1G_7todomvc8bindings3__rt8ResourceNtNtNtNtBG_6webidl8baseline3web7ElementEEBI_ (;136;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvXs0_NtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB5_8ResourceNtNtNtNtB7_6webidl8baseline3web7ElementENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropB9_
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs0_NtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB5_8ResourceNtNtNtNtB7_6webidl8baseline3web7ElementENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropB9_ (;137;) (type 0) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 0
    i32.const 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4loadCsaJolGoatC1G_7todomvc
    local.set 2
    local.get 1
    local.get 2
    i32.store offset=12
    block ;; label = @1
      local.get 2
      i32.const -1
      i32.eq
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 2
      call $_RNvXs5_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB5_7ElementNtNtBb_3__rt12WasmResource4dropBd_
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtNtCsaJolGoatC1G_7todomvc8bindings3__rt8ResourceNtNtNtNtBG_6webidl8baseline3web8DocumentEEBI_ (;138;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RNvXs0_NtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB5_8ResourceNtNtNtNtB7_6webidl8baseline3web8DocumentENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropB9_
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs0_NtNtCsaJolGoatC1G_7todomvc8bindings3__rtINtB5_8ResourceNtNtNtNtB7_6webidl8baseline3web8DocumentENtNtNtCs8dNdkSoVEg0_4core3ops4drop4Drop4dropB9_ (;139;) (type 0) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 0
    i32.const 0
    call $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4loadCsaJolGoatC1G_7todomvc
    local.set 2
    local.get 1
    local.get 2
    i32.store offset=12
    block ;; label = @1
      local.get 2
      i32.const -1
      i32.eq
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 2
      call $_RNvXs_NtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3webNtB4_8DocumentNtNtBa_3__rt12WasmResource4dropBc_
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtCs51AVrxNfmOa_5alloc6string6StringECsaJolGoatC1G_7todomvc (;140;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtCs51AVrxNfmOa_5alloc3vec3VechEECsaJolGoatC1G_7todomvc
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web11HtmlElementEBL_ (;141;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtNtCsaJolGoatC1G_7todomvc8bindings3__rt8ResourceNtNtNtNtBG_6webidl8baseline3web11HtmlElementEEBI_
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web11TrustedHtmlEBL_ (;142;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtNtCsaJolGoatC1G_7todomvc8bindings3__rt8ResourceNtNtNtNtBG_6webidl8baseline3web11TrustedHtmlEEBI_
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web13TrustedScriptEBL_ (;143;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtNtCsaJolGoatC1G_7todomvc8bindings3__rt8ResourceNtNtNtNtBG_6webidl8baseline3web13TrustedScriptEEBI_
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web16TrustedScriptUrlEBL_ (;144;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtNtCsaJolGoatC1G_7todomvc8bindings3__rt8ResourceNtNtNtNtBG_6webidl8baseline3web16TrustedScriptUrlEEBI_
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web19TrustedTypeOrStringEBL_ (;145;) (type 0) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    i32.load
    i32.const -1
    i32.eq
    local.set 2
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.const 1
        local.get 2
        i32.const 1
        i32.and
        select
        br_if 0 (;@2;)
        local.get 0
        i32.const 4
        i32.add
        call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web44TrustedHtmlOrTrustedScriptOrTrustedScriptUrlEBL_
        br 1 (;@1;)
      end
      local.get 0
      call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtCs51AVrxNfmOa_5alloc6string6StringECsaJolGoatC1G_7todomvc
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web44TrustedHtmlOrTrustedScriptOrTrustedScriptUrlEBL_ (;146;) (type 0) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    i32.load
    local.set 2
    local.get 2
    i32.const 1
    i32.gt_u
    drop
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 2
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 0
          i32.const 4
          i32.add
          call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web16TrustedScriptUrlEBL_
          br 2 (;@1;)
        end
        local.get 0
        i32.const 4
        i32.add
        call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web11TrustedHtmlEBL_
        br 1 (;@1;)
      end
      local.get 0
      i32.const 4
      i32.add
      call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web13TrustedScriptEBL_
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web4NodeEBL_ (;147;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtNtCsaJolGoatC1G_7todomvc8bindings3__rt8ResourceNtNtNtNtBG_6webidl8baseline3web4NodeEEBI_
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web4TextEBL_ (;148;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtNtCsaJolGoatC1G_7todomvc8bindings3__rt8ResourceNtNtNtNtBG_6webidl8baseline3web4TextEEBI_
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web6WindowEBL_ (;149;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtNtCsaJolGoatC1G_7todomvc8bindings3__rt8ResourceNtNtNtNtBG_6webidl8baseline3web6WindowEEBI_
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web7ElementEBL_ (;150;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtNtCsaJolGoatC1G_7todomvc8bindings3__rt8ResourceNtNtNtNtBG_6webidl8baseline3web7ElementEEBI_
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtNtNtNtCsaJolGoatC1G_7todomvc8bindings6webidl8baseline3web8DocumentEBL_ (;151;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtNtCsaJolGoatC1G_7todomvc8bindings3__rt8ResourceNtNtNtNtBG_6webidl8baseline3web8DocumentEEBI_
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE3newCsaJolGoatC1G_7todomvc (;152;) (type 6) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    i32.load offset=8
    return
  )
  (func $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4loadCsaJolGoatC1G_7todomvc (;153;) (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store8 offset=15
    local.get 0
    local.get 1
    call $_RINvNtNtCs8dNdkSoVEg0_4core4sync6atomic11atomic_loadmECsaJolGoatC1G_7todomvc
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3
    return
  )
  (func $_RNvMs14_NtNtCs8dNdkSoVEg0_4core4sync6atomicINtB6_6AtomicmE4swapCsaJolGoatC1G_7todomvc (;154;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=16
    local.get 3
    local.get 1
    i32.store offset=20
    local.get 3
    local.get 2
    i32.store8 offset=27
    local.get 3
    local.get 0
    i32.store offset=28
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 2
                i32.const 255
                i32.and
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;) 3 (;@3;) 4 (;@2;) 0 (;@6;)
              end
              local.get 0
              i32.load
              local.set 4
              local.get 0
              local.get 1
              i32.store
              local.get 3
              local.get 4
              i32.store offset=12
              br 4 (;@1;)
            end
            local.get 0
            i32.load
            local.set 5
            local.get 0
            local.get 1
            i32.store
            local.get 3
            local.get 5
            i32.store offset=12
            br 3 (;@1;)
          end
          local.get 0
          i32.load
          local.set 6
          local.get 0
          local.get 1
          i32.store
          local.get 3
          local.get 6
          i32.store offset=12
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.set 7
        local.get 0
        local.get 1
        i32.store
        local.get 3
        local.get 7
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 0
      i32.load
      local.set 8
      local.get 0
      local.get 1
      i32.store
      local.get 3
      local.get 8
      i32.store offset=12
    end
    local.get 3
    i32.load offset=12
    return
    unreachable
  )
  (func $_RNvMNtCs51AVrxNfmOa_5alloc5allocNtB2_6Global18alloc_impl_runtimeCsaJolGoatC1G_7todomvc (;155;) (type 2) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 1
    i32.store offset=24
    local.get 4
    local.get 2
    i32.store offset=28
    local.get 4
    local.get 3
    i32.store8 offset=34
    local.get 4
    i32.const 0
    i32.store offset=36
    local.get 4
    i32.const 0
    i32.store offset=40
    local.get 4
    local.get 2
    i32.store offset=52
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 2
                  br_if 0 (;@7;)
                  local.get 4
                  local.get 1
                  i32.store offset=56
                  local.get 4
                  local.get 1
                  i32.store offset=60
                  local.get 4
                  local.get 1
                  i32.store offset=64
                  local.get 4
                  i32.const 0
                  i32.store offset=68
                  br 1 (;@6;)
                end
                local.get 3
                br_if 2 (;@4;)
                br 1 (;@5;)
              end
              local.get 1
              i32.const 1052416
              call $_RNvNvMs1_NtNtCs8dNdkSoVEg0_4core3ptr8non_nullINtB7_7NonNullpE13new_unchecked18precondition_checkCsaJolGoatC1G_7todomvc
              local.get 4
              local.get 1
              i32.store
              local.get 4
              i32.const 0
              i32.store offset=4
              br 3 (;@2;)
            end
            call $_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2
            local.get 4
            local.get 2
            local.get 1
            call $_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc
            i32.store offset=8
            br 1 (;@3;)
          end
          call $_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2
          local.get 4
          local.get 2
          local.get 1
          call $_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed
          i32.store offset=8
        end
        block ;; label = @3
          local.get 4
          i32.load offset=8
          br_if 0 (;@3;)
          local.get 4
          i32.const 0
          i32.store offset=20
          local.get 4
          i32.const 0
          i32.store offset=16
          i32.const 0
          i32.load offset=1052432
          local.set 5
          i32.const 0
          i32.load offset=1052436
          local.set 6
          local.get 4
          local.get 5
          i32.store
          local.get 4
          local.get 6
          i32.store offset=4
          br 2 (;@1;)
        end
        local.get 4
        i32.load offset=8
        i32.const 1052440
        call $_RNvNvMs1_NtNtCs8dNdkSoVEg0_4core3ptr8non_nullINtB7_7NonNullpE13new_unchecked18precondition_checkCsaJolGoatC1G_7todomvc
        local.get 4
        local.get 4
        i32.load offset=8
        i32.store offset=20
        local.get 4
        i32.load offset=20
        local.set 7
        local.get 4
        local.get 7
        i32.store offset=72
        local.get 4
        local.get 7
        i32.store offset=16
        local.get 4
        i32.load offset=16
        local.set 8
        local.get 4
        local.get 8
        i32.store offset=76
        local.get 4
        local.get 8
        i32.store offset=12
        local.get 4
        i32.load offset=12
        local.set 9
        local.get 4
        local.get 9
        i32.store offset=80
        local.get 4
        local.get 9
        i32.store offset=84
        local.get 4
        local.get 9
        i32.store offset=88
        local.get 4
        local.get 2
        i32.store offset=92
        local.get 9
        i32.const 1052416
        call $_RNvNvMs1_NtNtCs8dNdkSoVEg0_4core3ptr8non_nullINtB7_7NonNullpE13new_unchecked18precondition_checkCsaJolGoatC1G_7todomvc
        local.get 4
        local.get 9
        i32.store
        local.get 4
        local.get 2
        i32.store offset=4
      end
    end
    local.get 4
    i32.load
    local.set 10
    local.get 0
    local.get 4
    i32.load offset=4
    i32.store offset=4
    local.get 0
    local.get 10
    i32.store
    local.get 4
    i32.const 96
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs_NtCs51AVrxNfmOa_5alloc5allocNtB4_6GlobalNtNtCs8dNdkSoVEg0_4core5alloc9Allocator10deallocateCsaJolGoatC1G_7todomvc (;156;) (type 2) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store
    local.get 4
    local.get 1
    i32.store offset=4
    local.get 4
    local.get 2
    i32.store offset=8
    local.get 4
    local.get 3
    i32.store offset=12
    block ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      local.get 2
      call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs_NtCs51AVrxNfmOa_5alloc5allocNtB4_6GlobalNtNtCs8dNdkSoVEg0_4core5alloc9Allocator15allocate_zeroedCsaJolGoatC1G_7todomvc (;157;) (type 2) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 1
    i32.store offset=16
    local.get 4
    local.get 2
    i32.store offset=20
    local.get 4
    local.get 3
    i32.store offset=24
    i32.const 1
    local.set 5
    local.get 4
    local.get 5
    i32.store8 offset=31
    local.get 4
    i32.const 8
    i32.add
    local.get 2
    local.get 3
    local.get 5
    call $_RNvMNtCs51AVrxNfmOa_5alloc5allocNtB2_6Global18alloc_impl_runtimeCsaJolGoatC1G_7todomvc
    local.get 4
    i32.load offset=8
    local.set 6
    local.get 0
    local.get 4
    i32.load offset=12
    i32.store offset=4
    local.get 0
    local.get 6
    i32.store
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs_NtCs51AVrxNfmOa_5alloc5allocNtB4_6GlobalNtNtCs8dNdkSoVEg0_4core5alloc9Allocator8allocateCsaJolGoatC1G_7todomvc (;158;) (type 2) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 1
    i32.store offset=16
    local.get 4
    local.get 2
    i32.store offset=20
    local.get 4
    local.get 3
    i32.store offset=24
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    i32.store8 offset=31
    local.get 4
    i32.const 8
    i32.add
    local.get 2
    local.get 3
    local.get 5
    call $_RNvMNtCs51AVrxNfmOa_5alloc5allocNtB2_6Global18alloc_impl_runtimeCsaJolGoatC1G_7todomvc
    local.get 4
    i32.load offset=8
    local.set 6
    local.get 0
    local.get 4
    i32.load offset=12
    i32.store offset=4
    local.get 0
    local.get 6
    i32.store
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvNvMNtNtCs8dNdkSoVEg0_4core3mem9alignmentNtB4_9Alignment13new_unchecked18precondition_checkCsaJolGoatC1G_7todomvc (;159;) (type 1) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store
    local.get 2
    local.get 0
    i32.popcnt
    i32.store offset=4
    block ;; label = @1
      local.get 2
      i32.load offset=4
      i32.const 1
      i32.eq
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 2
    i32.const 1052456
    i32.store offset=8
    local.get 2
    i32.const 198
    i32.store offset=12
    i32.const 1052456
    i32.const 397
    i32.const 0
    i32.const 1
    i32.and
    local.get 1
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking18panic_nounwind_fmt
    unreachable
  )
  (func $_RNvMNtCs51AVrxNfmOa_5alloc6stringNtB2_6String3lenCsaJolGoatC1G_7todomvc (;160;) (type 6) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    i32.load offset=8
    return
  )
  (func $_RNvXs1P_NtCs51AVrxNfmOa_5alloc6stringjNtB6_12SpecToString14spec_to_stringCsaJolGoatC1G_7todomvc (;161;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=40
    local.get 1
    i32.load
    local.set 3
    i32.const 10
    local.set 4
    local.get 2
    i32.const 8
    i32.add
    local.get 3
    local.get 2
    i32.const 18
    i32.add
    local.get 4
    call $_RNvMsa_NtNtNtCs8dNdkSoVEg0_4core3fmt3num3impm4__fmt
    local.get 2
    i32.load offset=12
    local.set 5
    local.get 2
    i32.load offset=8
    local.set 6
    local.get 2
    local.get 6
    i32.store offset=48
    local.get 2
    local.get 5
    i32.store offset=52
    local.get 2
    local.get 6
    i32.store offset=56
    local.get 2
    local.get 5
    i32.store offset=60
    local.get 2
    i32.const 28
    i32.add
    local.get 6
    local.get 5
    call $_RINvXs_NvMNtCs51AVrxNfmOa_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsaJolGoatC1G_7todomvc
    local.get 0
    local.get 2
    i32.load offset=36
    i32.store offset=8
    local.get 0
    local.get 2
    i64.load offset=28 align=4
    i64.store align=4
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXs26_NtCs51AVrxNfmOa_5alloc6stringeNtB6_12SpecToString14spec_to_stringCsaJolGoatC1G_7todomvc (;162;) (type 10) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 2
    i32.store offset=16
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 2
    i32.store offset=28
    local.get 3
    local.get 1
    local.get 2
    call $_RINvXs_NvMNtCs51AVrxNfmOa_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsaJolGoatC1G_7todomvc
    local.get 0
    local.get 3
    i32.load offset=8
    i32.store offset=8
    local.get 0
    local.get 3
    i64.load align=4
    i64.store align=4
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvXsx_NtCs51AVrxNfmOa_5alloc6stringNtB5_6StringNtNtNtCs8dNdkSoVEg0_4core3ops5deref5Deref5derefCsaJolGoatC1G_7todomvc (;163;) (type 1) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 2
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 1
    i32.load offset=4
    local.set 3
    local.get 0
    local.get 1
    i32.load offset=8
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    return
  )
  (func $_RNvNtCsaJolGoatC1G_7todomvc8bindings40___link_custom_section_describing_imports (;164;) (type 9)
    call $_RNvCsg6JWgYfQRHW_14wit_bindgen_rt23maybe_link_cabi_realloc
    return
  )
  (func $_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc (;165;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_RNvCs9hJ03s5DiqP_7___rustc11___rdl_alloc
    return
  )
  (func $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc (;166;) (type 10) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_RNvCs9hJ03s5DiqP_7___rustc13___rdl_dealloc
    return
  )
  (func $_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc (;167;) (type 8) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_RNvCs9hJ03s5DiqP_7___rustc13___rdl_realloc
    return
  )
  (func $_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed (;168;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_RNvCs9hJ03s5DiqP_7___rustc18___rdl_alloc_zeroed
    return
  )
  (func $_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2 (;169;) (type 9)
    return
  )
  (func $_RNvCsg6JWgYfQRHW_14wit_bindgen_rt12cabi_realloc (;170;) (type 8) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 3
    i32.store offset=36
    local.get 4
    local.get 0
    i32.store offset=56
    local.get 4
    local.get 1
    i32.store offset=60
    local.get 4
    local.get 2
    i32.store offset=64
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 1
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  local.get 4
                  i32.const 36
                  i32.add
                  i32.store offset=68
                  local.get 4
                  i32.const 1052660
                  i32.store offset=72
                  local.get 4
                  i32.load offset=36
                  i32.const 0
                  i32.load offset=1052660
                  i32.eq
                  i32.const 1
                  i32.and
                  br_if 2 (;@5;)
                  br 1 (;@6;)
                end
                local.get 4
                i32.load offset=36
                i32.eqz
                br_if 3 (;@3;)
                br 2 (;@4;)
              end
              i32.const 1052768
              local.set 5
              local.get 4
              i32.const 24
              i32.add
              local.get 1
              local.get 2
              local.get 5
              call $_RNvMNtNtCs8dNdkSoVEg0_4core5alloc6layoutNtB2_6Layout25from_size_align_uncheckedCsg6JWgYfQRHW_14wit_bindgen_rt
              local.get 4
              i32.load offset=28
              local.set 6
              local.get 4
              local.get 4
              i32.load offset=24
              i32.store offset=44
              local.get 4
              local.get 6
              i32.store offset=48
              local.get 4
              local.get 0
              local.get 4
              i32.load offset=44
              local.get 4
              i32.load offset=48
              local.get 4
              i32.load offset=36
              call $_RNvNtCs51AVrxNfmOa_5alloc5alloc7reallocCsg6JWgYfQRHW_14wit_bindgen_rt
              i32.store offset=52
              br 3 (;@2;)
            end
            local.get 4
            i32.const 1
            i32.store8 offset=79
            i32.const 1052784
            local.set 7
            i32.const 43
            local.set 8
            local.get 4
            i32.const 16
            i32.add
            local.get 7
            local.get 8
            call $_RNvMs4_NtCs8dNdkSoVEg0_4core3fmtNtB5_9Arguments8from_strCsg6JWgYfQRHW_14wit_bindgen_rt
            local.get 4
            i32.load offset=20
            local.set 9
            local.get 4
            i32.load offset=16
            local.set 10
            i32.const 1
            local.get 4
            i32.const 36
            i32.add
            i32.const 1052660
            local.get 10
            local.get 9
            i32.const 1052828
            call $_RINvNtCs8dNdkSoVEg0_4core9panicking13assert_failedjjEB4_
            unreachable
          end
          local.get 4
          i32.load offset=36
          local.set 11
          i32.const 1052844
          local.set 12
          local.get 4
          i32.const 8
          i32.add
          local.get 11
          local.get 2
          local.get 12
          call $_RNvMNtNtCs8dNdkSoVEg0_4core5alloc6layoutNtB2_6Layout25from_size_align_uncheckedCsg6JWgYfQRHW_14wit_bindgen_rt
          local.get 4
          i32.load offset=12
          local.set 13
          local.get 4
          local.get 4
          i32.load offset=8
          i32.store offset=44
          local.get 4
          local.get 13
          i32.store offset=48
          local.get 4
          local.get 4
          i32.load offset=44
          local.get 4
          i32.load offset=48
          call $_RNvNtCs51AVrxNfmOa_5alloc5alloc5allocCsg6JWgYfQRHW_14wit_bindgen_rt
          i32.store offset=52
          br 1 (;@2;)
        end
        local.get 4
        local.get 2
        i32.store offset=40
        br 1 (;@1;)
      end
      block ;; label = @2
        local.get 4
        i32.load offset=52
        call $_RNvMNtNtCs8dNdkSoVEg0_4core3ptr7mut_ptrOh7is_nullCsg6JWgYfQRHW_14wit_bindgen_rt
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 4
        local.get 4
        i32.load offset=52
        i32.store offset=40
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=44
      local.get 4
      i32.load offset=48
      call $_RNvNtCs51AVrxNfmOa_5alloc5alloc18handle_alloc_error
      unreachable
    end
    local.get 4
    i32.load offset=40
    local.set 14
    local.get 4
    i32.const 80
    i32.add
    global.set $__stack_pointer
    local.get 14
    return
  )
  (func $_RNvMNtNtCs8dNdkSoVEg0_4core5alloc6layoutNtB2_6Layout25from_size_align_uncheckedCsg6JWgYfQRHW_14wit_bindgen_rt (;171;) (type 2) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    local.get 2
    i32.store offset=12
    local.get 1
    local.get 2
    local.get 3
    call $_RNvNvMNtNtCs8dNdkSoVEg0_4core5alloc6layoutNtB4_6Layout25from_size_align_unchecked18precondition_checkCsg6JWgYfQRHW_14wit_bindgen_rt
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvNtCs51AVrxNfmOa_5alloc5alloc7reallocCsg6JWgYfQRHW_14wit_bindgen_rt (;172;) (type 8) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=16
    local.get 4
    local.get 2
    i32.store offset=20
    local.get 4
    local.get 3
    i32.store offset=24
    local.get 0
    i32.const 1052972
    call $_RNvNvMs1_NtNtCs8dNdkSoVEg0_4core3ptr8non_nullINtB7_7NonNullpE13new_unchecked18precondition_checkCsg6JWgYfQRHW_14wit_bindgen_rt
    local.get 4
    local.get 0
    i32.store offset=28
    local.get 0
    local.get 2
    local.get 1
    local.get 3
    call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc
    local.set 5
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 5
    return
  )
  (func $_RNvMs4_NtCs8dNdkSoVEg0_4core3fmtNtB5_9Arguments8from_strCsg6JWgYfQRHW_14wit_bindgen_rt (;173;) (type 10) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 3
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=12
    i32.const 1
    local.set 4
    local.get 0
    local.get 4
    local.get 2
    local.get 4
    i32.shl
    i32.or
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    return
  )
  (func $_RNvNtCs51AVrxNfmOa_5alloc5alloc5allocCsg6JWgYfQRHW_14wit_bindgen_rt (;174;) (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=12
    call $_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2
    local.get 1
    local.get 0
    call $_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3
    return
  )
  (func $_RNvMNtNtCs8dNdkSoVEg0_4core3ptr7mut_ptrOh7is_nullCsg6JWgYfQRHW_14wit_bindgen_rt (;175;) (type 6) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    i32.const 0
    i32.eq
    i32.const 1
    i32.and
    return
  )
  (func $_RNvCsg6JWgYfQRHW_14wit_bindgen_rt14run_ctors_once (;176;) (type 9)
    (local i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=1057016
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      call $__wasm_call_ctors
      i32.const 1
      local.set 0
      i32.const 0
      local.get 0
      i32.store8 offset=1057016
    end
    return
  )
  (func $_RNvCsg6JWgYfQRHW_14wit_bindgen_rt23maybe_link_cabi_realloc (;177;) (type 9)
    return
  )
  (func $_RNvNvMNtNtCs8dNdkSoVEg0_4core5alloc6layoutNtB4_6Layout25from_size_align_unchecked18precondition_checkCsg6JWgYfQRHW_14wit_bindgen_rt (;178;) (type 10) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 1
    i32.popcnt
    i32.store offset=16
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 3
            i32.load offset=16
            i32.const 1
            i32.eq
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          br 1 (;@2;)
        end
        local.get 1
        i32.const 1053304
        call $_RNvNvMNtNtCs8dNdkSoVEg0_4core3mem9alignmentNtB4_9Alignment13new_unchecked18precondition_checkCsg6JWgYfQRHW_14wit_bindgen_rt
        local.get 3
        local.get 1
        i32.store offset=20
        local.get 0
        i32.const -2147483648
        local.get 1
        i32.sub
        i32.le_u
        i32.const 1
        i32.and
        br_if 1 (;@1;)
      end
      local.get 3
      i32.const 1053320
      i32.store offset=24
      local.get 3
      i32.const 281
      i32.store offset=28
      i32.const 1053320
      i32.const 563
      i32.const 0
      i32.const 1
      i32.and
      local.get 2
      call $_RNvNtCs8dNdkSoVEg0_4core9panicking18panic_nounwind_fmt
      unreachable
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvNvMs1_NtNtCs8dNdkSoVEg0_4core3ptr8non_nullINtB7_7NonNullpE13new_unchecked18precondition_checkCsg6JWgYfQRHW_14wit_bindgen_rt (;179;) (type 1) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=4
    block ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      local.get 2
      i32.const 1053601
      i32.store offset=8
      local.get 2
      i32.const 210
      i32.store offset=12
      i32.const 1053601
      i32.const 421
      i32.const 0
      i32.const 1
      i32.and
      local.get 1
      call $_RNvNtCs8dNdkSoVEg0_4core9panicking18panic_nounwind_fmt
      unreachable
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    return
  )
  (func $_RNvNvMNtNtCs8dNdkSoVEg0_4core3mem9alignmentNtB4_9Alignment13new_unchecked18precondition_checkCsg6JWgYfQRHW_14wit_bindgen_rt (;180;) (type 1) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store
    local.get 2
    local.get 0
    i32.popcnt
    i32.store offset=4
    block ;; label = @1
      local.get 2
      i32.load offset=4
      i32.const 1
      i32.eq
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 2
    i32.const 1052988
    i32.store offset=8
    local.get 2
    i32.const 198
    i32.store offset=12
    i32.const 1052988
    i32.const 397
    i32.const 0
    i32.const 1
    i32.and
    local.get 1
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking18panic_nounwind_fmt
    unreachable
  )
  (func $cabi_realloc_wit_bindgen_0_41_0 (;181;) (type 8) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store
    local.get 4
    local.get 1
    i32.store offset=4
    local.get 4
    local.get 2
    i32.store offset=8
    local.get 4
    local.get 3
    i32.store offset=12
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_RNvCsg6JWgYfQRHW_14wit_bindgen_rt12cabi_realloc
    local.set 5
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5
    return
  )
  (func $cabi_realloc (;182;) (type 8) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $cabi_realloc_wit_bindgen_0_41_0
  )
  (func $_RNvMNtNtCs8dNdkSoVEg0_4core3ptr9const_ptrPu13is_aligned_toCskFxZBb8Pa6P_8bitflags (;183;) (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=16
    local.get 2
    local.get 1
    i32.popcnt
    i32.store offset=20
    block ;; label = @1
      local.get 2
      i32.load offset=20
      i32.const 1
      i32.eq
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 1
      i32.sub
      i32.and
      i32.const 0
      i32.eq
      i32.const 1
      i32.and
      local.set 3
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 3
      return
    end
    local.get 2
    i32.const 1053811
    i32.store offset=24
    local.get 2
    i32.const 42
    i32.store offset=28
    i32.const 1053811
    i32.const 85
    i32.const 1053972
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
    unreachable
  )
  (func $_RNvCs9hJ03s5DiqP_7___rustc18___rust_start_panic (;184;) (type 4) (param i32 i32) (result i32)
    call $_RNvCs9hJ03s5DiqP_7___rustc12___rust_abort
    unreachable
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core9panicking13assert_failedbbECs4cXvnjfI5fJ_3std (;185;) (type 5) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    local.get 2
    i32.store offset=12
    local.get 6
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 6
    i32.const 8
    i32.add
    i32.const 1054240
    local.get 6
    i32.const 12
    i32.add
    i32.const 1054240
    local.get 3
    local.get 4
    local.get 5
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking19assert_failed_inner
    unreachable
  )
  (func $_RNvNvMNtNtCs4cXvnjfI5fJ_3std6thread2idNtB4_8ThreadId3new9exhausted (;186;) (type 9)
    i32.const 1055905
    i32.const 111
    i32.const 1055960
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
    unreachable
  )
  (func $_RINvNvMs2_NtCs51AVrxNfmOa_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4cXvnjfI5fJ_3std (;187;) (type 11) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 2
      local.get 1
      i32.add
      local.tee 1
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call $_RNvNtCs51AVrxNfmOa_5alloc7raw_vec12handle_error
      unreachable
    end
    local.get 5
    i32.const 4
    i32.add
    local.get 0
    i32.load
    local.tee 2
    local.get 0
    i32.load offset=4
    local.get 1
    local.get 2
    i32.const 1
    i32.shl
    local.tee 2
    local.get 1
    local.get 2
    i32.gt_u
    select
    local.tee 2
    i32.const 8
    i32.const 4
    local.get 4
    i32.const 1
    i32.eq
    select
    local.tee 1
    local.get 2
    local.get 1
    i32.gt_u
    select
    local.tee 2
    local.get 3
    local.get 4
    call $_RNvMs4_NtCs51AVrxNfmOa_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4cXvnjfI5fJ_3std
    block ;; label = @1
      local.get 5
      i32.load offset=4
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=8
      local.get 5
      i32.load offset=12
      call $_RNvNtCs51AVrxNfmOa_5alloc7raw_vec12handle_error
      unreachable
    end
    local.get 5
    i32.load offset=8
    local.set 4
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_RNvMs4_NtCs51AVrxNfmOa_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4cXvnjfI5fJ_3std (;188;) (type 5) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i64)
    i32.const 1
    local.set 6
    i32.const 4
    local.set 7
    block ;; label = @1
      block ;; label = @2
        local.get 5
        i64.extend_i32_u
        local.get 3
        i64.extend_i32_u
        i64.mul
        local.tee 8
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      block ;; label = @2
        local.get 8
        i32.wrap_i64
        local.tee 3
        i32.const -2147483648
        local.get 4
        i32.sub
        i32.le_u
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.get 5
              local.get 1
              i32.mul
              local.get 4
              local.get 3
              call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc
              local.set 7
              br 1 (;@4;)
            end
            block ;; label = @5
              local.get 3
              br_if 0 (;@5;)
              local.get 4
              local.set 7
              br 2 (;@3;)
            end
            call $_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2
            local.get 3
            local.get 4
            call $_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc
            local.set 7
          end
          local.get 7
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 0
        local.get 7
        i32.store offset=4
        i32.const 0
        local.set 6
      end
      i32.const 8
      local.set 7
    end
    local.get 0
    local.get 7
    i32.add
    local.get 3
    i32.store
    local.get 0
    local.get 6
    i32.store
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs4cXvnjfI5fJ_3std2io5error5ErrorEEB14_ (;189;) (type 1) (param i32 i32)
    (local i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 255
      i32.and
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 2
      block ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.tee 0
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        call_indirect (type 0)
      end
      block ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        local.get 0
        i32.load offset=8
        call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
      end
      local.get 1
      i32.const 12
      i32.const 4
      call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
    end
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtCs51AVrxNfmOa_5alloc3vec3VechEECs4cXvnjfI5fJ_3std (;190;) (type 0) (param i32)
    (local i32)
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 1
      i32.const 1
      call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
    end
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmt7AdapterINtNtCs51AVrxNfmOa_5alloc3vec3VechEEEBI_ (;191;) (type 0) (param i32)
    (local i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.tee 0
      i32.load
      local.set 1
      block ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 2
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        call_indirect (type 0)
      end
      block ;; label = @2
        local.get 2
        i32.load offset=4
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        local.get 2
        i32.load offset=8
        call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
      end
      local.get 0
      i32.const 12
      i32.const 4
      call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
    end
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtCs51AVrxNfmOa_5alloc6string6StringECs4cXvnjfI5fJ_3std (;192;) (type 0) (param i32)
    (local i32)
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 1
      i32.const 1
      call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
    end
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNvNtCs4cXvnjfI5fJ_3std9panicking13panic_handler19FormatStringPayloadEBH_ (;193;) (type 0) (param i32)
    (local i32)
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 1
      i32.const 1
      call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
    end
  )
  (func $_RINvNtNtCs4cXvnjfI5fJ_3std3sys9backtrace26___rust_end_short_backtraceNCNvNtB6_5alloc8rust_oom0zEB6_ (;194;) (type 0) (param i32)
    local.get 0
    call $_RNCNvNtCs4cXvnjfI5fJ_3std5alloc8rust_oom0B5_
    unreachable
  )
  (func $_RNCNvNtCs4cXvnjfI5fJ_3std5alloc8rust_oom0B5_ (;195;) (type 0) (param i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    i32.const 0
    i32.load offset=1057032
    local.tee 0
    i32.const 3
    local.get 0
    select
    call_indirect (type 1)
    call $_RNvNtCs4cXvnjfI5fJ_3std7process5abort
    unreachable
  )
  (func $_RINvNtNtCs4cXvnjfI5fJ_3std3sys9backtrace26___rust_end_short_backtraceNCNvNtB6_9panicking13panic_handler0zEB6_ (;196;) (type 0) (param i32)
    local.get 0
    call $_RNCNvNtCs4cXvnjfI5fJ_3std9panicking13panic_handler0B5_
    unreachable
  )
  (func $_RNCNvNtCs4cXvnjfI5fJ_3std9panicking13panic_handler0B5_ (;197;) (type 0) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 2
      i32.load offset=4
      local.tee 3
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load
      local.set 2
      local.get 1
      local.get 3
      i32.const 1
      i32.shr_u
      i32.store offset=4
      local.get 1
      local.get 2
      i32.store
      local.get 1
      i32.const 1054572
      local.get 0
      i32.load offset=4
      local.get 0
      i32.load offset=8
      local.tee 0
      i32.load8_u offset=8
      local.get 0
      i32.load8_u offset=9
      call $_RNvNtCs4cXvnjfI5fJ_3std9panicking15panic_with_hook
      unreachable
    end
    local.get 1
    i32.const -1
    i32.store
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 1054600
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.tee 0
    i32.load8_u offset=8
    local.get 0
    i32.load8_u offset=9
    call $_RNvNtCs4cXvnjfI5fJ_3std9panicking15panic_with_hook
    unreachable
  )
  (func $_RINvNtNtNtCs4cXvnjfI5fJ_3std3sys7helpers14small_c_string24run_with_cstr_allocatingINtNtCs8dNdkSoVEg0_4core6option6OptionNtNtNtB8_3ffi6os_str8OsStringEEB8_ (;198;) (type 10) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    local.get 2
    call $_RNvXs_NvMs_NtNtCs51AVrxNfmOa_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 3
          i32.load
          local.tee 2
          i32.const -1
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=8
          local.set 1
          block ;; label = @4
            block ;; label = @5
              local.get 3
              i32.load offset=4
              local.tee 4
              call $getenv
              local.tee 5
              br_if 0 (;@5;)
              local.get 0
              i32.const -1
              i32.store
              br 1 (;@4;)
            end
            block ;; label = @5
              block ;; label = @6
                local.get 5
                call $strlen
                local.tee 2
                br_if 0 (;@6;)
                i32.const 1
                local.set 6
                br 1 (;@5;)
              end
              call $_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2
              local.get 2
              i32.const 1
              call $_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc
              local.tee 6
              i32.eqz
              br_if 4 (;@1;)
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 5
              local.get 2
              memory.copy
            end
            local.get 0
            local.get 2
            i32.store offset=8
            local.get 0
            local.get 6
            i32.store offset=4
            local.get 0
            local.get 2
            i32.store
          end
          local.get 4
          i32.const 0
          i32.store8
          local.get 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 4
          local.get 1
          i32.const 1
          call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
          br 1 (;@2;)
        end
        local.get 0
        i32.const -2
        i32.store
        local.get 0
        i32.const 0
        i64.load offset=1054312
        i64.store offset=4 align=4
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=4
        local.get 2
        i32.const 1
        call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
      end
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 1
    local.get 2
    call $_RNvNtCs51AVrxNfmOa_5alloc7raw_vec12handle_error
    unreachable
  )
  (func $_RNvNtCs4cXvnjfI5fJ_3std9panicking15panic_with_hook (;199;) (type 11) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    i32.store offset=32
    local.get 5
    local.get 0
    i32.store offset=28
    local.get 5
    local.get 2
    i32.store offset=36
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    i32.const 1
                    call $_RNvNtNtCs4cXvnjfI5fJ_3std9panicking11panic_count8increase
                    i32.const 255
                    i32.and
                    br_table 2 (;@6;) 1 (;@7;) 0 (;@8;) 1 (;@7;)
                  end
                  block ;; label = @8
                    i32.const 0
                    i32.load offset=1057040
                    local.tee 6
                    i32.const -1
                    i32.gt_s
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 56
                    i32.add
                    local.get 5
                    i32.const 79
                    i32.add
                    i32.const 1054807
                    i32.const 115
                    call $_RNvYNtNtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
                    local.get 5
                    i32.load8_u offset=56
                    local.get 5
                    i32.load offset=60
                    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs4cXvnjfI5fJ_3std2io5error5ErrorEEB14_
                    br 7 (;@1;)
                  end
                  local.get 6
                  i32.const 1
                  i32.add
                  local.tee 7
                  local.get 6
                  i32.lt_s
                  br_if 4 (;@3;)
                  i32.const 0
                  local.get 7
                  i32.store offset=1057040
                  i32.const 0
                  i32.load offset=1057044
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 5
                  i32.const 16
                  i32.add
                  local.get 0
                  local.get 1
                  i32.load offset=20
                  call_indirect (type 1)
                  local.get 5
                  local.get 4
                  i32.store8 offset=69
                  local.get 5
                  local.get 3
                  i32.store8 offset=68
                  local.get 5
                  local.get 2
                  i32.store offset=64
                  local.get 5
                  local.get 5
                  i64.load offset=16
                  i64.store offset=56 align=4
                  i32.const 0
                  i32.load offset=1057044
                  local.get 5
                  i32.const 56
                  i32.add
                  i32.const 0
                  i32.load offset=1057048
                  i32.load offset=20
                  call_indirect (type 1)
                  br 3 (;@4;)
                end
                local.get 5
                local.get 0
                local.get 1
                i32.load offset=24
                call_indirect (type 1)
                local.get 5
                local.get 5
                i32.load offset=4
                i32.const 0
                local.get 5
                i32.load
                local.tee 1
                select
                i32.store offset=44
                local.get 5
                local.get 1
                i32.const 1
                local.get 1
                select
                i32.store offset=40
                local.get 5
                i32.const 4
                i64.extend_i32_u
                i64.const 32
                i64.shl
                local.get 5
                i32.const 40
                i32.add
                i64.extend_i32_u
                i64.or
                i64.store offset=64
                local.get 5
                i32.const 5
                i64.extend_i32_u
                i64.const 32
                i64.shl
                local.get 5
                i32.const 36
                i32.add
                i64.extend_i32_u
                i64.or
                i64.store offset=56
                local.get 5
                i32.const 48
                i32.add
                local.get 5
                i32.const 79
                i32.add
                i32.const 1055634
                local.get 5
                i32.const 56
                i32.add
                call $_RNvYNtNtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
                local.get 5
                i32.load8_u offset=48
                local.get 5
                i32.load offset=52
                call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs4cXvnjfI5fJ_3std2io5error5ErrorEEB14_
                br 5 (;@1;)
              end
              local.get 5
              i32.const 6
              i64.extend_i32_u
              i64.const 32
              i64.shl
              local.get 5
              i32.const 28
              i32.add
              i64.extend_i32_u
              i64.or
              i64.store offset=64
              local.get 5
              i32.const 5
              i64.extend_i32_u
              i64.const 32
              i64.shl
              local.get 5
              i32.const 36
              i32.add
              i64.extend_i32_u
              i64.or
              i64.store offset=56
              local.get 5
              i32.const 48
              i32.add
              local.get 5
              i32.const 79
              i32.add
              i32.const 1055600
              local.get 5
              i32.const 56
              i32.add
              call $_RNvYNtNtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
              local.get 5
              i32.load8_u offset=48
              local.get 5
              i32.load offset=52
              call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs4cXvnjfI5fJ_3std2io5error5ErrorEEB14_
              br 4 (;@1;)
            end
            local.get 5
            i32.const 8
            i32.add
            local.get 0
            local.get 1
            i32.load offset=20
            call_indirect (type 1)
            local.get 5
            local.get 4
            i32.store8 offset=69
            local.get 5
            local.get 3
            i32.store8 offset=68
            local.get 5
            local.get 2
            i32.store offset=64
            local.get 5
            local.get 5
            i64.load offset=8
            i64.store offset=56 align=4
            local.get 5
            i32.const 56
            i32.add
            call $_RNvNtCs4cXvnjfI5fJ_3std9panicking12default_hook
          end
          i32.const 0
          i32.const 0
          i32.load offset=1057040
          local.tee 2
          i32.const -1
          i32.add
          i32.store offset=1057040
          local.get 2
          i32.const 0
          i32.le_s
          br_if 1 (;@2;)
          i32.const 0
          i32.const 0
          i32.store8 offset=1057028
          block ;; label = @4
            local.get 3
            br_if 0 (;@4;)
            local.get 5
            i32.const 56
            i32.add
            local.get 5
            i32.const 79
            i32.add
            i32.const 1055705
            i32.const 91
            call $_RNvYNtNtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
            local.get 5
            i32.load8_u offset=56
            local.get 5
            i32.load offset=60
            call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs4cXvnjfI5fJ_3std2io5error5ErrorEEB14_
            br 3 (;@1;)
          end
          local.get 0
          local.get 1
          call $_RNvCs9hJ03s5DiqP_7___rustc10rust_panic
          unreachable
        end
        i32.const 1054864
        i32.const 28
        i32.const 1054988
        call $_RNvNtCs8dNdkSoVEg0_4core6option13expect_failed
        unreachable
      end
      i32.const 1056016
      i32.const 77
      i32.const 1056056
      call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
      unreachable
    end
    call $_RNvNtCs4cXvnjfI5fJ_3std7process5abort
    unreachable
  )
  (func $_RNCINvNtNtCs4cXvnjfI5fJ_3std6thread7current17with_current_nameNCNCNvNtB8_9panicking12default_hook00uE0B8_ (;200;) (type 1) (param i32 i32)
    (local i32 i32 i64 i64 i64 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 592
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 1
            i32.eqz
            br_if 0 (;@4;)
            block ;; label = @5
              local.get 1
              i32.load
              local.tee 3
              i32.load offset=16
              local.tee 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.const 20
              i32.add
              i32.load
              i32.const -1
              i32.add
              local.set 3
              br 4 (;@1;)
            end
            i32.const 0
            local.set 1
            i32.const 0
            i64.load offset=1057056
            local.tee 4
            i64.eqz
            br_if 1 (;@3;)
            i32.const 1054320
            i32.const 0
            local.get 4
            local.get 3
            i64.load offset=8
            i64.eq
            select
            local.set 1
            i32.const 4
            local.set 3
            br 3 (;@1;)
          end
          i32.const 0
          local.set 1
          i32.const 0
          i64.load offset=1057056
          local.tee 4
          i64.const 0
          i64.ne
          br_if 1 (;@2;)
        end
        br 1 (;@1;)
      end
      i32.const 1054320
      i32.const 0
      i32.const 0
      i64.load offset=1057072
      local.get 4
      i64.eq
      select
      local.set 1
      i32.const 4
      local.set 3
    end
    local.get 2
    local.get 3
    i32.const 9
    local.get 1
    select
    i32.store offset=12
    local.get 2
    local.get 1
    i32.const 1054363
    local.get 1
    select
    i32.store offset=8
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          i32.const 0
          i64.load offset=1057072
          local.tee 5
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          i32.const 0
          i64.load offset=1057080
          local.set 4
          loop ;; label = @4
            local.get 4
            i64.const -1
            i64.eq
            br_if 2 (;@2;)
            i32.const 0
            local.get 4
            i64.const 1
            i64.add
            local.tee 5
            i32.const 0
            i64.load offset=1057080
            local.tee 6
            local.get 6
            local.get 4
            i64.eq
            local.tee 1
            select
            i64.store offset=1057080
            local.get 6
            local.set 4
            local.get 1
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 0
          local.get 5
          i64.store offset=1057072
        end
        local.get 2
        local.get 5
        i64.store offset=16
        local.get 2
        i32.const 24
        i32.add
        i32.const 0
        i32.const 512
        memory.fill
        local.get 2
        i64.const 0
        i64.store offset=544
        local.get 2
        i32.const 512
        i32.store offset=540
        local.get 0
        i64.load32_u offset=4
        local.set 4
        local.get 2
        local.get 2
        i32.const 24
        i32.add
        i32.store offset=536
        local.get 0
        i64.load32_u
        local.set 6
        local.get 2
        local.get 4
        i32.const 4
        i64.extend_i32_u
        i64.const 32
        i64.shl
        local.tee 5
        i64.or
        local.tee 4
        i64.store offset=584
        local.get 2
        local.get 6
        i32.const 5
        i64.extend_i32_u
        i64.const 32
        i64.shl
        i64.or
        local.tee 6
        i64.store offset=576
        local.get 2
        i32.const 7
        i64.extend_i32_u
        i64.const 32
        i64.shl
        local.get 2
        i32.const 16
        i32.add
        i64.extend_i32_u
        i64.or
        local.tee 7
        i64.store offset=568
        local.get 2
        local.get 5
        local.get 2
        i32.const 8
        i32.add
        i64.extend_i32_u
        i64.or
        local.tee 5
        i64.store offset=560
        local.get 2
        i32.const 552
        i32.add
        local.get 2
        i32.const 536
        i32.add
        i32.const 1054324
        local.get 2
        i32.const 560
        i32.add
        call $_RNvYINtNtNtCs8dNdkSoVEg0_4core2io6cursor6CursorQShENtNtCs4cXvnjfI5fJ_3std2io5Write9write_fmtBR_
        block ;; label = @3
          block ;; label = @4
            local.get 2
            i32.load8_u offset=552
            local.tee 1
            i32.const 255
            i32.ne
            br_if 0 (;@4;)
            local.get 2
            i32.load offset=544
            local.tee 1
            i32.const 513
            i32.ge_u
            br_if 3 (;@1;)
            local.get 2
            i32.const 560
            i32.add
            local.get 0
            i32.load offset=8
            local.get 2
            i32.const 24
            i32.add
            local.get 1
            local.get 0
            i32.load offset=12
            i32.load offset=28
            call_indirect (type 2)
            local.get 2
            i32.load8_u offset=560
            i32.const 3
            i32.ne
            br_if 1 (;@3;)
            local.get 2
            i32.load offset=564
            local.tee 1
            i32.load
            local.set 3
            block ;; label = @5
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.tee 0
              i32.load
              local.tee 8
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              local.get 8
              call_indirect (type 0)
            end
            block ;; label = @5
              local.get 0
              i32.load offset=4
              local.tee 8
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              local.get 8
              local.get 0
              i32.load offset=8
              call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
            end
            local.get 1
            i32.const 12
            i32.const 4
            call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
            br 1 (;@3;)
          end
          block ;; label = @4
            local.get 1
            i32.const 3
            i32.ne
            br_if 0 (;@4;)
            local.get 2
            i32.load offset=556
            local.tee 1
            i32.load
            local.set 8
            block ;; label = @5
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.tee 3
              i32.load
              local.tee 9
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              local.get 9
              call_indirect (type 0)
            end
            block ;; label = @5
              local.get 3
              i32.load offset=4
              local.tee 9
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              local.get 9
              local.get 3
              i32.load offset=8
              call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
            end
            local.get 1
            i32.const 12
            i32.const 4
            call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
          end
          local.get 0
          i32.load offset=12
          i32.const 36
          i32.add
          i32.load
          local.set 1
          local.get 0
          i32.load offset=8
          local.set 0
          local.get 2
          local.get 4
          i64.store offset=584
          local.get 2
          local.get 6
          i64.store offset=576
          local.get 2
          local.get 7
          i64.store offset=568
          local.get 2
          local.get 5
          i64.store offset=560
          local.get 2
          i32.const 552
          i32.add
          local.get 0
          i32.const 1054324
          local.get 2
          i32.const 560
          i32.add
          local.get 1
          call_indirect (type 2)
          local.get 2
          i32.load8_u offset=552
          i32.const 3
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=556
          local.tee 1
          i32.load
          local.set 3
          block ;; label = @4
            local.get 1
            i32.const 4
            i32.add
            i32.load
            local.tee 0
            i32.load
            local.tee 8
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 8
            call_indirect (type 0)
          end
          block ;; label = @4
            local.get 0
            i32.load offset=4
            local.tee 8
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 8
            local.get 0
            i32.load offset=8
            call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
          end
          local.get 1
          i32.const 12
          i32.const 4
          call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
        end
        local.get 2
        i32.const 592
        i32.add
        global.set $__stack_pointer
        return
      end
      call $_RNvNvMNtNtCs4cXvnjfI5fJ_3std6thread2idNtB4_8ThreadId3new9exhausted
      unreachable
    end
    i32.const 0
    local.get 1
    i32.const 512
    i32.const 1054452
    call $_RNvNtNtCs8dNdkSoVEg0_4core5slice5index16slice_index_fail
    unreachable
  )
  (func $_RNvXs1i_NtCs8dNdkSoVEg0_4core3fmtReNtB6_7Display3fmtCs4cXvnjfI5fJ_3std (;201;) (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_RNvXsi_NtCs8dNdkSoVEg0_4core3fmteNtB5_7Display3fmt
  )
  (func $_RNvXs1i_NtCs8dNdkSoVEg0_4core3fmtRNtNtNtB8_5panic8location8LocationNtB6_7Display3fmtCs4cXvnjfI5fJ_3std (;202;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load offset=4
    local.set 3
    local.get 1
    i32.load
    local.set 4
    local.get 2
    local.get 0
    i32.load
    local.tee 1
    i64.load align=4
    i64.store align=4
    local.get 2
    i32.const 8
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 5
    local.get 1
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    local.get 2
    local.get 5
    local.get 1
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=16
    local.get 2
    i32.const 4
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 2
    i64.extend_i32_u
    i64.or
    i64.store offset=8
    local.get 4
    local.get 3
    i32.const 1055992
    local.get 2
    i32.const 8
    i32.add
    call $_RNvNtCs8dNdkSoVEg0_4core3fmt5write
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_RNvYINtNtNtCs8dNdkSoVEg0_4core2io6cursor6CursorQShENtNtCs4cXvnjfI5fJ_3std2io5Write9write_fmtBR_ (;203;) (type 2) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 0
    i32.const 255
    i32.store8
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    local.get 0
    i64.load align=4
    i64.store
    local.get 4
    i32.const 1054192
    local.get 2
    local.get 3
    call $_RNvNtCs8dNdkSoVEg0_4core3fmt5write
    local.set 1
    local.get 4
    i32.load8_u
    local.set 3
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 255
          i32.and
          i32.const 255
          i32.ne
          br_if 1 (;@2;)
          i32.const 1054088
          i32.const 173
          i32.const 1054176
          call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
          unreachable
        end
        local.get 3
        i32.const 255
        i32.and
        i32.const 3
        i32.ne
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=4
        local.tee 0
        i32.load
        local.set 3
        block ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.tee 1
          i32.load
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 2
          call_indirect (type 0)
        end
        block ;; label = @3
          local.get 1
          i32.load offset=4
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 2
          local.get 1
          i32.load offset=8
          call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
        end
        local.get 0
        i32.const 12
        i32.const 4
        call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
        br 1 (;@1;)
      end
      local.get 0
      local.get 4
      i64.load
      i64.store align=4
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_RNvNtCs4cXvnjfI5fJ_3std5alloc24default_alloc_error_hook (;204;) (type 1) (param i32 i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 0
    i32.load8_u offset=1057088
    local.set 3
    i32.const 0
    i32.const 1
    i32.store8 offset=1057088
    i32.const 8
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.set 4
    block ;; label = @1
      block ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        i32.store offset=12
        local.get 2
        local.get 4
        local.get 2
        i32.const 12
        i32.add
        i64.extend_i32_u
        i64.or
        i64.store offset=16
        local.get 2
        i32.const 4
        i32.add
        local.get 2
        i32.const 31
        i32.add
        i32.const 1055373
        local.get 2
        i32.const 16
        i32.add
        call $_RNvYNtNtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
        local.get 2
        i32.load8_u offset=4
        local.get 2
        i32.load offset=8
        call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs4cXvnjfI5fJ_3std2io5error5ErrorEEB14_
        call $_RNvNtNtCs4cXvnjfI5fJ_3std3sys9backtrace4lock
        local.set 1
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                call $_RNvNtCs4cXvnjfI5fJ_3std5panic19get_backtrace_style
                i32.const 255
                i32.and
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;) 3 (;@3;)
              end
              local.get 2
              i32.const 16
              i32.add
              local.get 2
              i32.const 31
              i32.add
              i32.const 9
              i32.const 0
              call $_RNvMNtNtCs4cXvnjfI5fJ_3std3sys9backtraceNtB2_13BacktraceLock5print
              local.get 2
              i32.load8_u offset=16
              local.get 2
              i32.load offset=20
              call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs4cXvnjfI5fJ_3std2io5error5ErrorEEB14_
              br 2 (;@3;)
            end
            local.get 2
            i32.const 16
            i32.add
            local.get 2
            i32.const 31
            i32.add
            i32.const 9
            i32.const 1
            call $_RNvMNtNtCs4cXvnjfI5fJ_3std3sys9backtraceNtB2_13BacktraceLock5print
            local.get 2
            i32.load8_u offset=16
            local.get 2
            i32.load offset=20
            call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs4cXvnjfI5fJ_3std2io5error5ErrorEEB14_
            br 1 (;@3;)
          end
          local.get 2
          i32.const 16
          i32.add
          local.get 2
          i32.const 31
          i32.add
          i32.const 1054492
          i32.const 157
          call $_RNvYNtNtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
          local.get 2
          i32.load8_u offset=16
          local.get 2
          i32.load offset=20
          call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs4cXvnjfI5fJ_3std2io5error5ErrorEEB14_
        end
        local.get 1
        i32.const 0
        i32.store8
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store offset=12
      local.get 2
      local.get 4
      local.get 2
      i32.const 12
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=16
      local.get 2
      i32.const 4
      i32.add
      local.get 2
      i32.const 31
      i32.add
      i32.const 1055452
      local.get 2
      i32.const 16
      i32.add
      call $_RNvYNtNtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
      local.get 2
      i32.load8_u offset=4
      local.get 2
      i32.load offset=8
      call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs4cXvnjfI5fJ_3std2io5error5ErrorEEB14_
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_RNvNtCs4cXvnjfI5fJ_3std7process5abort (;205;) (type 9)
    call $_RNvNtNtNtCs4cXvnjfI5fJ_3std3sys3pal4wasi14abort_internal
    unreachable
  )
  (func $_RNCNvNtCs4cXvnjfI5fJ_3std9panicking12default_hook0B5_ (;206;) (type 10) (param i32 i32 i32)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    call $_RNvNtNtCs4cXvnjfI5fJ_3std3sys9backtrace4lock
    local.set 4
    local.get 0
    i64.load align=4
    local.set 5
    local.get 3
    local.get 2
    i32.store offset=24
    local.get 3
    local.get 1
    i32.store offset=20
    local.get 3
    local.get 5
    i64.store offset=12 align=4
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.load offset=1057064
        local.tee 6
        i32.const 2
        i32.gt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 12
        i32.add
        i32.const 0
        call $_RNCINvNtNtCs4cXvnjfI5fJ_3std6thread7current17with_current_nameNCNCNvNtB8_9panicking12default_hook00uE0B8_
        br 1 (;@1;)
      end
      local.get 3
      local.get 6
      i32.const -8
      i32.add
      i32.store offset=28
      local.get 3
      i32.const 12
      i32.add
      local.get 3
      i32.const 28
      i32.add
      call $_RNCINvNtNtCs4cXvnjfI5fJ_3std6thread7current17with_current_nameNCNCNvNtB8_9panicking12default_hook00uE0B8_
    end
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.load offset=8
            i32.load8_u
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;) 3 (;@1;)
          end
          local.get 3
          i32.const 12
          i32.add
          local.get 1
          local.get 2
          i32.load offset=36
          i32.const 0
          call $_RNvMNtNtCs4cXvnjfI5fJ_3std3sys9backtraceNtB2_13BacktraceLock5print
          local.get 3
          i32.load8_u offset=12
          local.get 3
          i32.load offset=16
          call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs4cXvnjfI5fJ_3std2io5error5ErrorEEB14_
          br 2 (;@1;)
        end
        local.get 3
        i32.const 12
        i32.add
        local.get 1
        local.get 2
        i32.load offset=36
        i32.const 1
        call $_RNvMNtNtCs4cXvnjfI5fJ_3std3sys9backtraceNtB2_13BacktraceLock5print
        local.get 3
        i32.load8_u offset=12
        local.get 3
        i32.load offset=16
        call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs4cXvnjfI5fJ_3std2io5error5ErrorEEB14_
        br 1 (;@1;)
      end
      i32.const 0
      i32.load8_u offset=1057004
      local.set 0
      i32.const 0
      i32.const 0
      i32.store8 offset=1057004
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 12
      i32.add
      local.get 1
      i32.const 1054492
      i32.const 157
      local.get 2
      i32.load offset=36
      call_indirect (type 2)
      local.get 3
      i32.load8_u offset=12
      local.get 3
      i32.load offset=16
      call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs4cXvnjfI5fJ_3std2io5error5ErrorEEB14_
    end
    local.get 4
    i32.const 0
    i32.store8
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_RNvNtNtCs4cXvnjfI5fJ_3std3sys9backtrace4lock (;207;) (type 7) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    i32.load8_u offset=1057089
    local.set 1
    i32.const 0
    i32.const 1
    i32.store8 offset=1057089
    local.get 0
    local.get 1
    i32.store8 offset=15
    block ;; label = @1
      local.get 1
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      local.get 0
      i32.const 15
      i32.add
      i32.const 1055372
      i32.const 1055018
      i32.const 65
      i32.const 1055144
      call $_RINvNtCs8dNdkSoVEg0_4core9panicking13assert_failedbbECs4cXvnjfI5fJ_3std
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 1057089
  )
  (func $_RNvMNtNtCs4cXvnjfI5fJ_3std3sys9backtraceNtB2_13BacktraceLock5print (;208;) (type 2) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 3
    i32.store8 offset=7
    local.get 4
    i32.const 10
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 4
    i32.const 7
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=8
    local.get 0
    local.get 1
    i32.const 1054728
    local.get 4
    i32.const 8
    i32.add
    local.get 2
    call_indirect (type 2)
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_RNvNtCs4cXvnjfI5fJ_3std9panicking12default_hook (;209;) (type 0) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 255
    local.set 2
    block ;; label = @1
      local.get 0
      i32.load8_u offset=13
      br_if 0 (;@1;)
      i32.const 1
      local.set 2
      i32.const 0
      i32.load offset=1057024
      i32.const 1
      i32.gt_u
      br_if 0 (;@1;)
      call $_RNvNtCs4cXvnjfI5fJ_3std5panic19get_backtrace_style
      local.set 2
    end
    local.get 1
    local.get 2
    i32.store8 offset=11
    local.get 1
    local.get 0
    i32.load offset=8
    i32.store offset=12
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_RNvNtCs4cXvnjfI5fJ_3std9panicking14payload_as_str
    local.get 1
    local.get 1
    i64.load
    i64.store offset=16 align=4
    local.get 1
    local.get 1
    i32.const 11
    i32.add
    i32.store offset=32
    local.get 1
    local.get 1
    i32.const 16
    i32.add
    i32.store offset=28
    local.get 1
    local.get 1
    i32.const 12
    i32.add
    i32.store offset=24
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          i32.const 0
          i32.load8_u offset=1057052
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.const 1
          i32.store8 offset=1057052
          i32.const 0
          i32.load offset=1057020
          local.set 0
          i32.const 0
          i32.const 0
          i32.store offset=1057020
          local.get 0
          br_if 1 (;@2;)
        end
        local.get 1
        i32.const 24
        i32.add
        local.get 1
        i32.const 47
        i32.add
        i32.const 1055412
        call $_RNCNvNtCs4cXvnjfI5fJ_3std9panicking12default_hook0B5_
        br 1 (;@1;)
      end
      local.get 1
      i32.const 24
      i32.add
      local.get 0
      i32.const 8
      i32.add
      call $_RNvMs5_NtNtNtCs4cXvnjfI5fJ_3std4sync6poison5mutexINtB5_5MutexINtNtCs51AVrxNfmOa_5alloc3vec3VechEE4lockBb_
      local.tee 2
      i32.const 4
      i32.add
      i32.const 1055548
      call $_RNCNvNtCs4cXvnjfI5fJ_3std9panicking12default_hook0B5_
      local.get 2
      i32.const 0
      i32.store8
      i32.const 0
      i32.const 1
      i32.store8 offset=1057052
      i32.const 0
      i32.load offset=1057020
      local.set 2
      i32.const 0
      local.get 0
      i32.store offset=1057020
      local.get 1
      local.get 2
      i32.store offset=40
      local.get 1
      i32.const 1
      i32.store offset=36
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 2
      i32.load
      local.tee 0
      i32.const -1
      i32.add
      i32.store
      local.get 0
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.const 36
      i32.add
      i32.const 4
      i32.add
      call $_RNvMsn_NtCs51AVrxNfmOa_5alloc4syncINtB5_3ArcINtNtNtNtCs4cXvnjfI5fJ_3std4sync6poison5mutex5MutexINtNtB7_3vec3VechEEE9drop_slowBP_
    end
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_RNvCs9hJ03s5DiqP_7___rustc10rust_panic (;210;) (type 1) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    local.get 1
    call $_RNvCs9hJ03s5DiqP_7___rustc18___rust_start_panic
    i32.store offset=4
    local.get 2
    i32.const 8
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 2
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=16
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 31
    i32.add
    i32.const 1054628
    local.get 2
    i32.const 16
    i32.add
    call $_RNvYNtNtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
    local.get 2
    i32.load8_u offset=8
    local.get 2
    i32.load offset=12
    call $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs4cXvnjfI5fJ_3std2io5error5ErrorEEB14_
    call $_RNvNtCs4cXvnjfI5fJ_3std7process5abort
    unreachable
  )
  (func $_RNvYNtNtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_ (;211;) (type 2) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 0
    i32.const 255
    i32.store8
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    local.get 0
    i64.load align=4
    i64.store
    local.get 4
    i32.const 1054216
    local.get 2
    local.get 3
    call $_RNvNtCs8dNdkSoVEg0_4core3fmt5write
    local.set 1
    local.get 4
    i32.load8_u
    local.set 3
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 255
          i32.and
          i32.const 255
          i32.ne
          br_if 1 (;@2;)
          i32.const 1054088
          i32.const 173
          i32.const 1054176
          call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
          unreachable
        end
        local.get 3
        i32.const 255
        i32.and
        i32.const 3
        i32.ne
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=4
        local.tee 0
        i32.load
        local.set 3
        block ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.tee 1
          i32.load
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 2
          call_indirect (type 0)
        end
        block ;; label = @3
          local.get 1
          i32.load offset=4
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 2
          local.get 1
          i32.load offset=8
          call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
        end
        local.get 0
        i32.const 12
        i32.const 4
        call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
        br 1 (;@1;)
      end
      local.get 0
      local.get 4
      i64.load
      i64.store align=4
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_RNvCs9hJ03s5DiqP_7___rustc11___rdl_alloc (;212;) (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.const 8
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          local.get 0
          i32.le_u
          br_if 1 (;@2;)
        end
        local.get 2
        i32.const 0
        i32.store offset=12
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        i32.const 4
        local.get 1
        i32.const 4
        i32.gt_u
        select
        local.get 0
        call $posix_memalign
        local.set 1
        i32.const 0
        local.get 2
        i32.load offset=12
        local.get 1
        select
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      call $malloc
      local.set 1
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_RNvCs9hJ03s5DiqP_7___rustc12___rust_abort (;213;) (type 9)
    call $_RNvNtCs4cXvnjfI5fJ_3std7process5abort
    unreachable
  )
  (func $_RNvCs9hJ03s5DiqP_7___rustc13___rdl_dealloc (;214;) (type 10) (param i32 i32 i32)
    local.get 0
    call $free
  )
  (func $_RNvCs9hJ03s5DiqP_7___rustc13___rdl_realloc (;215;) (type 8) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 2
          i32.const 8
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.le_u
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 5
        local.get 4
        i32.const 0
        i32.store offset=12
        local.get 4
        i32.const 12
        i32.add
        local.get 2
        i32.const 4
        local.get 2
        i32.const 4
        i32.gt_u
        select
        local.get 3
        call $posix_memalign
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=12
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        block ;; label = @3
          local.get 3
          local.get 1
          local.get 3
          local.get 1
          i32.lt_u
          select
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 0
          local.get 3
          memory.copy
        end
        local.get 0
        call $free
        local.get 2
        local.set 5
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      call $realloc
      local.set 5
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5
  )
  (func $_RNvCs9hJ03s5DiqP_7___rustc17rust_begin_unwind (;216;) (type 0) (param i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i64.load align=4
    local.set 2
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    local.get 2
    i64.store offset=4 align=4
    local.get 1
    i32.const 4
    i32.add
    call $_RINvNtNtCs4cXvnjfI5fJ_3std3sys9backtrace26___rust_end_short_backtraceNCNvNtB6_9panicking13panic_handler0zEB6_
    unreachable
  )
  (func $_RNvCs9hJ03s5DiqP_7___rustc18___rdl_alloc_zeroed (;217;) (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.const 8
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          local.get 0
          i32.le_u
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 3
        local.get 2
        i32.const 0
        i32.store offset=12
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        i32.const 4
        local.get 1
        i32.const 4
        i32.gt_u
        select
        local.get 0
        call $posix_memalign
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        block ;; label = @3
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 0
          local.get 0
          memory.fill
        end
        local.get 1
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 1
      call $calloc
      local.set 3
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3
  )
  (func $_RNvCs9hJ03s5DiqP_7___rustc26___rust_alloc_error_handler (;218;) (type 1) (param i32 i32)
    local.get 1
    local.get 0
    call $_RNvNtCs4cXvnjfI5fJ_3std5alloc8rust_oom
    unreachable
  )
  (func $_RNvNtCs4cXvnjfI5fJ_3std5alloc8rust_oom (;219;) (type 1) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call $_RINvNtNtCs4cXvnjfI5fJ_3std3sys9backtrace26___rust_end_short_backtraceNCNvNtB6_5alloc8rust_oom0zEB6_
    unreachable
  )
  (func $_RNvXNvMNtNtCs4cXvnjfI5fJ_3std3sys9backtraceNtB5_13BacktraceLock5printNtB2_16DisplayBacktraceNtNtCs8dNdkSoVEg0_4core3fmt7Display3fmt (;220;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load offset=4
    local.set 3
    local.get 1
    i32.load
    local.set 4
    local.get 0
    i32.load8_u
    local.set 0
    local.get 2
    i32.const 4
    i32.add
    call $_RNvNtCs4cXvnjfI5fJ_3std3env11current_dir
    local.get 2
    i64.load offset=8 align=4
    local.set 5
    block ;; label = @1
      local.get 2
      i32.load offset=4
      local.tee 1
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      local.get 5
      i64.const 255
      i64.and
      i64.const 3
      i64.ne
      br_if 0 (;@1;)
      local.get 5
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.tee 6
      i32.load
      local.set 7
      block ;; label = @2
        local.get 6
        i32.const 4
        i32.add
        i32.load
        local.tee 8
        i32.load
        local.tee 9
        i32.eqz
        br_if 0 (;@2;)
        local.get 7
        local.get 9
        call_indirect (type 0)
      end
      block ;; label = @2
        local.get 8
        i32.load offset=4
        local.tee 9
        i32.eqz
        br_if 0 (;@2;)
        local.get 7
        local.get 9
        local.get 8
        i32.load offset=8
        call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
      end
      local.get 6
      i32.const 12
      i32.const 4
      call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
    end
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 4
            i32.const 1055800
            i32.const 17
            local.get 3
            i32.load offset=12
            local.tee 3
            call_indirect (type 3)
            br_if 0 (;@4;)
            local.get 0
            i32.const 1
            i32.and
            br_if 1 (;@3;)
            local.get 4
            i32.const 1055817
            i32.const 88
            local.get 3
            call_indirect (type 3)
            i32.eqz
            br_if 1 (;@3;)
          end
          i32.const 1
          local.set 4
          local.get 1
          i32.const 0
          i32.gt_s
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        i32.const 0
        local.set 4
        local.get 1
        i32.const 0
        i32.le_s
        br_if 1 (;@1;)
      end
      local.get 5
      i32.wrap_i64
      local.get 1
      i32.const 1
      call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4
  )
  (func $_RNvNtCs4cXvnjfI5fJ_3std3env7__var_os (;221;) (type 10) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 416
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 2
          i32.const 383
          i32.gt_u
          br_if 0 (;@3;)
          block ;; label = @4
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.const 20
            i32.add
            local.get 1
            local.get 2
            memory.copy
          end
          local.get 3
          i32.const 20
          i32.add
          local.get 2
          i32.add
          i32.const 0
          i32.store8
          local.get 3
          i32.const 404
          i32.add
          local.get 3
          i32.const 20
          i32.add
          local.get 2
          i32.const 1
          i32.add
          call $_RNvMs3_NtNtCs8dNdkSoVEg0_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul
          block ;; label = @4
            local.get 3
            i32.load offset=404
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            i32.const 0
            i64.load offset=1054312
            i64.store offset=12 align=4
            i32.const -2
            local.set 2
            br 2 (;@2;)
          end
          block ;; label = @4
            local.get 3
            i32.load offset=408
            call $getenv
            local.tee 1
            br_if 0 (;@4;)
            i32.const -1
            local.set 2
            br 2 (;@2;)
          end
          block ;; label = @4
            block ;; label = @5
              local.get 1
              call $strlen
              local.tee 2
              br_if 0 (;@5;)
              i32.const 1
              local.set 4
              br 1 (;@4;)
            end
            call $_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2
            local.get 2
            i32.const 1
            call $_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc
            local.tee 4
            i32.eqz
            br_if 3 (;@1;)
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 1
            local.get 2
            memory.copy
          end
          local.get 3
          local.get 2
          i32.store offset=16
          local.get 3
          local.get 4
          i32.store offset=12
          br 1 (;@2;)
        end
        local.get 3
        i32.const 8
        i32.add
        local.get 1
        local.get 2
        call $_RINvNtNtNtCs4cXvnjfI5fJ_3std3sys7helpers14small_c_string24run_with_cstr_allocatingINtNtCs8dNdkSoVEg0_4core6option6OptionNtNtNtB8_3ffi6os_str8OsStringEEB8_
        local.get 3
        i32.load offset=8
        local.set 2
      end
      block ;; label = @2
        block ;; label = @3
          local.get 2
          i32.const -2
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          i64.load offset=12 align=4
          i64.store offset=4 align=4
          local.get 0
          local.get 2
          i32.store
          br 1 (;@2;)
        end
        block ;; label = @3
          local.get 3
          i32.load8_u offset=12
          i32.const 3
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=16
          local.tee 2
          i32.load
          local.set 4
          block ;; label = @4
            local.get 2
            i32.const 4
            i32.add
            i32.load
            local.tee 1
            i32.load
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            call_indirect (type 0)
          end
          block ;; label = @4
            local.get 1
            i32.load offset=4
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            local.get 1
            i32.load offset=8
            call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
          end
          local.get 2
          i32.const 12
          i32.const 4
          call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
        end
        local.get 0
        i32.const -1
        i32.store
      end
      local.get 3
      i32.const 416
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 1
    local.get 2
    call $_RNvNtCs51AVrxNfmOa_5alloc7raw_vec12handle_error
    unreachable
  )
  (func $_RNvMs5_NtNtNtCs4cXvnjfI5fJ_3std4sync6poison5mutexINtB5_5MutexINtNtCs51AVrxNfmOa_5alloc3vec3VechEE4lockBb_ (;222;) (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.load8_u
    local.set 2
    local.get 0
    i32.const 1
    i32.store8
    local.get 1
    local.get 2
    i32.store8 offset=15
    block ;; label = @1
      local.get 2
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      local.get 1
      i32.const 15
      i32.add
      i32.const 1055372
      i32.const 1055018
      i32.const 65
      i32.const 1055144
      call $_RINvNtCs8dNdkSoVEg0_4core9panicking13assert_failedbbECs4cXvnjfI5fJ_3std
      unreachable
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_RNvMsn_NtCs51AVrxNfmOa_5alloc4syncINtB5_3ArcINtNtNtNtCs4cXvnjfI5fJ_3std4sync6poison5mutex5MutexINtNtB7_3vec3VechEEE9drop_slowBP_ (;223;) (type 0) (param i32)
    (local i32)
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      i32.const 12
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      i32.add
      i32.load
      local.get 1
      i32.const 1
      call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
    end
    block ;; label = @1
      local.get 0
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.const -1
      i32.add
      i32.store offset=4
      local.get 1
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 24
      i32.const 4
      call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
    end
  )
  (func $_RNvNtCs4cXvnjfI5fJ_3std3env11current_dir (;224;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2
    i32.const 512
    local.set 2
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            i32.const 512
            i32.const 1
            call $_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 3
            i32.store offset=8
            local.get 1
            i32.const 512
            i32.store offset=4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 3
                  i32.const 512
                  call $getcwd
                  br_if 0 (;@7;)
                  i32.const 512
                  local.set 2
                  loop ;; label = @8
                    i32.const 0
                    i32.load offset=1057092
                    local.tee 4
                    i32.const 68
                    i32.ne
                    br_if 2 (;@6;)
                    local.get 1
                    local.get 2
                    i32.store offset=12
                    local.get 1
                    i32.const 4
                    i32.add
                    local.get 2
                    i32.const 1
                    i32.const 1
                    i32.const 1
                    call $_RINvNvMs2_NtCs51AVrxNfmOa_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4cXvnjfI5fJ_3std
                    local.get 1
                    i32.load offset=8
                    local.tee 3
                    local.get 1
                    i32.load offset=4
                    local.tee 2
                    call $getcwd
                    i32.eqz
                    br_if 0 (;@8;)
                  end
                end
                local.get 1
                local.get 3
                call $strlen
                local.tee 4
                i32.store offset=12
                local.get 2
                local.get 4
                i32.le_u
                br_if 4 (;@2;)
                local.get 4
                br_if 1 (;@5;)
                i32.const 1
                local.set 5
                local.get 3
                local.get 2
                i32.const 1
                call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
                br 3 (;@3;)
              end
              local.get 0
              local.get 4
              i32.store offset=8
              local.get 0
              i64.const 4294967295
              i64.store align=4
              local.get 2
              i32.eqz
              br_if 4 (;@1;)
              local.get 3
              local.get 2
              i32.const 1
              call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
              br 4 (;@1;)
            end
            local.get 3
            local.get 2
            i32.const 1
            local.get 4
            call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc
            local.tee 5
            br_if 1 (;@3;)
            i32.const 1
            local.get 4
            call $_RNvNtCs51AVrxNfmOa_5alloc7raw_vec12handle_error
            unreachable
          end
          i32.const 1
          i32.const 512
          call $_RNvNtCs51AVrxNfmOa_5alloc7raw_vec12handle_error
          unreachable
        end
        local.get 1
        local.get 4
        i32.store offset=4
        local.get 1
        local.get 5
        i32.store offset=8
      end
      local.get 0
      local.get 1
      i32.load offset=12
      i32.store offset=8
      local.get 0
      local.get 1
      i64.load offset=4 align=4
      i64.store align=4
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_RNvNtCs4cXvnjfI5fJ_3std5panic19get_backtrace_style (;225;) (type 7) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 3
    local.set 1
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=1057036
      i32.const -1
      i32.add
      local.tee 2
      i32.const 255
      i32.and
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.const 1055004
      i32.const 14
      call $_RNvNtCs4cXvnjfI5fJ_3std3env7__var_os
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 3
          i32.const -1
          i32.ne
          br_if 0 (;@3;)
          i32.const 2
          local.set 2
          br 1 (;@2;)
        end
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 0
                i32.load offset=12
                i32.const -1
                i32.add
                br_table 0 (;@6;) 2 (;@4;) 2 (;@4;) 1 (;@5;) 2 (;@4;)
              end
              local.get 0
              i32.load offset=8
              local.tee 4
              i32.load8_u
              i32.const 48
              i32.ne
              br_if 1 (;@4;)
              i32.const 3
              local.set 1
              i32.const 2
              local.set 2
              local.get 3
              br_if 2 (;@3;)
              br 3 (;@2;)
            end
            local.get 0
            i32.load offset=8
            local.tee 4
            i32.load align=1
            i32.const 1819047270
            i32.ne
            br_if 0 (;@4;)
            i32.const 2
            local.set 1
            i32.const 1
            local.set 2
            local.get 3
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 1
          local.set 1
          i32.const 0
          local.set 2
          local.get 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=8
          local.set 4
        end
        local.get 4
        local.get 3
        i32.const 1
        call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
      end
      i32.const 0
      i32.const 0
      i32.load8_u offset=1057036
      local.tee 3
      local.get 1
      local.get 3
      select
      i32.store8 offset=1057036
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const -1
      i32.add
      i32.const -1
      local.get 3
      i32.const 4
      i32.lt_u
      select
      local.set 2
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
  )
  (func $_RNvNtNtNtCs4cXvnjfI5fJ_3std3sys3pal4wasi14abort_internal (;226;) (type 9)
    call $abort
    unreachable
  )
  (func $_RNvNtCs4cXvnjfI5fJ_3std9panicking14payload_as_str (;227;) (type 10) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    local.get 2
    i32.load offset=12
    local.tee 4
    call_indirect (type 1)
    i32.const 4
    local.set 2
    local.get 1
    local.set 5
    block ;; label = @1
      block ;; label = @2
        local.get 3
        i64.load
        i64.const -5046843186896832932
        i64.xor
        local.get 3
        i64.load offset=8
        i64.const 2648505749699871217
        i64.xor
        i64.or
        i64.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        local.get 4
        call_indirect (type 1)
        block ;; label = @3
          local.get 3
          i64.load
          i64.const -1033515803813782293
          i64.xor
          local.get 3
          i64.load offset=8
          i64.const 6508009552152611893
          i64.xor
          i64.or
          i64.const 0
          i64.eq
          br_if 0 (;@3;)
          i32.const 1055588
          local.set 1
          i32.const 12
          local.set 2
          br 2 (;@1;)
        end
        local.get 1
        i32.const 4
        i32.add
        local.set 5
        i32.const 8
        local.set 2
      end
      local.get 1
      local.get 2
      i32.add
      i32.load
      local.set 2
      local.get 5
      i32.load
      local.set 1
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_RNvNtNtCs4cXvnjfI5fJ_3std9panicking11panic_count8increase (;228;) (type 6) (param i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 1
    i32.const 0
    i32.const 0
    i32.load offset=1057068
    local.tee 2
    i32.const 1
    i32.add
    i32.store offset=1057068
    block ;; label = @1
      local.get 2
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      i32.const 1
      local.set 1
      i32.const 0
      i32.load8_u offset=1057028
      br_if 0 (;@1;)
      i32.const 0
      local.get 0
      i32.store8 offset=1057028
      i32.const 0
      i32.const 0
      i32.load offset=1057024
      i32.const 1
      i32.add
      i32.store offset=1057024
      i32.const 2
      local.set 1
    end
    local.get 1
  )
  (func $_RNvXs1j_NtCs8dNdkSoVEg0_4core3fmtQDNtNtB8_5panic12PanicPayloadEL_NtB6_7Display3fmtCs4cXvnjfI5fJ_3std (;229;) (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 4)
  )
  (func $_RNvYINtNtCs51AVrxNfmOa_5alloc3vec3VechENtNtCs4cXvnjfI5fJ_3std2io5Write9write_fmtBF_ (;230;) (type 2) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 0
    i32.const 255
    i32.store8
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    local.get 0
    i64.load align=4
    i64.store
    local.get 4
    i32.const 1054064
    local.get 2
    local.get 3
    call $_RNvNtCs8dNdkSoVEg0_4core3fmt5write
    local.set 1
    local.get 4
    i32.load8_u
    local.set 3
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 255
          i32.and
          i32.const 255
          i32.ne
          br_if 1 (;@2;)
          i32.const 1054088
          i32.const 173
          i32.const 1054176
          call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
          unreachable
        end
        local.get 3
        i32.const 255
        i32.and
        i32.const 3
        i32.ne
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=4
        local.tee 0
        i32.load
        local.set 3
        block ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.tee 1
          i32.load
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 2
          call_indirect (type 0)
        end
        block ;; label = @3
          local.get 1
          i32.load offset=4
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 2
          local.get 1
          i32.load offset=8
          call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
        end
        local.get 0
        i32.const 12
        i32.const 4
        call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
        br 1 (;@1;)
      end
      local.get 0
      local.get 4
      i64.load
      i64.store align=4
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_RNvXNtCs8dNdkSoVEg0_4core3anyNtNtCs51AVrxNfmOa_5alloc6string6StringNtB2_3Any7type_idCs4cXvnjfI5fJ_3std (;231;) (type 1) (param i32 i32)
    local.get 0
    i32.const 0
    i64.load offset=1054720 align=4
    i64.store offset=8 align=4
    local.get 0
    i32.const 0
    i64.load offset=1054712 align=4
    i64.store align=4
  )
  (func $_RNvXNtCs8dNdkSoVEg0_4core3anyReNtB2_3Any7type_idCs4cXvnjfI5fJ_3std (;232;) (type 1) (param i32 i32)
    local.get 0
    i32.const 0
    i64.load offset=1054704 align=4
    i64.store offset=8 align=4
    local.get 0
    i32.const 0
    i64.load offset=1054696 align=4
    i64.store align=4
  )
  (func $_RNvXNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmtINtB2_7AdapterINtNtCs51AVrxNfmOa_5alloc3vec3VechEENtNtCs8dNdkSoVEg0_4core3fmt5Write9write_strB6_ (;233;) (type 3) (param i32 i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 2
          local.get 0
          i32.load offset=8
          local.tee 0
          i32.load
          local.get 0
          i32.load offset=8
          local.tee 3
          i32.sub
          i32.le_u
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          local.get 2
          i32.const 1
          i32.const 1
          call $_RINvNvMs2_NtCs51AVrxNfmOa_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4cXvnjfI5fJ_3std
          local.get 0
          i32.load offset=8
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      memory.copy
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0
  )
  (func $_RNvXNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmtINtB2_7AdapterINtNtNtCs8dNdkSoVEg0_4core2io6cursor6CursorQShEENtNtB15_3fmt5Write9write_strB6_ (;234;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64 i32 i32 i64)
    i32.const 0
    local.set 3
    block ;; label = @1
      i32.const 0
      local.get 0
      i32.load offset=8
      local.tee 4
      i32.load offset=4
      local.tee 5
      local.get 4
      i64.load offset=8
      local.tee 6
      i64.const 4294967295
      local.get 6
      i64.const 4294967295
      i64.lt_u
      select
      i32.wrap_i64
      i32.sub
      local.tee 7
      local.get 7
      local.get 5
      i32.gt_u
      select
      local.tee 7
      local.get 2
      local.get 7
      local.get 2
      i32.lt_u
      select
      local.tee 8
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load
      local.get 6
      local.get 5
      i64.extend_i32_u
      local.tee 9
      local.get 6
      local.get 9
      i64.lt_u
      select
      i32.wrap_i64
      i32.add
      local.get 1
      local.get 8
      memory.copy
    end
    local.get 4
    local.get 6
    local.get 8
    i64.extend_i32_u
    i64.add
    i64.store offset=8
    block ;; label = @1
      local.get 7
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 3
      i32.const 0
      i64.load offset=1055792
      local.tee 6
      i64.const 255
      i64.and
      i64.const 255
      i64.eq
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 0
        i32.load8_u
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=4
        local.tee 2
        i32.load
        local.set 7
        block ;; label = @3
          local.get 2
          i32.const 4
          i32.add
          i32.load
          local.tee 4
          i32.load
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          local.get 3
          call_indirect (type 0)
        end
        block ;; label = @3
          local.get 4
          i32.load offset=4
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          local.get 3
          local.get 4
          i32.load offset=8
          call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
        end
        local.get 2
        i32.const 12
        i32.const 4
        call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
      end
      local.get 0
      local.get 6
      i64.store align=4
      i32.const 1
      local.set 3
    end
    local.get 3
  )
  (func $_RNvXNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCs8dNdkSoVEg0_4core3fmt5Write9write_strB6_ (;235;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      block ;; label = @2
        block ;; label = @3
          loop ;; label = @4
            block ;; label = @5
              block ;; label = @6
                i32.const 2
                local.get 1
                local.get 2
                call $write
                local.tee 4
                i32.const -1
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                i32.const 0
                i32.store8 offset=11
                local.get 3
                i32.const 0
                i32.store16 offset=9 align=1
                local.get 3
                i32.const 0
                i32.store8 offset=8
                local.get 3
                i32.const 0
                i32.load offset=1057092
                local.tee 4
                i32.store offset=12
                local.get 4
                i32.const 27
                i32.eq
                br_if 1 (;@5;)
                local.get 3
                i32.const 8
                i32.add
                local.set 4
                br 4 (;@2;)
              end
              local.get 3
              local.get 4
              i32.store offset=12
              local.get 3
              i32.const 255
              i32.store8 offset=8
              block ;; label = @6
                local.get 4
                br_if 0 (;@6;)
                i32.const 1055792
                local.set 4
                br 4 (;@2;)
              end
              local.get 2
              local.get 4
              i32.lt_u
              br_if 2 (;@3;)
              local.get 1
              local.get 4
              i32.add
              local.set 1
              local.get 2
              local.get 4
              i32.sub
              local.set 2
            end
            local.get 2
            br_if 0 (;@4;)
          end
          i32.const 0
          local.set 4
          br 2 (;@1;)
        end
        local.get 4
        local.get 2
        local.get 2
        i32.const 1056072
        call $_RNvNtNtCs8dNdkSoVEg0_4core5slice5index16slice_index_fail
        unreachable
      end
      block ;; label = @2
        local.get 4
        i64.load
        local.tee 5
        i64.const 255
        i64.and
        i64.const 255
        i64.ne
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      block ;; label = @2
        local.get 0
        i32.load8_u
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=4
        local.tee 4
        i32.load
        local.set 1
        block ;; label = @3
          local.get 4
          i32.const 4
          i32.add
          i32.load
          local.tee 2
          i32.load
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 6
          call_indirect (type 0)
        end
        block ;; label = @3
          local.get 2
          i32.load offset=4
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 6
          local.get 2
          i32.load offset=8
          call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
        end
        local.get 4
        i32.const 12
        i32.const 4
        call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
      end
      local.get 0
      local.get 5
      i64.store align=4
      i32.const 1
      local.set 4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4
  )
  (func $_RNvYNtNtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unix6StderrNtNtBa_2io5Write18write_all_vectoredBa_ (;236;) (type 2) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.const 4
          i32.add
          local.set 5
          local.get 3
          i32.const 3
          i32.shl
          local.tee 6
          i32.const -8
          i32.add
          i32.const 3
          i32.shr_u
          i32.const 1
          i32.add
          local.set 7
          i32.const 0
          local.set 8
          block ;; label = @4
            loop ;; label = @5
              local.get 5
              i32.load
              br_if 1 (;@4;)
              local.get 5
              i32.const 8
              i32.add
              local.set 5
              local.get 8
              i32.const 1
              i32.add
              local.set 8
              local.get 6
              i32.const -8
              i32.add
              local.tee 6
              br_if 0 (;@5;)
            end
            local.get 7
            local.set 8
          end
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 3
                local.get 8
                i32.lt_u
                br_if 0 (;@6;)
                local.get 3
                local.get 8
                i32.eq
                br_if 3 (;@3;)
                local.get 3
                local.get 8
                i32.sub
                local.set 7
                local.get 2
                local.get 8
                i32.const 3
                i32.shl
                i32.add
                local.set 9
                loop ;; label = @7
                  block ;; label = @8
                    i32.const 2
                    local.get 9
                    local.get 7
                    i32.const 16
                    local.get 7
                    i32.const 16
                    i32.lt_u
                    select
                    call $writev
                    local.tee 5
                    i32.const -1
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 4
                    i32.const 0
                    i32.store8 offset=11
                    local.get 4
                    i32.const 0
                    i32.store16 offset=9 align=1
                    local.get 4
                    i32.const 0
                    i32.store8 offset=8
                    local.get 4
                    i32.const 0
                    i32.load offset=1057092
                    local.tee 5
                    i32.store offset=12
                    local.get 5
                    i32.const 27
                    i32.eq
                    br_if 1 (;@7;)
                    local.get 4
                    i32.const 8
                    i32.add
                    local.set 5
                    br 6 (;@2;)
                  end
                  local.get 4
                  local.get 5
                  i32.store offset=12
                  local.get 4
                  i32.const 255
                  i32.store8 offset=8
                  block ;; label = @8
                    local.get 5
                    br_if 0 (;@8;)
                    i32.const 1055792
                    local.set 5
                    br 6 (;@2;)
                  end
                  local.get 9
                  i32.const 4
                  i32.add
                  local.set 8
                  local.get 7
                  i32.const 3
                  i32.shl
                  local.tee 3
                  i32.const -8
                  i32.add
                  i32.const 3
                  i32.shr_u
                  i32.const 1
                  i32.add
                  local.set 10
                  i32.const 0
                  local.set 6
                  block ;; label = @8
                    loop ;; label = @9
                      local.get 5
                      local.get 8
                      i32.load
                      local.tee 2
                      i32.lt_u
                      br_if 1 (;@8;)
                      local.get 8
                      i32.const 8
                      i32.add
                      local.set 8
                      local.get 6
                      i32.const 1
                      i32.add
                      local.set 6
                      local.get 5
                      local.get 2
                      i32.sub
                      local.set 5
                      local.get 3
                      i32.const -8
                      i32.add
                      local.tee 3
                      br_if 0 (;@9;)
                    end
                    local.get 10
                    local.set 6
                  end
                  local.get 7
                  local.get 6
                  i32.lt_u
                  br_if 2 (;@5;)
                  block ;; label = @8
                    local.get 7
                    local.get 6
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 5
                    i32.eqz
                    br_if 5 (;@3;)
                    i32.const 1055160
                    i32.const 79
                    i32.const 1055200
                    call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
                    unreachable
                  end
                  local.get 9
                  local.get 6
                  i32.const 3
                  i32.shl
                  i32.add
                  local.tee 9
                  i32.load offset=4
                  local.tee 8
                  local.get 5
                  i32.lt_u
                  br_if 3 (;@4;)
                  local.get 7
                  local.get 6
                  i32.sub
                  local.set 7
                  local.get 9
                  local.get 8
                  local.get 5
                  i32.sub
                  i32.store offset=4
                  local.get 9
                  local.get 9
                  i32.load
                  local.get 5
                  i32.add
                  i32.store
                  local.get 4
                  i32.load8_u offset=8
                  local.tee 5
                  i32.const 255
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 3
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load offset=12
                  local.tee 5
                  i32.load
                  local.set 6
                  block ;; label = @8
                    local.get 5
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 8
                    i32.load
                    local.tee 3
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 6
                    local.get 3
                    call_indirect (type 0)
                  end
                  block ;; label = @8
                    local.get 8
                    i32.load offset=4
                    local.tee 3
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 6
                    local.get 3
                    local.get 8
                    i32.load offset=8
                    call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
                  end
                  local.get 5
                  i32.const 12
                  i32.const 4
                  call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
                  br 0 (;@7;)
                end
              end
              local.get 8
              local.get 3
              local.get 3
              i32.const 1055356
              call $_RNvNtNtCs8dNdkSoVEg0_4core5slice5index16slice_index_fail
              unreachable
            end
            local.get 6
            local.get 7
            local.get 7
            i32.const 1055356
            call $_RNvNtNtCs8dNdkSoVEg0_4core5slice5index16slice_index_fail
            unreachable
          end
          i32.const 1055216
          i32.const 71
          i32.const 1055340
          call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
          unreachable
        end
        local.get 0
        i32.const 255
        i32.store8
        br 1 (;@1;)
      end
      local.get 0
      local.get 5
      i64.load
      i64.store align=4
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_RNvXs0_NvNtCs4cXvnjfI5fJ_3std9panicking13panic_handlerNtB5_19FormatStringPayloadNtNtCs8dNdkSoVEg0_4core3fmt7Display3fmt (;237;) (type 4) (param i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      i32.load
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.load offset=4
      local.get 0
      i32.load offset=8
      call $_RNvMsa_NtCs8dNdkSoVEg0_4core3fmtNtB5_9Formatter9write_str
      return
    end
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 0
    i32.load offset=12
    i32.load
    local.tee 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_RNvNtCs8dNdkSoVEg0_4core3fmt5write
  )
  (func $_RNvXs1_NvNtCs4cXvnjfI5fJ_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs8dNdkSoVEg0_4core5panic12PanicPayload3get (;238;) (type 1) (param i32 i32)
    local.get 0
    i32.const 1055976
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_RNvXs1_NvNtCs4cXvnjfI5fJ_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs8dNdkSoVEg0_4core5panic12PanicPayload6as_str (;239;) (type 1) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store
  )
  (func $_RNvXs1_NvNtCs4cXvnjfI5fJ_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs8dNdkSoVEg0_4core5panic12PanicPayload8take_box (;240;) (type 1) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 3
    call $_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2
    block ;; label = @1
      i32.const 8
      i32.const 4
      call $_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc
      local.tee 1
      br_if 0 (;@1;)
      i32.const 4
      i32.const 8
      call $_RNvNtCs51AVrxNfmOa_5alloc5alloc18handle_alloc_error
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1055976
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_RNvXs1g_NtCs8dNdkSoVEg0_4core3fmtRbNtB6_5Debug3fmtCs4cXvnjfI5fJ_3std (;241;) (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_RNvXsg_NtCs8dNdkSoVEg0_4core3fmtbNtB5_7Display3fmt
  )
  (func $_RNvXs2_NvNtCs4cXvnjfI5fJ_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs8dNdkSoVEg0_4core3fmt7Display3fmt (;242;) (type 4) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_RNvMsa_NtCs8dNdkSoVEg0_4core3fmtNtB5_9Formatter9write_str
  )
  (func $_RNvXs3_NtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write14write_vectored (;243;) (type 2) (param i32 i32 i32 i32)
    (local i32)
    i32.const 255
    local.set 4
    block ;; label = @1
      i32.const 2
      local.get 2
      local.get 3
      i32.const 16
      local.get 3
      i32.const 16
      i32.lt_u
      select
      call $writev
      local.tee 3
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      local.set 4
      local.get 0
      i32.const 0
      i32.store16 offset=1 align=1
      local.get 0
      i32.const 3
      i32.add
      i32.const 0
      i32.store8
      i32.const 0
      i32.load offset=1057092
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store8
  )
  (func $_RNvXs3_NtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write17is_write_vectored (;244;) (type 6) (param i32) (result i32)
    i32.const 1
  )
  (func $_RNvXs3_NtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5flush (;245;) (type 1) (param i32 i32)
    local.get 0
    i32.const 255
    i32.store8
  )
  (func $_RNvXs3_NtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write (;246;) (type 2) (param i32 i32 i32 i32)
    (local i32)
    i32.const 255
    local.set 4
    block ;; label = @1
      i32.const 2
      local.get 2
      local.get 3
      call $write
      local.tee 3
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      local.set 4
      local.get 0
      i32.const 0
      i32.store16 offset=1 align=1
      local.get 0
      i32.const 3
      i32.add
      i32.const 0
      i32.store8
      i32.const 0
      i32.load offset=1057092
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store8
  )
  (func $_RNvXs9_NtNtCs4cXvnjfI5fJ_3std2io5implsINtNtCs51AVrxNfmOa_5alloc3vec3VechENtB7_5Write14write_vectoredB9_ (;247;) (type 2) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      i32.const 3
      i32.and
      local.set 5
      i32.const 0
      local.set 6
      i32.const 0
      local.set 4
      block ;; label = @2
        block ;; label = @3
          local.get 3
          i32.const 4
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          i32.const 28
          i32.add
          local.set 7
          local.get 3
          i32.const 268435452
          i32.and
          local.set 8
          i32.const 0
          local.set 4
          i32.const 0
          local.set 6
          loop ;; label = @4
            local.get 7
            i32.load
            local.get 7
            i32.const -8
            i32.add
            i32.load
            local.get 7
            i32.const -16
            i32.add
            i32.load
            local.get 7
            i32.const -24
            i32.add
            i32.load
            local.get 4
            i32.add
            i32.add
            i32.add
            i32.add
            local.set 4
            local.get 7
            i32.const 32
            i32.add
            local.set 7
            local.get 8
            local.get 6
            i32.const 4
            i32.add
            local.tee 6
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 5
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 6
        i32.const 3
        i32.shl
        local.get 2
        i32.add
        i32.const 4
        i32.add
        local.set 7
        loop ;; label = @3
          local.get 7
          i32.load
          local.get 4
          i32.add
          local.set 4
          local.get 7
          i32.const 8
          i32.add
          local.set 7
          local.get 5
          i32.const -1
          i32.add
          local.tee 5
          br_if 0 (;@3;)
        end
      end
      local.get 3
      i32.const 3
      i32.shl
      local.set 7
      block ;; label = @2
        local.get 4
        local.get 1
        i32.load
        local.get 1
        i32.load offset=8
        local.tee 5
        i32.sub
        i32.le_u
        br_if 0 (;@2;)
        local.get 1
        local.get 5
        local.get 4
        i32.const 1
        i32.const 1
        call $_RINvNvMs2_NtCs51AVrxNfmOa_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4cXvnjfI5fJ_3std
      end
      local.get 2
      local.get 7
      i32.add
      local.set 8
      local.get 1
      i32.load offset=8
      local.set 5
      loop ;; label = @2
        local.get 2
        i32.load
        local.set 6
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 2
              i32.const 4
              i32.add
              i32.load
              local.tee 7
              local.get 1
              i32.load
              local.get 5
              i32.sub
              i32.le_u
              br_if 0 (;@5;)
              local.get 1
              local.get 5
              local.get 7
              i32.const 1
              i32.const 1
              call $_RINvNvMs2_NtCs51AVrxNfmOa_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4cXvnjfI5fJ_3std
              local.get 1
              i32.load offset=8
              local.set 5
              br 1 (;@4;)
            end
            local.get 7
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load offset=4
          local.get 5
          i32.add
          local.get 6
          local.get 7
          memory.copy
        end
        local.get 1
        local.get 5
        local.get 7
        i32.add
        local.tee 5
        i32.store offset=8
        local.get 2
        i32.const 8
        i32.add
        local.tee 2
        local.get 8
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 255
    i32.store8
    local.get 0
    local.get 4
    i32.store offset=4
  )
  (func $_RNvXs9_NtNtCs4cXvnjfI5fJ_3std2io5implsINtNtCs51AVrxNfmOa_5alloc3vec3VechENtB7_5Write17is_write_vectoredB9_ (;248;) (type 6) (param i32) (result i32)
    i32.const 1
  )
  (func $_RNvXs9_NtNtCs4cXvnjfI5fJ_3std2io5implsINtNtCs51AVrxNfmOa_5alloc3vec3VechENtB7_5Write18write_all_vectoredB9_ (;249;) (type 2) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 3
      i32.and
      local.set 4
      i32.const 0
      local.set 5
      i32.const 0
      local.set 6
      block ;; label = @2
        block ;; label = @3
          local.get 3
          i32.const 4
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          i32.const 28
          i32.add
          local.set 7
          local.get 3
          i32.const 268435452
          i32.and
          local.set 8
          i32.const 0
          local.set 5
          i32.const 0
          local.set 6
          loop ;; label = @4
            local.get 7
            i32.load
            local.get 7
            i32.const -8
            i32.add
            i32.load
            local.get 7
            i32.const -16
            i32.add
            i32.load
            local.get 7
            i32.const -24
            i32.add
            i32.load
            local.get 6
            i32.add
            i32.add
            i32.add
            i32.add
            local.set 6
            local.get 7
            i32.const 32
            i32.add
            local.set 7
            local.get 8
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 5
        i32.const 3
        i32.shl
        local.get 2
        i32.add
        i32.const 4
        i32.add
        local.set 7
        loop ;; label = @3
          local.get 7
          i32.load
          local.get 6
          i32.add
          local.set 6
          local.get 7
          i32.const 8
          i32.add
          local.set 7
          local.get 4
          i32.const -1
          i32.add
          local.tee 4
          br_if 0 (;@3;)
        end
      end
      local.get 3
      i32.const 3
      i32.shl
      local.set 7
      block ;; label = @2
        local.get 6
        local.get 1
        i32.load
        local.get 1
        i32.load offset=8
        local.tee 4
        i32.sub
        i32.le_u
        br_if 0 (;@2;)
        local.get 1
        local.get 4
        local.get 6
        i32.const 1
        i32.const 1
        call $_RINvNvMs2_NtCs51AVrxNfmOa_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4cXvnjfI5fJ_3std
        local.get 1
        i32.load offset=8
        local.set 4
      end
      local.get 2
      local.get 7
      i32.add
      local.set 5
      loop ;; label = @2
        local.get 2
        i32.load
        local.set 6
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 2
              i32.const 4
              i32.add
              i32.load
              local.tee 7
              local.get 1
              i32.load
              local.get 4
              i32.sub
              i32.le_u
              br_if 0 (;@5;)
              local.get 1
              local.get 4
              local.get 7
              i32.const 1
              i32.const 1
              call $_RINvNvMs2_NtCs51AVrxNfmOa_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4cXvnjfI5fJ_3std
              local.get 1
              i32.load offset=8
              local.set 4
              br 1 (;@4;)
            end
            local.get 7
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load offset=4
          local.get 4
          i32.add
          local.get 6
          local.get 7
          memory.copy
        end
        local.get 1
        local.get 4
        local.get 7
        i32.add
        local.tee 4
        i32.store offset=8
        local.get 2
        i32.const 8
        i32.add
        local.tee 2
        local.get 5
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 255
    i32.store8
  )
  (func $_RNvXs9_NtNtCs4cXvnjfI5fJ_3std2io5implsINtNtCs51AVrxNfmOa_5alloc3vec3VechENtB7_5Write5flushB9_ (;250;) (type 1) (param i32 i32)
    local.get 0
    i32.const 255
    i32.store8
  )
  (func $_RNvXs9_NtNtCs4cXvnjfI5fJ_3std2io5implsINtNtCs51AVrxNfmOa_5alloc3vec3VechENtB7_5Write5writeB9_ (;251;) (type 2) (param i32 i32 i32 i32)
    (local i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 3
          local.get 1
          i32.load
          local.get 1
          i32.load offset=8
          local.tee 4
          i32.sub
          i32.le_u
          br_if 0 (;@3;)
          local.get 1
          local.get 4
          local.get 3
          i32.const 1
          i32.const 1
          call $_RINvNvMs2_NtCs51AVrxNfmOa_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4cXvnjfI5fJ_3std
          local.get 1
          i32.load offset=8
          local.set 4
          br 1 (;@2;)
        end
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=4
      local.get 4
      i32.add
      local.get 2
      local.get 3
      memory.copy
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    i32.const 255
    i32.store8
    local.get 1
    local.get 4
    local.get 3
    i32.add
    i32.store offset=8
  )
  (func $_RNvXs9_NtNtCs4cXvnjfI5fJ_3std2io5implsINtNtCs51AVrxNfmOa_5alloc3vec3VechENtB7_5Write9write_allB9_ (;252;) (type 2) (param i32 i32 i32 i32)
    (local i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 3
          local.get 1
          i32.load
          local.get 1
          i32.load offset=8
          local.tee 4
          i32.sub
          i32.le_u
          br_if 0 (;@3;)
          local.get 1
          local.get 4
          local.get 3
          i32.const 1
          i32.const 1
          call $_RINvNvMs2_NtCs51AVrxNfmOa_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4cXvnjfI5fJ_3std
          local.get 1
          i32.load offset=8
          local.set 4
          br 1 (;@2;)
        end
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=4
      local.get 4
      i32.add
      local.get 2
      local.get 3
      memory.copy
    end
    local.get 0
    i32.const 255
    i32.store8
    local.get 1
    local.get 4
    local.get 3
    i32.add
    i32.store offset=8
  )
  (func $_RNvXsZ_NtCs51AVrxNfmOa_5alloc6stringNtB5_6StringNtNtCs8dNdkSoVEg0_4core3fmt5Write10write_char (;253;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.const 128
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        br 1 (;@1;)
      end
      block ;; label = @2
        local.get 1
        i32.const 2048
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 2
        local.set 3
        br 1 (;@1;)
      end
      i32.const 3
      i32.const 4
      local.get 1
      i32.const 65536
      i32.lt_u
      select
      local.set 3
    end
    block ;; label = @1
      local.get 3
      local.get 0
      i32.load
      local.get 2
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      i32.const 1
      i32.const 1
      call $_RINvNvMs2_NtCs51AVrxNfmOa_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4cXvnjfI5fJ_3std
    end
    local.get 0
    i32.load offset=4
    local.get 2
    i32.add
    local.set 4
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 5
        local.get 1
        i32.const 6
        i32.shr_u
        local.set 6
        block ;; label = @3
          local.get 1
          i32.const 2048
          i32.ge_u
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.store8 offset=1
          local.get 4
          local.get 6
          i32.const 192
          i32.or
          i32.store8
          br 2 (;@1;)
        end
        local.get 1
        i32.const 12
        i32.shr_u
        local.set 7
        local.get 6
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 6
        block ;; label = @3
          local.get 1
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.store8 offset=2
          local.get 4
          local.get 6
          i32.store8 offset=1
          local.get 4
          local.get 7
          i32.const 224
          i32.or
          i32.store8
          br 2 (;@1;)
        end
        local.get 4
        local.get 5
        i32.store8 offset=3
        local.get 4
        local.get 6
        i32.store8 offset=2
        local.get 4
        local.get 7
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        i32.store8 offset=1
        local.get 4
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const -16
        i32.or
        i32.store8
        br 1 (;@1;)
      end
      local.get 4
      local.get 1
      i32.store8
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0
  )
  (func $_RNvXsZ_NtCs51AVrxNfmOa_5alloc6stringNtB5_6StringNtNtCs8dNdkSoVEg0_4core3fmt5Write9write_str (;254;) (type 3) (param i32 i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 2
          local.get 0
          i32.load
          local.get 0
          i32.load offset=8
          local.tee 3
          i32.sub
          i32.le_u
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          local.get 2
          i32.const 1
          i32.const 1
          call $_RINvNvMs2_NtCs51AVrxNfmOa_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4cXvnjfI5fJ_3std
          local.get 0
          i32.load offset=8
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      memory.copy
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0
  )
  (func $_RNvXs_NvNtCs4cXvnjfI5fJ_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCs8dNdkSoVEg0_4core5panic12PanicPayload3get (;255;) (type 1) (param i32 i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      local.get 1
      i32.load
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 0
      i32.store offset=28
      local.get 2
      i64.const 4294967296
      i64.store offset=20 align=4
      local.get 2
      i32.const 20
      i32.add
      i32.const 1054468
      local.get 3
      i32.load
      local.tee 3
      i32.load
      local.get 3
      i32.load offset=4
      call $_RNvNtCs8dNdkSoVEg0_4core3fmt5write
      drop
      local.get 2
      local.get 2
      i32.load offset=28
      local.tee 3
      i32.store offset=16
      local.get 2
      local.get 2
      i64.load offset=20 align=4
      local.tee 4
      i64.store offset=8
      local.get 1
      local.get 3
      i32.store offset=8
      local.get 1
      local.get 4
      i64.store align=4
    end
    local.get 0
    i32.const 1056000
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_RNvXs_NvNtCs4cXvnjfI5fJ_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCs8dNdkSoVEg0_4core5panic12PanicPayload8take_box (;256;) (type 1) (param i32 i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      local.get 1
      i32.load
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 0
      i32.store offset=24
      local.get 2
      i64.const 4294967296
      i64.store offset=16 align=4
      local.get 2
      i32.const 16
      i32.add
      i32.const 1054468
      local.get 3
      i32.load
      local.tee 3
      i32.load
      local.get 3
      i32.load offset=4
      call $_RNvNtCs8dNdkSoVEg0_4core3fmt5write
      drop
      local.get 2
      local.get 2
      i32.load offset=24
      local.tee 3
      i32.store offset=8
      local.get 2
      local.get 2
      i64.load offset=16 align=4
      local.tee 4
      i64.store
      local.get 1
      local.get 3
      i32.store offset=8
      local.get 1
      local.get 4
      i64.store align=4
    end
    local.get 1
    i32.load offset=8
    local.set 3
    local.get 1
    i32.const 0
    i32.store offset=8
    local.get 1
    i64.load align=4
    local.set 4
    local.get 1
    i64.const 4294967296
    i64.store align=4
    local.get 2
    local.get 3
    i32.store offset=24
    local.get 2
    local.get 4
    i64.store offset=16
    call $_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2
    block ;; label = @1
      i32.const 12
      i32.const 4
      call $_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc
      local.tee 1
      br_if 0 (;@1;)
      i32.const 4
      i32.const 12
      call $_RNvNtCs51AVrxNfmOa_5alloc5alloc18handle_alloc_error
      unreachable
    end
    local.get 1
    local.get 2
    i32.load offset=24
    i32.store offset=8
    local.get 1
    local.get 2
    i64.load offset=16
    i64.store align=4
    local.get 0
    i32.const 1056000
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_RNvYINtNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmt7AdapterINtNtCs51AVrxNfmOa_5alloc3vec3VechEENtNtCs8dNdkSoVEg0_4core3fmt5Write10write_charB9_ (;257;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 3
        local.get 1
        i32.const 6
        i32.shr_u
        local.set 4
        block ;; label = @3
          local.get 1
          i32.const 2048
          i32.ge_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store8 offset=13
          local.get 2
          local.get 4
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 2 (;@1;)
        end
        local.get 1
        i32.const 12
        i32.shr_u
        local.set 5
        local.get 4
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 4
        block ;; label = @3
          local.get 1
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store8 offset=14
          local.get 2
          local.get 4
          i32.store8 offset=13
          local.get 2
          local.get 5
          i32.const 224
          i32.or
          i32.store8 offset=12
          i32.const 3
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 3
        i32.store8 offset=15
        local.get 2
        local.get 4
        i32.store8 offset=14
        local.get 2
        local.get 5
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const -16
        i32.or
        i32.store8 offset=12
        i32.const 4
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store8 offset=12
      i32.const 1
      local.set 1
    end
    block ;; label = @1
      local.get 1
      local.get 0
      i32.load offset=8
      local.tee 0
      i32.load
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 1
      i32.const 1
      i32.const 1
      call $_RINvNvMs2_NtCs51AVrxNfmOa_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4cXvnjfI5fJ_3std
      local.get 0
      i32.load offset=8
      local.set 3
    end
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      memory.copy
    end
    local.get 0
    local.get 3
    local.get 1
    i32.add
    i32.store offset=8
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 0
  )
  (func $_RNvYINtNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmt7AdapterINtNtCs51AVrxNfmOa_5alloc3vec3VechEENtNtCs8dNdkSoVEg0_4core3fmt5Write9write_fmtB9_ (;258;) (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 1054064
    local.get 1
    local.get 2
    call $_RNvNtCs8dNdkSoVEg0_4core3fmt5write
  )
  (func $_RNvYINtNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmt7AdapterINtNtNtCs8dNdkSoVEg0_4core2io6cursor6CursorQShEENtNtB12_3fmt5Write10write_charB9_ (;259;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 3
        local.get 1
        i32.const 6
        i32.shr_u
        local.set 4
        block ;; label = @3
          local.get 1
          i32.const 2048
          i32.ge_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store8 offset=13
          local.get 2
          local.get 4
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 2 (;@1;)
        end
        local.get 1
        i32.const 12
        i32.shr_u
        local.set 5
        local.get 4
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 4
        block ;; label = @3
          local.get 1
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store8 offset=14
          local.get 2
          local.get 4
          i32.store8 offset=13
          local.get 2
          local.get 5
          i32.const 224
          i32.or
          i32.store8 offset=12
          i32.const 3
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 3
        i32.store8 offset=15
        local.get 2
        local.get 4
        i32.store8 offset=14
        local.get 2
        local.get 5
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const -16
        i32.or
        i32.store8 offset=12
        i32.const 4
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store8 offset=12
      i32.const 1
      local.set 1
    end
    i32.const 0
    local.set 5
    block ;; label = @1
      i32.const 0
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.load offset=4
      local.tee 6
      local.get 3
      i64.load offset=8
      local.tee 7
      i64.const 4294967295
      local.get 7
      i64.const 4294967295
      i64.lt_u
      select
      i32.wrap_i64
      i32.sub
      local.tee 4
      local.get 4
      local.get 6
      i32.gt_u
      select
      local.tee 4
      local.get 1
      local.get 4
      local.get 1
      i32.lt_u
      select
      local.tee 8
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load
      local.get 7
      local.get 6
      i64.extend_i32_u
      local.tee 9
      local.get 7
      local.get 9
      i64.lt_u
      select
      i32.wrap_i64
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 8
      memory.copy
    end
    local.get 3
    local.get 7
    local.get 8
    i64.extend_i32_u
    i64.add
    i64.store offset=8
    block ;; label = @1
      local.get 4
      local.get 1
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 5
      i32.const 0
      i64.load offset=1055792
      local.tee 7
      i64.const 255
      i64.and
      i64.const 255
      i64.eq
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 0
        i32.load8_u
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=4
        local.tee 1
        i32.load
        local.set 4
        block ;; label = @3
          local.get 1
          i32.const 4
          i32.add
          i32.load
          local.tee 3
          i32.load
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          call_indirect (type 0)
        end
        block ;; label = @3
          local.get 3
          i32.load offset=4
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          local.get 3
          i32.load offset=8
          call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
        end
        local.get 1
        i32.const 12
        i32.const 4
        call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
      end
      local.get 0
      local.get 7
      i64.store align=4
      i32.const 1
      local.set 5
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5
  )
  (func $_RNvYINtNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmt7AdapterINtNtNtCs8dNdkSoVEg0_4core2io6cursor6CursorQShEENtNtB12_3fmt5Write9write_fmtB9_ (;260;) (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 1054192
    local.get 1
    local.get 2
    call $_RNvNtCs8dNdkSoVEg0_4core3fmt5write
  )
  (func $_RNvYINtNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCs8dNdkSoVEg0_4core3fmt5Write10write_charB9_ (;261;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 3
        local.get 1
        i32.const 6
        i32.shr_u
        local.set 4
        block ;; label = @3
          local.get 1
          i32.const 2048
          i32.ge_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store8 offset=13
          local.get 2
          local.get 4
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 2 (;@1;)
        end
        local.get 1
        i32.const 12
        i32.shr_u
        local.set 5
        local.get 4
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 4
        block ;; label = @3
          local.get 1
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store8 offset=14
          local.get 2
          local.get 4
          i32.store8 offset=13
          local.get 2
          local.get 5
          i32.const 224
          i32.or
          i32.store8 offset=12
          i32.const 3
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 3
        i32.store8 offset=15
        local.get 2
        local.get 4
        i32.store8 offset=14
        local.get 2
        local.get 5
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const -16
        i32.or
        i32.store8 offset=12
        i32.const 4
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store8 offset=12
      i32.const 1
      local.set 1
    end
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_RNvXNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCs8dNdkSoVEg0_4core3fmt5Write9write_strB6_
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_RNvYINtNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCs8dNdkSoVEg0_4core3fmt5Write9write_fmtB9_ (;262;) (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 1054216
    local.get 1
    local.get 2
    call $_RNvNtCs8dNdkSoVEg0_4core3fmt5write
  )
  (func $_RNvYINtNvNtCs4cXvnjfI5fJ_3std9panicking11begin_panic7PayloadReENtNtCs8dNdkSoVEg0_4core5panic12PanicPayload6as_strB9_ (;263;) (type 1) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store
  )
  (func $_RNvYNtNtCs51AVrxNfmOa_5alloc6string6StringNtNtCs8dNdkSoVEg0_4core3fmt5Write9write_fmtCs4cXvnjfI5fJ_3std (;264;) (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 1054468
    local.get 1
    local.get 2
    call $_RNvNtCs8dNdkSoVEg0_4core3fmt5write
  )
  (func $_RNvYNtNtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allBa_ (;265;) (type 2) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          loop ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    i32.const 2
                    local.get 2
                    local.get 3
                    call $write
                    local.tee 5
                    i32.const -1
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 4
                    i32.const 0
                    i32.store8 offset=11
                    local.get 4
                    i32.const 0
                    i32.store16 offset=9 align=1
                    local.get 4
                    i32.const 0
                    i32.store8 offset=8
                    local.get 4
                    i32.const 0
                    i32.load offset=1057092
                    local.tee 5
                    i32.store offset=12
                    local.get 5
                    i32.const 27
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 4
                    i32.const 8
                    i32.add
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 4
                  local.get 5
                  i32.store offset=12
                  local.get 4
                  i32.const 255
                  i32.store8 offset=8
                  local.get 5
                  br_if 1 (;@6;)
                  i32.const 1055792
                  local.set 5
                end
                local.get 0
                local.get 5
                i64.load
                i64.store align=4
                br 5 (;@1;)
              end
              local.get 3
              local.get 5
              i32.lt_u
              br_if 3 (;@2;)
              local.get 2
              local.get 5
              i32.add
              local.set 2
              local.get 3
              local.get 5
              i32.sub
              local.set 3
            end
            local.get 3
            br_if 0 (;@4;)
          end
        end
        local.get 0
        i32.const 255
        i32.store8
        br 1 (;@1;)
      end
      local.get 5
      local.get 3
      local.get 3
      i32.const 1056072
      call $_RNvNtNtCs8dNdkSoVEg0_4core5slice5index16slice_index_fail
      unreachable
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $writev (;266;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const -1
    local.set 4
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        i32.const 0
        i32.const 28
        i32.store offset=1057092
        br 1 (;@1;)
      end
      local.get 3
      i32.const 0
      i32.store offset=12
      block ;; label = @2
        local.get 0
        local.get 1
        local.get 2
        local.get 3
        i32.const 12
        i32.add
        call $__wasi_fd_write
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        i32.store offset=1057092
        i32.const -1
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=12
      local.set 4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4
  )
  (func $write (;267;) (type 3) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    block ;; label = @1
      block ;; label = @2
        local.get 0
        local.get 3
        i32.const 8
        i32.add
        i32.const 1
        local.get 3
        i32.const 4
        i32.add
        call $__wasi_fd_write
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 8
        local.get 2
        local.get 2
        i32.const 76
        i32.eq
        select
        i32.store offset=1057092
        i32.const -1
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=4
      local.set 2
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
  )
  (func $_Exit (;268;) (type 0) (param i32)
    local.get 0
    call $__wasi_proc_exit
    unreachable
  )
  (func $__wasilibc_ensure_environ (;269;) (type 9)
    block ;; label = @1
      i32.const 0
      i32.load offset=1057008
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      call $__wasilibc_initialize_environ
    end
  )
  (func $__wasilibc_initialize_environ (;270;) (type 9)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.const 12
        i32.add
        local.get 0
        i32.const 8
        i32.add
        call $__wasi_environ_sizes_get
        br_if 0 (;@2;)
        block ;; label = @3
          local.get 0
          i32.load offset=12
          local.tee 1
          br_if 0 (;@3;)
          i32.const 1057096
          local.set 1
          br 2 (;@1;)
        end
        block ;; label = @3
          block ;; label = @4
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=8
            call $malloc
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 4
            call $calloc
            local.tee 1
            br_if 1 (;@3;)
            local.get 2
            call $free
          end
          i32.const 70
          call $_Exit
          unreachable
        end
        local.get 1
        local.get 2
        call $__wasi_environ_get
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        call $free
        local.get 1
        call $free
      end
      i32.const 71
      call $_Exit
      unreachable
    end
    i32.const 0
    local.get 1
    i32.store offset=1057008
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $__wasi_environ_get (;271;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_environ_get
    i32.const 65535
    i32.and
  )
  (func $__wasi_environ_sizes_get (;272;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_environ_sizes_get
    i32.const 65535
    i32.and
  )
  (func $__wasi_fd_write (;273;) (type 8) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__imported_wasi_snapshot_preview1_fd_write
    i32.const 65535
    i32.and
  )
  (func $__wasi_proc_exit (;274;) (type 0) (param i32)
    local.get 0
    call $__imported_wasi_snapshot_preview1_proc_exit
    unreachable
  )
  (func $abort (;275;) (type 9)
    unreachable
  )
  (func $getcwd (;276;) (type 4) (param i32 i32) (result i32)
    (local i32)
    i32.const 0
    i32.load offset=1057012
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        local.get 2
        call $strdup
        local.tee 0
        br_if 1 (;@1;)
        i32.const 0
        i32.const 48
        i32.store offset=1057092
        i32.const 0
        return
      end
      block ;; label = @2
        local.get 1
        local.get 2
        call $strlen
        i32.const 1
        i32.add
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 0
        i32.const 68
        i32.store offset=1057092
        i32.const 0
        return
      end
      local.get 0
      local.get 2
      call $strcpy
      local.set 0
    end
    local.get 0
  )
  (func $getenv (;277;) (type 6) (param i32) (result i32)
    (local i32 i32 i32 i32)
    call $__wasilibc_ensure_environ
    block ;; label = @1
      local.get 0
      i32.const 61
      call $__strchrnul
      local.tee 1
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    local.set 2
    block ;; label = @1
      local.get 0
      local.get 1
      local.get 0
      i32.sub
      local.tee 3
      i32.add
      i32.load8_u
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=1057008
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const 4
      i32.add
      local.set 4
      block ;; label = @2
        loop ;; label = @3
          block ;; label = @4
            local.get 0
            local.get 1
            local.get 3
            call $strncmp
            br_if 0 (;@4;)
            local.get 1
            local.get 3
            i32.add
            local.tee 1
            i32.load8_u
            i32.const 61
            i32.eq
            br_if 2 (;@2;)
          end
          local.get 4
          i32.load
          local.set 1
          local.get 4
          i32.const 4
          i32.add
          local.set 4
          local.get 1
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 1
      i32.const 1
      i32.add
      local.set 2
    end
    local.get 2
  )
  (func $__strchrnul (;278;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 1
            i32.const 255
            i32.and
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 3
            i32.and
            i32.eqz
            br_if 2 (;@2;)
            block ;; label = @5
              local.get 0
              i32.load8_u
              local.tee 3
              br_if 0 (;@5;)
              local.get 0
              return
            end
            local.get 3
            local.get 1
            i32.const 255
            i32.and
            i32.ne
            br_if 1 (;@3;)
            local.get 0
            return
          end
          local.get 0
          local.get 0
          call $strlen
          i32.add
          return
        end
        block ;; label = @3
          local.get 0
          i32.const 1
          i32.add
          local.tee 3
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        block ;; label = @3
          local.get 0
          i32.const 2
          i32.add
          local.tee 3
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        block ;; label = @3
          local.get 0
          i32.const 3
          i32.add
          local.tee 3
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.set 0
      end
      block ;; label = @2
        i32.const 16843008
        local.get 0
        i32.load
        local.tee 3
        i32.sub
        local.get 3
        i32.or
        i32.const -2139062144
        i32.and
        i32.const -2139062144
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        i32.const 16843009
        i32.mul
        local.set 2
        loop ;; label = @3
          i32.const 16843008
          local.get 3
          local.get 2
          i32.xor
          local.tee 3
          i32.sub
          local.get 3
          i32.or
          i32.const -2139062144
          i32.and
          i32.const -2139062144
          i32.ne
          br_if 1 (;@2;)
          i32.const 16843008
          local.get 0
          i32.const 4
          i32.add
          local.tee 0
          i32.load
          local.tee 3
          i32.sub
          local.get 3
          i32.or
          i32.const -2139062144
          i32.and
          i32.const -2139062144
          i32.eq
          br_if 0 (;@3;)
        end
      end
      local.get 0
      i32.const -1
      i32.add
      local.set 3
      loop ;; label = @2
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        i32.load8_u
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.const 255
        i32.and
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 3
  )
  (func $__stpcpy (;279;) (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          local.get 0
          i32.xor
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load8_u
          local.set 2
          br 1 (;@2;)
        end
        block ;; label = @3
          local.get 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.load8_u
          local.tee 2
          i32.store8
          block ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            local.get 0
            return
          end
          local.get 0
          i32.const 1
          i32.add
          local.set 3
          block ;; label = @4
            local.get 1
            i32.const 1
            i32.add
            local.tee 2
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 3
            local.set 0
            local.get 2
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          local.get 2
          i32.load8_u
          local.tee 2
          i32.store8
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 2
          i32.add
          local.set 3
          block ;; label = @4
            local.get 1
            i32.const 2
            i32.add
            local.tee 2
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 3
            local.set 0
            local.get 2
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          local.get 2
          i32.load8_u
          local.tee 2
          i32.store8
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 3
          i32.add
          local.set 3
          block ;; label = @4
            local.get 1
            i32.const 3
            i32.add
            local.tee 2
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 3
            local.set 0
            local.get 2
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          local.get 2
          i32.load8_u
          local.tee 2
          i32.store8
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.const 4
          i32.add
          local.set 1
        end
        i32.const 16843008
        local.get 1
        i32.load
        local.tee 2
        i32.sub
        local.get 2
        i32.or
        i32.const -2139062144
        i32.and
        i32.const -2139062144
        i32.ne
        br_if 0 (;@2;)
        loop ;; label = @3
          local.get 0
          local.get 2
          i32.store
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          i32.const 16843008
          local.get 1
          i32.const 4
          i32.add
          local.tee 1
          i32.load
          local.tee 2
          i32.sub
          local.get 2
          i32.or
          i32.const -2139062144
          i32.and
          i32.const -2139062144
          i32.eq
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 2
      i32.store8
      block ;; label = @2
        local.get 2
        i32.const 255
        i32.and
        br_if 0 (;@2;)
        local.get 0
        return
      end
      local.get 1
      i32.const 1
      i32.add
      local.set 2
      local.get 0
      local.set 3
      loop ;; label = @2
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 2
        i32.load8_u
        local.tee 0
        i32.store8
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 0
        br_if 0 (;@2;)
      end
    end
    local.get 3
  )
  (func $strcpy (;280;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__stpcpy
    drop
    local.get 0
  )
  (func $strdup (;281;) (type 6) (param i32) (result i32)
    (local i32 i32)
    block ;; label = @1
      local.get 0
      call $strlen
      i32.const 1
      i32.add
      local.tee 1
      call $malloc
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      local.get 1
      memory.copy
    end
    local.get 2
  )
  (func $strlen (;282;) (type 6) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.set 1
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block ;; label = @3
          local.get 0
          i32.load8_u
          br_if 0 (;@3;)
          local.get 0
          local.get 0
          i32.sub
          return
        end
        local.get 0
        i32.const 1
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 2
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 3
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const -4
      i32.add
      local.set 2
      local.get 1
      i32.const -5
      i32.add
      local.set 1
      loop ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        i32.const 16843008
        local.get 2
        i32.const 4
        i32.add
        local.tee 2
        i32.load
        local.tee 3
        i32.sub
        local.get 3
        i32.or
        i32.const -2139062144
        i32.and
        i32.const -2139062144
        i32.eq
        br_if 0 (;@2;)
      end
      loop ;; label = @2
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.load8_u
        local.set 3
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 3
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 0
    i32.sub
  )
  (func $strncmp (;283;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load8_u
        local.tee 3
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      local.get 2
      i32.const -1
      i32.add
      local.set 2
      block ;; label = @2
        loop ;; label = @3
          local.get 3
          i32.const 255
          i32.and
          local.get 1
          i32.load8_u
          local.tee 4
          i32.ne
          br_if 1 (;@2;)
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          i32.const 0
          i32.eq
          br_if 1 (;@2;)
          local.get 2
          i32.const -1
          i32.add
          local.set 2
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 0
          i32.load8_u
          local.set 3
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 3
          br_if 0 (;@3;)
        end
        i32.const 0
        local.set 3
      end
      local.get 3
      i32.const 255
      i32.and
      local.set 3
    end
    local.get 3
    local.get 1
    i32.load8_u
    i32.sub
  )
  (func $sbrk (;284;) (type 6) (param i32) (result i32)
    (local i32)
    block ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      memory.size
      i32.const 65536
      i32.mul
      return
    end
    block ;; label = @1
      local.get 0
      local.get 0
      i32.const 65536
      i32.div_u
      local.tee 1
      i32.const 65536
      i32.mul
      i32.sub
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 1
        memory.grow
        local.tee 0
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.const 48
        i32.store offset=1057092
        i32.const -1
        return
      end
      local.get 0
      i32.const 65536
      i32.mul
      return
    end
    call $abort
    unreachable
  )
  (func $malloc (;285;) (type 6) (param i32) (result i32)
    local.get 0
    call $dlmalloc
  )
  (func $dlmalloc (;286;) (type 6) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    block ;; label = @9
                      block ;; label = @10
                        block ;; label = @11
                          block ;; label = @12
                            block ;; label = @13
                              i32.const 0
                              i32.load offset=1057124
                              local.tee 2
                              br_if 0 (;@13;)
                              block ;; label = @14
                                i32.const 0
                                i32.load offset=1057572
                                local.tee 3
                                br_if 0 (;@14;)
                                i32.const 0
                                i32.const 65536
                                i32.store offset=1057580
                                i32.const 0
                                i64.const -1
                                i64.store offset=1057584 align=4
                                i32.const 0
                                i32.const 65536
                                i32.store offset=1057576
                                i32.const 0
                                local.get 1
                                i32.const 8
                                i32.add
                                i32.const -16
                                i32.and
                                i32.const 1431655768
                                i32.xor
                                local.tee 3
                                i32.store offset=1057572
                                i32.const 0
                                i32.const 0
                                i32.store offset=1057592
                                i32.const 0
                                i32.const 0
                                i32.store offset=1057544
                              end
                              i32.const 1114112
                              i32.const 1057600
                              i32.lt_u
                              br_if 1 (;@12;)
                              i32.const 0
                              local.set 2
                              i32.const 1114112
                              i32.const 1057600
                              i32.sub
                              i32.const 89
                              i32.lt_u
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 1057600
                              i32.store offset=1057548
                              i32.const 0
                              i32.const 1057600
                              i32.store offset=1057116
                              i32.const 0
                              local.get 3
                              i32.store offset=1057136
                              i32.const 0
                              i32.const -1
                              i32.store offset=1057132
                              i32.const 0
                              i32.const 1114112
                              i32.const 1057600
                              i32.sub
                              local.tee 3
                              i32.store offset=1057552
                              i32.const 0
                              local.get 3
                              i32.store offset=1057536
                              i32.const 0
                              local.get 3
                              i32.store offset=1057532
                              i32.const -256
                              local.set 3
                              loop ;; label = @14
                                local.get 3
                                i32.const 1057416
                                i32.add
                                local.get 3
                                i32.const 1057404
                                i32.add
                                local.tee 4
                                i32.store
                                local.get 4
                                local.get 3
                                i32.const 1057396
                                i32.add
                                local.tee 5
                                i32.store
                                local.get 3
                                i32.const 1057408
                                i32.add
                                local.get 5
                                i32.store
                                local.get 3
                                i32.const 1057424
                                i32.add
                                local.get 3
                                i32.const 1057412
                                i32.add
                                local.tee 5
                                i32.store
                                local.get 5
                                local.get 4
                                i32.store
                                local.get 3
                                i32.const 1057432
                                i32.add
                                local.get 3
                                i32.const 1057420
                                i32.add
                                local.tee 4
                                i32.store
                                local.get 4
                                local.get 5
                                i32.store
                                local.get 3
                                i32.const 1057428
                                i32.add
                                local.get 4
                                i32.store
                                local.get 3
                                i32.const 32
                                i32.add
                                local.tee 3
                                br_if 0 (;@14;)
                              end
                              i32.const 1114112
                              i32.const -52
                              i32.add
                              i32.const 56
                              i32.store
                              i32.const 0
                              i32.const 0
                              i32.load offset=1057588
                              i32.store offset=1057128
                              i32.const 0
                              i32.const 1057600
                              i32.const -8
                              i32.const 1057600
                              i32.sub
                              i32.const 15
                              i32.and
                              local.tee 3
                              i32.add
                              local.tee 2
                              i32.store offset=1057124
                              i32.const 0
                              i32.const 1114112
                              i32.const 1057600
                              i32.sub
                              local.get 3
                              i32.sub
                              i32.const -56
                              i32.add
                              local.tee 3
                              i32.store offset=1057112
                              local.get 2
                              local.get 3
                              i32.const 1
                              i32.or
                              i32.store offset=4
                            end
                            block ;; label = @13
                              block ;; label = @14
                                local.get 0
                                i32.const 236
                                i32.gt_u
                                br_if 0 (;@14;)
                                block ;; label = @15
                                  i32.const 0
                                  i32.load offset=1057100
                                  local.tee 6
                                  i32.const 16
                                  local.get 0
                                  i32.const 19
                                  i32.add
                                  i32.const 496
                                  i32.and
                                  local.get 0
                                  i32.const 11
                                  i32.lt_u
                                  select
                                  local.tee 5
                                  i32.const 3
                                  i32.shr_u
                                  local.tee 4
                                  i32.shr_u
                                  local.tee 3
                                  i32.const 3
                                  i32.and
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  block ;; label = @16
                                    block ;; label = @17
                                      local.get 3
                                      i32.const 1
                                      i32.and
                                      local.get 4
                                      i32.or
                                      i32.const 1
                                      i32.xor
                                      local.tee 7
                                      i32.const 3
                                      i32.shl
                                      local.tee 4
                                      i32.const 1057140
                                      i32.add
                                      local.tee 3
                                      local.get 4
                                      i32.load offset=1057148
                                      local.tee 5
                                      i32.load offset=8
                                      local.tee 0
                                      i32.ne
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.get 6
                                      i32.const -2
                                      local.get 7
                                      i32.rotl
                                      i32.and
                                      i32.store offset=1057100
                                      br 1 (;@16;)
                                    end
                                    local.get 3
                                    local.get 0
                                    i32.store offset=8
                                    local.get 0
                                    local.get 3
                                    i32.store offset=12
                                  end
                                  local.get 5
                                  i32.const 8
                                  i32.add
                                  local.set 3
                                  local.get 5
                                  local.get 4
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  local.get 5
                                  local.get 4
                                  i32.add
                                  local.tee 4
                                  local.get 4
                                  i32.load offset=4
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  br 14 (;@1;)
                                end
                                local.get 5
                                i32.const 0
                                i32.load offset=1057108
                                local.tee 8
                                i32.le_u
                                br_if 1 (;@13;)
                                block ;; label = @15
                                  local.get 3
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  block ;; label = @16
                                    block ;; label = @17
                                      local.get 3
                                      local.get 4
                                      i32.shl
                                      i32.const 2
                                      local.get 4
                                      i32.shl
                                      local.tee 3
                                      i32.const 0
                                      local.get 3
                                      i32.sub
                                      i32.or
                                      i32.and
                                      i32.ctz
                                      local.tee 9
                                      i32.const 3
                                      i32.shl
                                      local.tee 4
                                      i32.const 1057140
                                      i32.add
                                      local.tee 0
                                      local.get 4
                                      i32.load offset=1057148
                                      local.tee 3
                                      i32.load offset=8
                                      local.tee 7
                                      i32.ne
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.get 6
                                      i32.const -2
                                      local.get 9
                                      i32.rotl
                                      i32.and
                                      local.tee 6
                                      i32.store offset=1057100
                                      br 1 (;@16;)
                                    end
                                    local.get 0
                                    local.get 7
                                    i32.store offset=8
                                    local.get 7
                                    local.get 0
                                    i32.store offset=12
                                  end
                                  local.get 3
                                  local.get 5
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  local.get 3
                                  local.get 4
                                  i32.add
                                  local.get 4
                                  local.get 5
                                  i32.sub
                                  local.tee 0
                                  i32.store
                                  local.get 3
                                  local.get 5
                                  i32.add
                                  local.tee 7
                                  local.get 0
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  block ;; label = @16
                                    local.get 8
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 8
                                    i32.const -8
                                    i32.and
                                    i32.const 1057140
                                    i32.add
                                    local.set 5
                                    i32.const 0
                                    i32.load offset=1057120
                                    local.set 4
                                    block ;; label = @17
                                      block ;; label = @18
                                        local.get 6
                                        i32.const 1
                                        local.get 8
                                        i32.const 3
                                        i32.shr_u
                                        i32.shl
                                        local.tee 9
                                        i32.and
                                        br_if 0 (;@18;)
                                        i32.const 0
                                        local.get 6
                                        local.get 9
                                        i32.or
                                        i32.store offset=1057100
                                        local.get 5
                                        local.set 9
                                        br 1 (;@17;)
                                      end
                                      local.get 5
                                      i32.load offset=8
                                      local.set 9
                                    end
                                    local.get 9
                                    local.get 4
                                    i32.store offset=12
                                    local.get 5
                                    local.get 4
                                    i32.store offset=8
                                    local.get 4
                                    local.get 5
                                    i32.store offset=12
                                    local.get 4
                                    local.get 9
                                    i32.store offset=8
                                  end
                                  local.get 3
                                  i32.const 8
                                  i32.add
                                  local.set 3
                                  i32.const 0
                                  local.get 7
                                  i32.store offset=1057120
                                  i32.const 0
                                  local.get 0
                                  i32.store offset=1057108
                                  br 14 (;@1;)
                                end
                                i32.const 0
                                i32.load offset=1057104
                                local.tee 10
                                i32.eqz
                                br_if 1 (;@13;)
                                local.get 10
                                i32.ctz
                                i32.const 2
                                i32.shl
                                i32.load offset=1057404
                                local.tee 0
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 5
                                i32.sub
                                local.set 4
                                local.get 0
                                local.set 7
                                block ;; label = @15
                                  loop ;; label = @16
                                    block ;; label = @17
                                      local.get 0
                                      i32.load offset=16
                                      local.tee 3
                                      br_if 0 (;@17;)
                                      local.get 0
                                      i32.load offset=20
                                      local.tee 3
                                      i32.eqz
                                      br_if 2 (;@15;)
                                    end
                                    local.get 3
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get 5
                                    i32.sub
                                    local.tee 0
                                    local.get 4
                                    local.get 0
                                    local.get 4
                                    i32.lt_u
                                    local.tee 0
                                    select
                                    local.set 4
                                    local.get 3
                                    local.get 7
                                    local.get 0
                                    select
                                    local.set 7
                                    local.get 3
                                    local.set 0
                                    br 0 (;@16;)
                                  end
                                end
                                local.get 7
                                i32.load offset=24
                                local.set 2
                                block ;; label = @15
                                  local.get 7
                                  i32.load offset=12
                                  local.tee 3
                                  local.get 7
                                  i32.eq
                                  br_if 0 (;@15;)
                                  local.get 7
                                  i32.load offset=8
                                  local.tee 0
                                  local.get 3
                                  i32.store offset=12
                                  local.get 3
                                  local.get 0
                                  i32.store offset=8
                                  br 13 (;@2;)
                                end
                                block ;; label = @15
                                  block ;; label = @16
                                    local.get 7
                                    i32.load offset=20
                                    local.tee 0
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 7
                                    i32.const 20
                                    i32.add
                                    local.set 9
                                    br 1 (;@15;)
                                  end
                                  local.get 7
                                  i32.load offset=16
                                  local.tee 0
                                  i32.eqz
                                  br_if 4 (;@11;)
                                  local.get 7
                                  i32.const 16
                                  i32.add
                                  local.set 9
                                end
                                loop ;; label = @15
                                  local.get 9
                                  local.set 11
                                  local.get 0
                                  local.tee 3
                                  i32.const 20
                                  i32.add
                                  local.set 9
                                  local.get 3
                                  i32.load offset=20
                                  local.tee 0
                                  br_if 0 (;@15;)
                                  local.get 3
                                  i32.const 16
                                  i32.add
                                  local.set 9
                                  local.get 3
                                  i32.load offset=16
                                  local.tee 0
                                  br_if 0 (;@15;)
                                end
                                local.get 11
                                i32.const 0
                                i32.store
                                br 12 (;@2;)
                              end
                              i32.const -1
                              local.set 5
                              local.get 0
                              i32.const -65
                              i32.gt_u
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 19
                              i32.add
                              local.tee 3
                              i32.const -16
                              i32.and
                              local.set 5
                              i32.const 0
                              i32.load offset=1057104
                              local.tee 10
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 31
                              local.set 8
                              block ;; label = @14
                                local.get 0
                                i32.const 16777196
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 5
                                i32.const 38
                                local.get 3
                                i32.const 8
                                i32.shr_u
                                i32.clz
                                local.tee 3
                                i32.sub
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.get 3
                                i32.const 1
                                i32.shl
                                i32.sub
                                i32.const 62
                                i32.add
                                local.set 8
                              end
                              i32.const 0
                              local.get 5
                              i32.sub
                              local.set 4
                              block ;; label = @14
                                block ;; label = @15
                                  block ;; label = @16
                                    block ;; label = @17
                                      local.get 8
                                      i32.const 2
                                      i32.shl
                                      i32.load offset=1057404
                                      local.tee 0
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.set 3
                                      i32.const 0
                                      local.set 9
                                      br 1 (;@16;)
                                    end
                                    i32.const 0
                                    local.set 3
                                    local.get 5
                                    i32.const 0
                                    i32.const 25
                                    local.get 8
                                    i32.const 1
                                    i32.shr_u
                                    i32.sub
                                    local.get 8
                                    i32.const 31
                                    i32.eq
                                    select
                                    i32.shl
                                    local.set 7
                                    i32.const 0
                                    local.set 9
                                    loop ;; label = @17
                                      block ;; label = @18
                                        local.get 0
                                        i32.load offset=4
                                        i32.const -8
                                        i32.and
                                        local.get 5
                                        i32.sub
                                        local.tee 6
                                        local.get 4
                                        i32.ge_u
                                        br_if 0 (;@18;)
                                        local.get 6
                                        local.set 4
                                        local.get 0
                                        local.set 9
                                        local.get 6
                                        br_if 0 (;@18;)
                                        i32.const 0
                                        local.set 4
                                        local.get 0
                                        local.set 9
                                        local.get 0
                                        local.set 3
                                        br 3 (;@15;)
                                      end
                                      local.get 3
                                      local.get 0
                                      i32.load offset=20
                                      local.tee 6
                                      local.get 6
                                      local.get 0
                                      local.get 7
                                      i32.const 29
                                      i32.shr_u
                                      i32.const 4
                                      i32.and
                                      i32.add
                                      i32.load offset=16
                                      local.tee 11
                                      i32.eq
                                      select
                                      local.get 3
                                      local.get 6
                                      select
                                      local.set 3
                                      local.get 7
                                      i32.const 1
                                      i32.shl
                                      local.set 7
                                      local.get 11
                                      local.set 0
                                      local.get 11
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  block ;; label = @16
                                    local.get 3
                                    local.get 9
                                    i32.or
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 9
                                    i32.const 2
                                    local.get 8
                                    i32.shl
                                    local.tee 3
                                    i32.const 0
                                    local.get 3
                                    i32.sub
                                    i32.or
                                    local.get 10
                                    i32.and
                                    local.tee 3
                                    i32.eqz
                                    br_if 3 (;@13;)
                                    local.get 3
                                    i32.ctz
                                    i32.const 2
                                    i32.shl
                                    i32.load offset=1057404
                                    local.set 3
                                  end
                                  local.get 3
                                  i32.eqz
                                  br_if 1 (;@14;)
                                end
                                loop ;; label = @15
                                  local.get 3
                                  i32.load offset=4
                                  i32.const -8
                                  i32.and
                                  local.get 5
                                  i32.sub
                                  local.tee 6
                                  local.get 4
                                  i32.lt_u
                                  local.set 7
                                  block ;; label = @16
                                    local.get 3
                                    i32.load offset=16
                                    local.tee 0
                                    br_if 0 (;@16;)
                                    local.get 3
                                    i32.load offset=20
                                    local.set 0
                                  end
                                  local.get 6
                                  local.get 4
                                  local.get 7
                                  select
                                  local.set 4
                                  local.get 3
                                  local.get 9
                                  local.get 7
                                  select
                                  local.set 9
                                  local.get 0
                                  local.set 3
                                  local.get 0
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 9
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 4
                              i32.const 0
                              i32.load offset=1057108
                              local.get 5
                              i32.sub
                              i32.ge_u
                              br_if 0 (;@13;)
                              local.get 9
                              i32.load offset=24
                              local.set 11
                              block ;; label = @14
                                local.get 9
                                i32.load offset=12
                                local.tee 3
                                local.get 9
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 9
                                i32.load offset=8
                                local.tee 0
                                local.get 3
                                i32.store offset=12
                                local.get 3
                                local.get 0
                                i32.store offset=8
                                br 11 (;@3;)
                              end
                              block ;; label = @14
                                block ;; label = @15
                                  local.get 9
                                  i32.load offset=20
                                  local.tee 0
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 9
                                  i32.const 20
                                  i32.add
                                  local.set 7
                                  br 1 (;@14;)
                                end
                                local.get 9
                                i32.load offset=16
                                local.tee 0
                                i32.eqz
                                br_if 4 (;@10;)
                                local.get 9
                                i32.const 16
                                i32.add
                                local.set 7
                              end
                              loop ;; label = @14
                                local.get 7
                                local.set 6
                                local.get 0
                                local.tee 3
                                i32.const 20
                                i32.add
                                local.set 7
                                local.get 3
                                i32.load offset=20
                                local.tee 0
                                br_if 0 (;@14;)
                                local.get 3
                                i32.const 16
                                i32.add
                                local.set 7
                                local.get 3
                                i32.load offset=16
                                local.tee 0
                                br_if 0 (;@14;)
                              end
                              local.get 6
                              i32.const 0
                              i32.store
                              br 10 (;@3;)
                            end
                            block ;; label = @13
                              i32.const 0
                              i32.load offset=1057108
                              local.tee 3
                              local.get 5
                              i32.lt_u
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.load offset=1057120
                              local.set 4
                              block ;; label = @14
                                block ;; label = @15
                                  local.get 3
                                  local.get 5
                                  i32.sub
                                  local.tee 0
                                  i32.const 16
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                  local.get 4
                                  local.get 5
                                  i32.add
                                  local.tee 7
                                  local.get 0
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  local.get 4
                                  local.get 3
                                  i32.add
                                  local.get 0
                                  i32.store
                                  local.get 4
                                  local.get 5
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  br 1 (;@14;)
                                end
                                local.get 4
                                local.get 3
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                local.get 4
                                local.get 3
                                i32.add
                                local.tee 3
                                local.get 3
                                i32.load offset=4
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                i32.const 0
                                local.set 0
                                i32.const 0
                                local.set 7
                              end
                              i32.const 0
                              local.get 0
                              i32.store offset=1057108
                              i32.const 0
                              local.get 7
                              i32.store offset=1057120
                              local.get 4
                              i32.const 8
                              i32.add
                              local.set 3
                              br 12 (;@1;)
                            end
                            block ;; label = @13
                              i32.const 0
                              i32.load offset=1057112
                              local.tee 0
                              local.get 5
                              i32.le_u
                              br_if 0 (;@13;)
                              local.get 2
                              local.get 5
                              i32.add
                              local.tee 3
                              local.get 0
                              local.get 5
                              i32.sub
                              local.tee 4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              i32.const 0
                              local.get 3
                              i32.store offset=1057124
                              i32.const 0
                              local.get 4
                              i32.store offset=1057112
                              local.get 2
                              local.get 5
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 2
                              i32.const 8
                              i32.add
                              local.set 3
                              br 12 (;@1;)
                            end
                            block ;; label = @13
                              block ;; label = @14
                                i32.const 0
                                i32.load offset=1057572
                                i32.eqz
                                br_if 0 (;@14;)
                                i32.const 0
                                i32.load offset=1057580
                                local.set 4
                                br 1 (;@13;)
                              end
                              i32.const 65536
                              local.set 4
                              i32.const 0
                              i32.const 65536
                              i32.store offset=1057580
                              i32.const 0
                              i64.const -1
                              i64.store offset=1057584 align=4
                              i32.const 0
                              i32.const 65536
                              i32.store offset=1057576
                              i32.const 0
                              local.get 1
                              i32.const 12
                              i32.add
                              i32.const -16
                              i32.and
                              i32.const 1431655768
                              i32.xor
                              i32.store offset=1057572
                              i32.const 0
                              i32.const 0
                              i32.store offset=1057592
                              i32.const 0
                              i32.const 0
                              i32.store offset=1057544
                            end
                            i32.const 0
                            local.set 3
                            block ;; label = @13
                              local.get 4
                              local.get 5
                              i32.const 71
                              i32.add
                              local.tee 11
                              i32.add
                              local.tee 7
                              i32.const 0
                              local.get 4
                              i32.sub
                              local.tee 6
                              i32.and
                              local.tee 9
                              local.get 5
                              i32.gt_u
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 48
                              i32.store offset=1057092
                              br 12 (;@1;)
                            end
                            block ;; label = @13
                              i32.const 0
                              i32.load offset=1057540
                              local.tee 3
                              i32.eqz
                              br_if 0 (;@13;)
                              block ;; label = @14
                                i32.const 0
                                i32.load offset=1057532
                                local.tee 4
                                local.get 9
                                i32.add
                                local.tee 8
                                local.get 4
                                i32.le_u
                                br_if 0 (;@14;)
                                local.get 8
                                local.get 3
                                i32.le_u
                                br_if 1 (;@13;)
                              end
                              i32.const 0
                              local.set 3
                              i32.const 0
                              i32.const 48
                              i32.store offset=1057092
                              br 12 (;@1;)
                            end
                            i32.const 0
                            i32.load8_u offset=1057544
                            i32.const 4
                            i32.and
                            br_if 5 (;@7;)
                            block ;; label = @13
                              block ;; label = @14
                                block ;; label = @15
                                  local.get 2
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  i32.const 1057548
                                  local.set 3
                                  loop ;; label = @16
                                    block ;; label = @17
                                      local.get 2
                                      local.get 3
                                      i32.load
                                      local.tee 4
                                      i32.lt_u
                                      br_if 0 (;@17;)
                                      local.get 2
                                      local.get 4
                                      local.get 3
                                      i32.load offset=4
                                      i32.add
                                      i32.lt_u
                                      br_if 3 (;@14;)
                                    end
                                    local.get 3
                                    i32.load offset=8
                                    local.tee 3
                                    br_if 0 (;@16;)
                                  end
                                end
                                i32.const 0
                                call $sbrk
                                local.tee 7
                                i32.const -1
                                i32.eq
                                br_if 6 (;@8;)
                                local.get 9
                                local.set 6
                                block ;; label = @15
                                  i32.const 0
                                  i32.load offset=1057576
                                  local.tee 3
                                  i32.const -1
                                  i32.add
                                  local.tee 4
                                  local.get 7
                                  i32.and
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 9
                                  local.get 7
                                  i32.sub
                                  local.get 4
                                  local.get 7
                                  i32.add
                                  i32.const 0
                                  local.get 3
                                  i32.sub
                                  i32.and
                                  i32.add
                                  local.set 6
                                end
                                local.get 6
                                local.get 5
                                i32.le_u
                                br_if 6 (;@8;)
                                local.get 6
                                i32.const 2147483646
                                i32.gt_u
                                br_if 6 (;@8;)
                                block ;; label = @15
                                  i32.const 0
                                  i32.load offset=1057540
                                  local.tee 3
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  i32.load offset=1057532
                                  local.tee 4
                                  local.get 6
                                  i32.add
                                  local.tee 0
                                  local.get 4
                                  i32.le_u
                                  br_if 7 (;@8;)
                                  local.get 0
                                  local.get 3
                                  i32.gt_u
                                  br_if 7 (;@8;)
                                end
                                local.get 6
                                call $sbrk
                                local.tee 3
                                local.get 7
                                i32.ne
                                br_if 1 (;@13;)
                                br 8 (;@6;)
                              end
                              local.get 7
                              local.get 0
                              i32.sub
                              local.get 6
                              i32.and
                              local.tee 6
                              i32.const 2147483646
                              i32.gt_u
                              br_if 5 (;@8;)
                              local.get 6
                              call $sbrk
                              local.tee 7
                              local.get 3
                              i32.load
                              local.get 3
                              i32.load offset=4
                              i32.add
                              i32.eq
                              br_if 4 (;@9;)
                              local.get 7
                              local.set 3
                            end
                            block ;; label = @13
                              local.get 6
                              local.get 5
                              i32.const 72
                              i32.add
                              i32.ge_u
                              br_if 0 (;@13;)
                              local.get 3
                              i32.const -1
                              i32.eq
                              br_if 0 (;@13;)
                              block ;; label = @14
                                local.get 11
                                local.get 6
                                i32.sub
                                i32.const 0
                                i32.load offset=1057580
                                local.tee 4
                                i32.add
                                i32.const 0
                                local.get 4
                                i32.sub
                                i32.and
                                local.tee 4
                                i32.const 2147483646
                                i32.le_u
                                br_if 0 (;@14;)
                                local.get 3
                                local.set 7
                                br 8 (;@6;)
                              end
                              block ;; label = @14
                                local.get 4
                                call $sbrk
                                i32.const -1
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 4
                                local.get 6
                                i32.add
                                local.set 6
                                local.get 3
                                local.set 7
                                br 8 (;@6;)
                              end
                              i32.const 0
                              local.get 6
                              i32.sub
                              call $sbrk
                              drop
                              br 5 (;@8;)
                            end
                            local.get 3
                            local.set 7
                            local.get 3
                            i32.const -1
                            i32.ne
                            br_if 6 (;@6;)
                            br 4 (;@8;)
                          end
                          unreachable
                        end
                        i32.const 0
                        local.set 3
                        br 8 (;@2;)
                      end
                      i32.const 0
                      local.set 3
                      br 6 (;@3;)
                    end
                    local.get 7
                    i32.const -1
                    i32.ne
                    br_if 2 (;@6;)
                  end
                  i32.const 0
                  i32.const 0
                  i32.load offset=1057544
                  i32.const 4
                  i32.or
                  i32.store offset=1057544
                end
                local.get 9
                i32.const 2147483646
                i32.gt_u
                br_if 1 (;@5;)
                local.get 9
                call $sbrk
                local.set 7
                i32.const 0
                call $sbrk
                local.set 3
                local.get 7
                i32.const -1
                i32.eq
                br_if 1 (;@5;)
                local.get 3
                i32.const -1
                i32.eq
                br_if 1 (;@5;)
                local.get 7
                local.get 3
                i32.ge_u
                br_if 1 (;@5;)
                local.get 3
                local.get 7
                i32.sub
                local.tee 6
                local.get 5
                i32.const 56
                i32.add
                i32.le_u
                br_if 1 (;@5;)
              end
              i32.const 0
              i32.const 0
              i32.load offset=1057532
              local.get 6
              i32.add
              local.tee 3
              i32.store offset=1057532
              block ;; label = @6
                local.get 3
                i32.const 0
                i32.load offset=1057536
                i32.le_u
                br_if 0 (;@6;)
                i32.const 0
                local.get 3
                i32.store offset=1057536
              end
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    block ;; label = @9
                      i32.const 0
                      i32.load offset=1057124
                      local.tee 4
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 1057548
                      local.set 3
                      loop ;; label = @10
                        local.get 7
                        local.get 3
                        i32.load
                        local.tee 0
                        local.get 3
                        i32.load offset=4
                        local.tee 9
                        i32.add
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 3
                        i32.load offset=8
                        local.tee 3
                        br_if 0 (;@10;)
                        br 3 (;@7;)
                      end
                    end
                    block ;; label = @9
                      block ;; label = @10
                        i32.const 0
                        i32.load offset=1057116
                        local.tee 3
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 7
                        local.get 3
                        i32.ge_u
                        br_if 1 (;@9;)
                      end
                      i32.const 0
                      local.get 7
                      i32.store offset=1057116
                    end
                    i32.const 0
                    local.get 6
                    i32.store offset=1057552
                    i32.const 0
                    local.get 7
                    i32.store offset=1057548
                    i32.const 0
                    i32.const -1
                    i32.store offset=1057132
                    i32.const 0
                    i32.const 0
                    i32.load offset=1057572
                    i32.store offset=1057136
                    i32.const 0
                    i32.const 0
                    i32.store offset=1057560
                    i32.const -256
                    local.set 3
                    loop ;; label = @9
                      local.get 3
                      i32.const 1057416
                      i32.add
                      local.get 3
                      i32.const 1057404
                      i32.add
                      local.tee 4
                      i32.store
                      local.get 4
                      local.get 3
                      i32.const 1057396
                      i32.add
                      local.tee 0
                      i32.store
                      local.get 3
                      i32.const 1057408
                      i32.add
                      local.get 0
                      i32.store
                      local.get 3
                      i32.const 1057424
                      i32.add
                      local.get 3
                      i32.const 1057412
                      i32.add
                      local.tee 0
                      i32.store
                      local.get 0
                      local.get 4
                      i32.store
                      local.get 3
                      i32.const 1057432
                      i32.add
                      local.get 3
                      i32.const 1057420
                      i32.add
                      local.tee 4
                      i32.store
                      local.get 4
                      local.get 0
                      i32.store
                      local.get 3
                      i32.const 1057428
                      i32.add
                      local.get 4
                      i32.store
                      local.get 3
                      i32.const 32
                      i32.add
                      local.tee 3
                      br_if 0 (;@9;)
                    end
                    local.get 7
                    i32.const -8
                    local.get 7
                    i32.sub
                    i32.const 15
                    i32.and
                    local.tee 3
                    i32.add
                    local.tee 4
                    local.get 6
                    i32.const -56
                    i32.add
                    local.tee 0
                    local.get 3
                    i32.sub
                    local.tee 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    i32.const 0
                    i32.const 0
                    i32.load offset=1057588
                    i32.store offset=1057128
                    i32.const 0
                    local.get 3
                    i32.store offset=1057112
                    i32.const 0
                    local.get 4
                    i32.store offset=1057124
                    local.get 7
                    local.get 0
                    i32.add
                    i32.const 56
                    i32.store offset=4
                    br 2 (;@6;)
                  end
                  local.get 4
                  local.get 7
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 4
                  local.get 0
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=12
                  i32.const 8
                  i32.and
                  br_if 0 (;@7;)
                  local.get 4
                  i32.const -8
                  local.get 4
                  i32.sub
                  i32.const 15
                  i32.and
                  local.tee 0
                  i32.add
                  local.tee 7
                  i32.const 0
                  i32.load offset=1057112
                  local.get 6
                  i32.add
                  local.tee 11
                  local.get 0
                  i32.sub
                  local.tee 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 3
                  local.get 9
                  local.get 6
                  i32.add
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=1057588
                  i32.store offset=1057128
                  i32.const 0
                  local.get 0
                  i32.store offset=1057112
                  i32.const 0
                  local.get 7
                  i32.store offset=1057124
                  local.get 4
                  local.get 11
                  i32.add
                  i32.const 56
                  i32.store offset=4
                  br 1 (;@6;)
                end
                block ;; label = @7
                  local.get 7
                  i32.const 0
                  i32.load offset=1057116
                  i32.ge_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 7
                  i32.store offset=1057116
                end
                local.get 7
                local.get 6
                i32.add
                local.set 0
                i32.const 1057548
                local.set 3
                block ;; label = @7
                  block ;; label = @8
                    loop ;; label = @9
                      local.get 3
                      i32.load
                      local.tee 9
                      local.get 0
                      i32.eq
                      br_if 1 (;@8;)
                      local.get 3
                      i32.load offset=8
                      local.tee 3
                      br_if 0 (;@9;)
                      br 2 (;@7;)
                    end
                  end
                  local.get 3
                  i32.load8_u offset=12
                  i32.const 8
                  i32.and
                  i32.eqz
                  br_if 3 (;@4;)
                end
                i32.const 1057548
                local.set 3
                block ;; label = @7
                  loop ;; label = @8
                    block ;; label = @9
                      local.get 4
                      local.get 3
                      i32.load
                      local.tee 0
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 4
                      local.get 0
                      local.get 3
                      i32.load offset=4
                      i32.add
                      local.tee 0
                      i32.lt_u
                      br_if 2 (;@7;)
                    end
                    local.get 3
                    i32.load offset=8
                    local.set 3
                    br 0 (;@8;)
                  end
                end
                local.get 7
                i32.const -8
                local.get 7
                i32.sub
                i32.const 15
                i32.and
                local.tee 3
                i32.add
                local.tee 11
                local.get 6
                i32.const -56
                i32.add
                local.tee 9
                local.get 3
                i32.sub
                local.tee 3
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 7
                local.get 9
                i32.add
                i32.const 56
                i32.store offset=4
                local.get 4
                local.get 0
                i32.const 55
                local.get 0
                i32.sub
                i32.const 15
                i32.and
                i32.add
                i32.const -63
                i32.add
                local.tee 9
                local.get 9
                local.get 4
                i32.const 16
                i32.add
                i32.lt_u
                select
                local.tee 9
                i32.const 35
                i32.store offset=4
                i32.const 0
                i32.const 0
                i32.load offset=1057588
                i32.store offset=1057128
                i32.const 0
                local.get 3
                i32.store offset=1057112
                i32.const 0
                local.get 11
                i32.store offset=1057124
                local.get 9
                i32.const 0
                i64.load offset=1057556 align=4
                i64.store offset=16 align=4
                local.get 9
                i32.const 0
                i64.load offset=1057548 align=4
                i64.store offset=8 align=4
                i32.const 0
                local.get 9
                i32.const 8
                i32.add
                i32.store offset=1057556
                i32.const 0
                local.get 6
                i32.store offset=1057552
                i32.const 0
                local.get 7
                i32.store offset=1057548
                i32.const 0
                i32.const 0
                i32.store offset=1057560
                local.get 9
                i32.const 36
                i32.add
                local.set 3
                loop ;; label = @7
                  local.get 3
                  i32.const 7
                  i32.store
                  local.get 3
                  i32.const 4
                  i32.add
                  local.tee 3
                  local.get 0
                  i32.lt_u
                  br_if 0 (;@7;)
                end
                local.get 9
                local.get 4
                i32.eq
                br_if 0 (;@6;)
                local.get 9
                local.get 9
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
                local.get 9
                local.get 9
                local.get 4
                i32.sub
                local.tee 7
                i32.store
                local.get 4
                local.get 7
                i32.const 1
                i32.or
                i32.store offset=4
                block ;; label = @7
                  block ;; label = @8
                    local.get 7
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 7
                    i32.const 248
                    i32.and
                    i32.const 1057140
                    i32.add
                    local.set 3
                    block ;; label = @9
                      block ;; label = @10
                        i32.const 0
                        i32.load offset=1057100
                        local.tee 0
                        i32.const 1
                        local.get 7
                        i32.const 3
                        i32.shr_u
                        i32.shl
                        local.tee 7
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 0
                        local.get 7
                        i32.or
                        i32.store offset=1057100
                        local.get 3
                        local.set 0
                        br 1 (;@9;)
                      end
                      local.get 3
                      i32.load offset=8
                      local.set 0
                    end
                    local.get 0
                    local.get 4
                    i32.store offset=12
                    local.get 3
                    local.get 4
                    i32.store offset=8
                    i32.const 12
                    local.set 7
                    i32.const 8
                    local.set 9
                    br 1 (;@7;)
                  end
                  i32.const 31
                  local.set 3
                  block ;; label = @8
                    local.get 7
                    i32.const 16777215
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 7
                    i32.const 38
                    local.get 7
                    i32.const 8
                    i32.shr_u
                    i32.clz
                    local.tee 3
                    i32.sub
                    i32.shr_u
                    i32.const 1
                    i32.and
                    local.get 3
                    i32.const 1
                    i32.shl
                    i32.or
                    i32.const 62
                    i32.xor
                    local.set 3
                  end
                  local.get 4
                  local.get 3
                  i32.store offset=28
                  local.get 4
                  i64.const 0
                  i64.store offset=16 align=4
                  local.get 3
                  i32.const 2
                  i32.shl
                  i32.const 1057404
                  i32.add
                  local.set 0
                  block ;; label = @8
                    block ;; label = @9
                      block ;; label = @10
                        i32.const 0
                        i32.load offset=1057104
                        local.tee 9
                        i32.const 1
                        local.get 3
                        i32.shl
                        local.tee 6
                        i32.and
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 4
                        i32.store
                        i32.const 0
                        local.get 9
                        local.get 6
                        i32.or
                        i32.store offset=1057104
                        local.get 4
                        local.get 0
                        i32.store offset=24
                        br 1 (;@9;)
                      end
                      local.get 7
                      i32.const 0
                      i32.const 25
                      local.get 3
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 3
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 3
                      local.get 0
                      i32.load
                      local.set 9
                      loop ;; label = @10
                        local.get 9
                        local.tee 0
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 7
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 3
                        i32.const 29
                        i32.shr_u
                        local.set 9
                        local.get 3
                        i32.const 1
                        i32.shl
                        local.set 3
                        local.get 0
                        local.get 9
                        i32.const 4
                        i32.and
                        i32.add
                        local.tee 6
                        i32.load offset=16
                        local.tee 9
                        br_if 0 (;@10;)
                      end
                      local.get 6
                      i32.const 16
                      i32.add
                      local.get 4
                      i32.store
                      local.get 4
                      local.get 0
                      i32.store offset=24
                    end
                    i32.const 8
                    local.set 7
                    i32.const 12
                    local.set 9
                    local.get 4
                    local.set 0
                    local.get 4
                    local.set 3
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.load offset=8
                  local.set 3
                  local.get 0
                  local.get 4
                  i32.store offset=8
                  local.get 3
                  local.get 4
                  i32.store offset=12
                  local.get 4
                  local.get 3
                  i32.store offset=8
                  i32.const 0
                  local.set 3
                  i32.const 24
                  local.set 7
                  i32.const 12
                  local.set 9
                end
                local.get 4
                local.get 9
                i32.add
                local.get 0
                i32.store
                local.get 4
                local.get 7
                i32.add
                local.get 3
                i32.store
              end
              i32.const 0
              i32.load offset=1057112
              local.tee 3
              local.get 5
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              i32.load offset=1057124
              local.tee 4
              local.get 5
              i32.add
              local.tee 0
              local.get 3
              local.get 5
              i32.sub
              local.tee 3
              i32.const 1
              i32.or
              i32.store offset=4
              i32.const 0
              local.get 3
              i32.store offset=1057112
              i32.const 0
              local.get 0
              i32.store offset=1057124
              local.get 4
              local.get 5
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 4
              i32.const 8
              i32.add
              local.set 3
              br 4 (;@1;)
            end
            i32.const 0
            local.set 3
            i32.const 0
            i32.const 48
            i32.store offset=1057092
            br 3 (;@1;)
          end
          local.get 3
          local.get 7
          i32.store
          local.get 3
          local.get 3
          i32.load offset=4
          local.get 6
          i32.add
          i32.store offset=4
          local.get 7
          local.get 9
          local.get 5
          call $prepend_alloc
          local.set 3
          br 2 (;@1;)
        end
        block ;; label = @3
          local.get 11
          i32.eqz
          br_if 0 (;@3;)
          block ;; label = @4
            block ;; label = @5
              local.get 9
              local.get 9
              i32.load offset=28
              local.tee 7
              i32.const 2
              i32.shl
              local.tee 0
              i32.load offset=1057404
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              i32.const 1057404
              i32.add
              local.get 3
              i32.store
              local.get 3
              br_if 1 (;@4;)
              i32.const 0
              local.get 10
              i32.const -2
              local.get 7
              i32.rotl
              i32.and
              local.tee 10
              i32.store offset=1057104
              br 2 (;@3;)
            end
            block ;; label = @5
              block ;; label = @6
                local.get 11
                i32.load offset=16
                local.get 9
                i32.ne
                br_if 0 (;@6;)
                local.get 11
                local.get 3
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 11
              local.get 3
              i32.store offset=20
            end
            local.get 3
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 3
          local.get 11
          i32.store offset=24
          block ;; label = @4
            local.get 9
            i32.load offset=16
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 0
            i32.store offset=16
            local.get 0
            local.get 3
            i32.store offset=24
          end
          local.get 9
          i32.load offset=20
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 0
          i32.store offset=20
          local.get 0
          local.get 3
          i32.store offset=24
        end
        block ;; label = @3
          block ;; label = @4
            local.get 4
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
            local.get 9
            local.get 4
            local.get 5
            i32.or
            local.tee 3
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 9
            local.get 3
            i32.add
            local.tee 3
            local.get 3
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 9
          local.get 5
          i32.add
          local.tee 7
          local.get 4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 9
          local.get 5
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 7
          local.get 4
          i32.add
          local.get 4
          i32.store
          block ;; label = @4
            local.get 4
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            i32.const 248
            i32.and
            i32.const 1057140
            i32.add
            local.set 3
            block ;; label = @5
              block ;; label = @6
                i32.const 0
                i32.load offset=1057100
                local.tee 5
                i32.const 1
                local.get 4
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 4
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 5
                local.get 4
                i32.or
                i32.store offset=1057100
                local.get 3
                local.set 4
                br 1 (;@5;)
              end
              local.get 3
              i32.load offset=8
              local.set 4
            end
            local.get 4
            local.get 7
            i32.store offset=12
            local.get 3
            local.get 7
            i32.store offset=8
            local.get 7
            local.get 3
            i32.store offset=12
            local.get 7
            local.get 4
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 31
          local.set 3
          block ;; label = @4
            local.get 4
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            i32.const 38
            local.get 4
            i32.const 8
            i32.shr_u
            i32.clz
            local.tee 3
            i32.sub
            i32.shr_u
            i32.const 1
            i32.and
            local.get 3
            i32.const 1
            i32.shl
            i32.or
            i32.const 62
            i32.xor
            local.set 3
          end
          local.get 7
          local.get 3
          i32.store offset=28
          local.get 7
          i64.const 0
          i64.store offset=16 align=4
          local.get 3
          i32.const 2
          i32.shl
          i32.const 1057404
          i32.add
          local.set 5
          block ;; label = @4
            local.get 10
            i32.const 1
            local.get 3
            i32.shl
            local.tee 0
            i32.and
            br_if 0 (;@4;)
            local.get 5
            local.get 7
            i32.store
            i32.const 0
            local.get 10
            local.get 0
            i32.or
            i32.store offset=1057104
            local.get 7
            local.get 5
            i32.store offset=24
            local.get 7
            local.get 7
            i32.store offset=8
            local.get 7
            local.get 7
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 4
          i32.const 0
          i32.const 25
          local.get 3
          i32.const 1
          i32.shr_u
          i32.sub
          local.get 3
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 3
          local.get 5
          i32.load
          local.set 0
          block ;; label = @4
            loop ;; label = @5
              local.get 0
              local.tee 5
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 4
              i32.eq
              br_if 1 (;@4;)
              local.get 3
              i32.const 29
              i32.shr_u
              local.set 0
              local.get 3
              i32.const 1
              i32.shl
              local.set 3
              local.get 5
              local.get 0
              i32.const 4
              i32.and
              i32.add
              local.tee 6
              i32.load offset=16
              local.tee 0
              br_if 0 (;@5;)
            end
            local.get 6
            i32.const 16
            i32.add
            local.get 7
            i32.store
            local.get 7
            local.get 5
            i32.store offset=24
            local.get 7
            local.get 7
            i32.store offset=12
            local.get 7
            local.get 7
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 5
          i32.load offset=8
          local.tee 3
          local.get 7
          i32.store offset=12
          local.get 5
          local.get 7
          i32.store offset=8
          local.get 7
          i32.const 0
          i32.store offset=24
          local.get 7
          local.get 5
          i32.store offset=12
          local.get 7
          local.get 3
          i32.store offset=8
        end
        local.get 9
        i32.const 8
        i32.add
        local.set 3
        br 1 (;@1;)
      end
      block ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        block ;; label = @3
          block ;; label = @4
            local.get 7
            local.get 7
            i32.load offset=28
            local.tee 9
            i32.const 2
            i32.shl
            local.tee 0
            i32.load offset=1057404
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            i32.const 1057404
            i32.add
            local.get 3
            i32.store
            local.get 3
            br_if 1 (;@3;)
            i32.const 0
            local.get 10
            i32.const -2
            local.get 9
            i32.rotl
            i32.and
            i32.store offset=1057104
            br 2 (;@2;)
          end
          block ;; label = @4
            block ;; label = @5
              local.get 2
              i32.load offset=16
              local.get 7
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              local.get 3
              i32.store offset=16
              br 1 (;@4;)
            end
            local.get 2
            local.get 3
            i32.store offset=20
          end
          local.get 3
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 3
        local.get 2
        i32.store offset=24
        block ;; label = @3
          local.get 7
          i32.load offset=16
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 0
          i32.store offset=16
          local.get 0
          local.get 3
          i32.store offset=24
        end
        local.get 7
        i32.load offset=20
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        i32.store offset=20
        local.get 0
        local.get 3
        i32.store offset=24
      end
      block ;; label = @2
        block ;; label = @3
          local.get 4
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 7
          local.get 4
          local.get 5
          i32.or
          local.tee 3
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 7
          local.get 3
          i32.add
          local.tee 3
          local.get 3
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 7
        local.get 5
        i32.add
        local.tee 0
        local.get 4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 7
        local.get 5
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 0
        local.get 4
        i32.add
        local.get 4
        i32.store
        block ;; label = @3
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.const -8
          i32.and
          i32.const 1057140
          i32.add
          local.set 5
          i32.const 0
          i32.load offset=1057120
          local.set 3
          block ;; label = @4
            block ;; label = @5
              i32.const 1
              local.get 8
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 9
              local.get 6
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 9
              local.get 6
              i32.or
              i32.store offset=1057100
              local.get 5
              local.set 9
              br 1 (;@4;)
            end
            local.get 5
            i32.load offset=8
            local.set 9
          end
          local.get 9
          local.get 3
          i32.store offset=12
          local.get 5
          local.get 3
          i32.store offset=8
          local.get 3
          local.get 5
          i32.store offset=12
          local.get 3
          local.get 9
          i32.store offset=8
        end
        i32.const 0
        local.get 0
        i32.store offset=1057120
        i32.const 0
        local.get 4
        i32.store offset=1057108
      end
      local.get 7
      i32.const 8
      i32.add
      local.set 3
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3
  )
  (func $prepend_alloc (;287;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.const -8
    local.get 0
    i32.sub
    i32.const 15
    i32.and
    i32.add
    local.tee 3
    local.get 2
    i32.const 3
    i32.or
    i32.store offset=4
    local.get 1
    i32.const -8
    local.get 1
    i32.sub
    i32.const 15
    i32.and
    i32.add
    local.tee 4
    local.get 3
    local.get 2
    i32.add
    local.tee 5
    i32.sub
    local.set 0
    block ;; label = @1
      block ;; label = @2
        local.get 4
        i32.const 0
        i32.load offset=1057124
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 5
        i32.store offset=1057124
        i32.const 0
        i32.const 0
        i32.load offset=1057112
        local.get 0
        i32.add
        local.tee 2
        i32.store offset=1057112
        local.get 5
        local.get 2
        i32.const 1
        i32.or
        i32.store offset=4
        br 1 (;@1;)
      end
      block ;; label = @2
        local.get 4
        i32.const 0
        i32.load offset=1057120
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 5
        i32.store offset=1057120
        i32.const 0
        i32.const 0
        i32.load offset=1057108
        local.get 0
        i32.add
        local.tee 2
        i32.store offset=1057108
        local.get 5
        local.get 2
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 5
        local.get 2
        i32.add
        local.get 2
        i32.store
        br 1 (;@1;)
      end
      block ;; label = @2
        local.get 4
        i32.load offset=4
        local.tee 1
        i32.const 3
        i32.and
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.const -8
        i32.and
        local.set 6
        local.get 4
        i32.load offset=12
        local.set 2
        block ;; label = @3
          block ;; label = @4
            local.get 1
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            block ;; label = @5
              local.get 2
              local.get 4
              i32.load offset=8
              local.tee 7
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1057100
              i32.const -2
              local.get 1
              i32.const 3
              i32.shr_u
              i32.rotl
              i32.and
              i32.store offset=1057100
              br 2 (;@3;)
            end
            local.get 2
            local.get 7
            i32.store offset=8
            local.get 7
            local.get 2
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 4
          i32.load offset=24
          local.set 8
          block ;; label = @4
            block ;; label = @5
              local.get 2
              local.get 4
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              i32.load offset=8
              local.tee 1
              local.get 2
              i32.store offset=12
              local.get 2
              local.get 1
              i32.store offset=8
              br 1 (;@4;)
            end
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 4
                  i32.load offset=20
                  local.tee 1
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  i32.const 20
                  i32.add
                  local.set 7
                  br 1 (;@6;)
                end
                local.get 4
                i32.load offset=16
                local.tee 1
                i32.eqz
                br_if 1 (;@5;)
                local.get 4
                i32.const 16
                i32.add
                local.set 7
              end
              loop ;; label = @6
                local.get 7
                local.set 9
                local.get 1
                local.tee 2
                i32.const 20
                i32.add
                local.set 7
                local.get 2
                i32.load offset=20
                local.tee 1
                br_if 0 (;@6;)
                local.get 2
                i32.const 16
                i32.add
                local.set 7
                local.get 2
                i32.load offset=16
                local.tee 1
                br_if 0 (;@6;)
              end
              local.get 9
              i32.const 0
              i32.store
              br 1 (;@4;)
            end
            i32.const 0
            local.set 2
          end
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          block ;; label = @4
            block ;; label = @5
              local.get 4
              local.get 4
              i32.load offset=28
              local.tee 7
              i32.const 2
              i32.shl
              local.tee 1
              i32.load offset=1057404
              i32.ne
              br_if 0 (;@5;)
              local.get 1
              i32.const 1057404
              i32.add
              local.get 2
              i32.store
              local.get 2
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1057104
              i32.const -2
              local.get 7
              i32.rotl
              i32.and
              i32.store offset=1057104
              br 2 (;@3;)
            end
            block ;; label = @5
              block ;; label = @6
                local.get 8
                i32.load offset=16
                local.get 4
                i32.ne
                br_if 0 (;@6;)
                local.get 8
                local.get 2
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 8
              local.get 2
              i32.store offset=20
            end
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 2
          local.get 8
          i32.store offset=24
          block ;; label = @4
            local.get 4
            i32.load offset=16
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            i32.store offset=16
            local.get 1
            local.get 2
            i32.store offset=24
          end
          local.get 4
          i32.load offset=20
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 1
          i32.store offset=20
          local.get 1
          local.get 2
          i32.store offset=24
        end
        local.get 6
        local.get 0
        i32.add
        local.set 0
        local.get 4
        local.get 6
        i32.add
        local.tee 4
        i32.load offset=4
        local.set 1
      end
      local.get 4
      local.get 1
      i32.const -2
      i32.and
      i32.store offset=4
      local.get 5
      local.get 0
      i32.add
      local.get 0
      i32.store
      local.get 5
      local.get 0
      i32.const 1
      i32.or
      i32.store offset=4
      block ;; label = @2
        local.get 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 248
        i32.and
        i32.const 1057140
        i32.add
        local.set 2
        block ;; label = @3
          block ;; label = @4
            i32.const 0
            i32.load offset=1057100
            local.tee 1
            i32.const 1
            local.get 0
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 0
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            local.get 0
            i32.or
            i32.store offset=1057100
            local.get 2
            local.set 0
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=8
          local.set 0
        end
        local.get 0
        local.get 5
        i32.store offset=12
        local.get 2
        local.get 5
        i32.store offset=8
        local.get 5
        local.get 2
        i32.store offset=12
        local.get 5
        local.get 0
        i32.store offset=8
        br 1 (;@1;)
      end
      i32.const 31
      local.set 2
      block ;; label = @2
        local.get 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 38
        local.get 0
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 2
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 2
        i32.const 1
        i32.shl
        i32.or
        i32.const 62
        i32.xor
        local.set 2
      end
      local.get 5
      local.get 2
      i32.store offset=28
      local.get 5
      i64.const 0
      i64.store offset=16 align=4
      local.get 2
      i32.const 2
      i32.shl
      i32.const 1057404
      i32.add
      local.set 1
      block ;; label = @2
        i32.const 0
        i32.load offset=1057104
        local.tee 7
        i32.const 1
        local.get 2
        i32.shl
        local.tee 4
        i32.and
        br_if 0 (;@2;)
        local.get 1
        local.get 5
        i32.store
        i32.const 0
        local.get 7
        local.get 4
        i32.or
        i32.store offset=1057104
        local.get 5
        local.get 1
        i32.store offset=24
        local.get 5
        local.get 5
        i32.store offset=8
        local.get 5
        local.get 5
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.const 25
      local.get 2
      i32.const 1
      i32.shr_u
      i32.sub
      local.get 2
      i32.const 31
      i32.eq
      select
      i32.shl
      local.set 2
      local.get 1
      i32.load
      local.set 7
      block ;; label = @2
        loop ;; label = @3
          local.get 7
          local.tee 1
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 0
          i32.eq
          br_if 1 (;@2;)
          local.get 2
          i32.const 29
          i32.shr_u
          local.set 7
          local.get 2
          i32.const 1
          i32.shl
          local.set 2
          local.get 1
          local.get 7
          i32.const 4
          i32.and
          i32.add
          local.tee 4
          i32.load offset=16
          local.tee 7
          br_if 0 (;@3;)
        end
        local.get 4
        i32.const 16
        i32.add
        local.get 5
        i32.store
        local.get 5
        local.get 1
        i32.store offset=24
        local.get 5
        local.get 5
        i32.store offset=12
        local.get 5
        local.get 5
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=8
      local.tee 2
      local.get 5
      i32.store offset=12
      local.get 1
      local.get 5
      i32.store offset=8
      local.get 5
      i32.const 0
      i32.store offset=24
      local.get 5
      local.get 1
      i32.store offset=12
      local.get 5
      local.get 2
      i32.store offset=8
    end
    local.get 3
    i32.const 8
    i32.add
  )
  (func $free (;288;) (type 0) (param i32)
    local.get 0
    call $dlfree
  )
  (func $dlfree (;289;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -8
      i32.add
      local.tee 1
      local.get 0
      i32.const -4
      i32.add
      i32.load
      local.tee 2
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 3
      block ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load
        local.tee 4
        i32.sub
        local.tee 1
        i32.const 0
        i32.load offset=1057116
        i32.lt_u
        br_if 1 (;@1;)
        local.get 4
        local.get 0
        i32.add
        local.set 0
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 1
                i32.const 0
                i32.load offset=1057120
                i32.eq
                br_if 0 (;@6;)
                local.get 1
                i32.load offset=12
                local.set 2
                block ;; label = @7
                  local.get 4
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 1
                  i32.load offset=8
                  local.tee 5
                  i32.ne
                  br_if 2 (;@5;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=1057100
                  i32.const -2
                  local.get 4
                  i32.const 3
                  i32.shr_u
                  i32.rotl
                  i32.and
                  i32.store offset=1057100
                  br 5 (;@2;)
                end
                local.get 1
                i32.load offset=24
                local.set 6
                block ;; label = @7
                  local.get 2
                  local.get 1
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 1
                  i32.load offset=8
                  local.tee 4
                  local.get 2
                  i32.store offset=12
                  local.get 2
                  local.get 4
                  i32.store offset=8
                  br 4 (;@3;)
                end
                block ;; label = @7
                  block ;; label = @8
                    local.get 1
                    i32.load offset=20
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 1
                    i32.const 20
                    i32.add
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 1
                  i32.load offset=16
                  local.tee 4
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 1
                  i32.const 16
                  i32.add
                  local.set 5
                end
                loop ;; label = @7
                  local.get 5
                  local.set 7
                  local.get 4
                  local.tee 2
                  i32.const 20
                  i32.add
                  local.set 5
                  local.get 2
                  i32.load offset=20
                  local.tee 4
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.set 5
                  local.get 2
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 3 (;@3;)
              end
              local.get 3
              i32.load offset=4
              local.tee 2
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 3 (;@2;)
              local.get 3
              local.get 2
              i32.const -2
              i32.and
              i32.store offset=4
              i32.const 0
              local.get 0
              i32.store offset=1057108
              local.get 3
              local.get 0
              i32.store
              local.get 1
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              return
            end
            local.get 2
            local.get 5
            i32.store offset=8
            local.get 5
            local.get 2
            i32.store offset=12
            br 2 (;@2;)
          end
          i32.const 0
          local.set 2
        end
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        block ;; label = @3
          block ;; label = @4
            local.get 1
            local.get 1
            i32.load offset=28
            local.tee 5
            i32.const 2
            i32.shl
            local.tee 4
            i32.load offset=1057404
            i32.ne
            br_if 0 (;@4;)
            local.get 4
            i32.const 1057404
            i32.add
            local.get 2
            i32.store
            local.get 2
            br_if 1 (;@3;)
            i32.const 0
            i32.const 0
            i32.load offset=1057104
            i32.const -2
            local.get 5
            i32.rotl
            i32.and
            i32.store offset=1057104
            br 2 (;@2;)
          end
          block ;; label = @4
            block ;; label = @5
              local.get 6
              i32.load offset=16
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              local.get 6
              local.get 2
              i32.store offset=16
              br 1 (;@4;)
            end
            local.get 6
            local.get 2
            i32.store offset=20
          end
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 2
        local.get 6
        i32.store offset=24
        block ;; label = @3
          local.get 1
          i32.load offset=16
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 4
          i32.store offset=16
          local.get 4
          local.get 2
          i32.store offset=24
        end
        local.get 1
        i32.load offset=20
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 4
        i32.store offset=20
        local.get 4
        local.get 2
        i32.store offset=24
      end
      local.get 1
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=4
      local.tee 4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 4
                i32.const 2
                i32.and
                br_if 0 (;@6;)
                block ;; label = @7
                  local.get 3
                  i32.const 0
                  i32.load offset=1057124
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 1
                  i32.store offset=1057124
                  i32.const 0
                  i32.const 0
                  i32.load offset=1057112
                  local.get 0
                  i32.add
                  local.tee 0
                  i32.store offset=1057112
                  local.get 1
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  i32.const 0
                  i32.load offset=1057120
                  i32.ne
                  br_if 6 (;@1;)
                  i32.const 0
                  i32.const 0
                  i32.store offset=1057108
                  i32.const 0
                  i32.const 0
                  i32.store offset=1057120
                  return
                end
                block ;; label = @7
                  local.get 3
                  i32.const 0
                  i32.load offset=1057120
                  local.tee 6
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 1
                  i32.store offset=1057120
                  i32.const 0
                  i32.const 0
                  i32.load offset=1057108
                  local.get 0
                  i32.add
                  local.tee 0
                  i32.store offset=1057108
                  local.get 1
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 0
                  i32.add
                  local.get 0
                  i32.store
                  return
                end
                local.get 4
                i32.const -8
                i32.and
                local.get 0
                i32.add
                local.set 0
                local.get 3
                i32.load offset=12
                local.set 2
                block ;; label = @7
                  local.get 4
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  block ;; label = @8
                    local.get 2
                    local.get 3
                    i32.load offset=8
                    local.tee 5
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.const 0
                    i32.load offset=1057100
                    i32.const -2
                    local.get 4
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store offset=1057100
                    br 5 (;@3;)
                  end
                  local.get 2
                  local.get 5
                  i32.store offset=8
                  local.get 5
                  local.get 2
                  i32.store offset=12
                  br 4 (;@3;)
                end
                local.get 3
                i32.load offset=24
                local.set 8
                block ;; label = @7
                  local.get 2
                  local.get 3
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=8
                  local.tee 4
                  local.get 2
                  i32.store offset=12
                  local.get 2
                  local.get 4
                  i32.store offset=8
                  br 3 (;@4;)
                end
                block ;; label = @7
                  block ;; label = @8
                    local.get 3
                    i32.load offset=20
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 20
                    i32.add
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 3
                  i32.load offset=16
                  local.tee 4
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 3
                  i32.const 16
                  i32.add
                  local.set 5
                end
                loop ;; label = @7
                  local.get 5
                  local.set 7
                  local.get 4
                  local.tee 2
                  i32.const 20
                  i32.add
                  local.set 5
                  local.get 2
                  i32.load offset=20
                  local.tee 4
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.set 5
                  local.get 2
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 2 (;@4;)
              end
              local.get 3
              local.get 4
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 1
              local.get 0
              i32.add
              local.get 0
              i32.store
              local.get 1
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              br 3 (;@2;)
            end
            i32.const 0
            local.set 2
          end
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          block ;; label = @4
            block ;; label = @5
              local.get 3
              local.get 3
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              local.tee 4
              i32.load offset=1057404
              i32.ne
              br_if 0 (;@5;)
              local.get 4
              i32.const 1057404
              i32.add
              local.get 2
              i32.store
              local.get 2
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1057104
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=1057104
              br 2 (;@3;)
            end
            block ;; label = @5
              block ;; label = @6
                local.get 8
                i32.load offset=16
                local.get 3
                i32.ne
                br_if 0 (;@6;)
                local.get 8
                local.get 2
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 8
              local.get 2
              i32.store offset=20
            end
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 2
          local.get 8
          i32.store offset=24
          block ;; label = @4
            local.get 3
            i32.load offset=16
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 4
            i32.store offset=16
            local.get 4
            local.get 2
            i32.store offset=24
          end
          local.get 3
          i32.load offset=20
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 4
          i32.store offset=20
          local.get 4
          local.get 2
          i32.store offset=24
        end
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 6
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 0
        i32.store offset=1057108
        return
      end
      block ;; label = @2
        local.get 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 248
        i32.and
        i32.const 1057140
        i32.add
        local.set 2
        block ;; label = @3
          block ;; label = @4
            i32.const 0
            i32.load offset=1057100
            local.tee 4
            i32.const 1
            local.get 0
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 0
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 0
            i32.or
            i32.store offset=1057100
            local.get 2
            local.set 0
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=8
          local.set 0
        end
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 2
        local.get 1
        i32.store offset=8
        local.get 1
        local.get 2
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 2
      block ;; label = @2
        local.get 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 38
        local.get 0
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 2
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 2
        i32.const 1
        i32.shl
        i32.or
        i32.const 62
        i32.xor
        local.set 2
      end
      local.get 1
      local.get 2
      i32.store offset=28
      local.get 1
      i64.const 0
      i64.store offset=16 align=4
      local.get 2
      i32.const 2
      i32.shl
      i32.const 1057404
      i32.add
      local.set 5
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              i32.const 0
              i32.load offset=1057104
              local.tee 4
              i32.const 1
              local.get 2
              i32.shl
              local.tee 3
              i32.and
              br_if 0 (;@5;)
              local.get 5
              local.get 1
              i32.store
              i32.const 0
              local.get 4
              local.get 3
              i32.or
              i32.store offset=1057104
              i32.const 8
              local.set 0
              i32.const 24
              local.set 2
              br 1 (;@4;)
            end
            local.get 0
            i32.const 0
            i32.const 25
            local.get 2
            i32.const 1
            i32.shr_u
            i32.sub
            local.get 2
            i32.const 31
            i32.eq
            select
            i32.shl
            local.set 2
            local.get 5
            i32.load
            local.set 5
            loop ;; label = @5
              local.get 5
              local.tee 4
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 0
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 29
              i32.shr_u
              local.set 5
              local.get 2
              i32.const 1
              i32.shl
              local.set 2
              local.get 4
              local.get 5
              i32.const 4
              i32.and
              i32.add
              local.tee 3
              i32.load offset=16
              local.tee 5
              br_if 0 (;@5;)
            end
            local.get 3
            i32.const 16
            i32.add
            local.get 1
            i32.store
            i32.const 8
            local.set 0
            i32.const 24
            local.set 2
            local.get 4
            local.set 5
          end
          local.get 1
          local.set 4
          local.get 1
          local.set 3
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=8
        local.tee 5
        local.get 1
        i32.store offset=12
        local.get 4
        local.get 1
        i32.store offset=8
        i32.const 0
        local.set 3
        i32.const 24
        local.set 0
        i32.const 8
        local.set 2
      end
      local.get 1
      local.get 2
      i32.add
      local.get 5
      i32.store
      local.get 1
      local.get 4
      i32.store offset=12
      local.get 1
      local.get 0
      i32.add
      local.get 3
      i32.store
      i32.const 0
      i32.const 0
      i32.load offset=1057132
      i32.const -1
      i32.add
      local.tee 1
      i32.const -1
      local.get 1
      select
      i32.store offset=1057132
    end
  )
  (func $calloc (;290;) (type 4) (param i32 i32) (result i32)
    (local i32 i64)
    block ;; label = @1
      block ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      i64.extend_i32_u
      local.get 1
      i64.extend_i32_u
      i64.mul
      local.tee 3
      i32.wrap_i64
      local.set 2
      local.get 1
      local.get 0
      i32.or
      i32.const 65536
      i32.lt_u
      br_if 0 (;@1;)
      i32.const -1
      local.get 2
      local.get 3
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      i32.const 0
      i32.ne
      select
      local.set 2
    end
    block ;; label = @1
      local.get 2
      call $dlmalloc
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -4
      i32.add
      i32.load8_u
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 2
      memory.fill
    end
    local.get 0
  )
  (func $realloc (;291;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      local.get 1
      call $dlmalloc
      return
    end
    block ;; label = @1
      local.get 1
      i32.const -64
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 48
      i32.store offset=1057092
      i32.const 0
      return
    end
    i32.const 16
    local.get 1
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    local.get 1
    i32.const 11
    i32.lt_u
    select
    local.set 2
    local.get 0
    i32.const -4
    i32.add
    local.tee 3
    i32.load
    local.tee 4
    i32.const -8
    i32.and
    local.set 5
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 4
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 2
          i32.const 256
          i32.lt_u
          br_if 1 (;@2;)
          local.get 5
          local.get 2
          i32.le_u
          br_if 1 (;@2;)
          local.get 5
          local.get 2
          i32.sub
          i32.const 0
          i32.load offset=1057580
          i32.const 1
          i32.shl
          i32.le_u
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        local.get 0
        i32.const -8
        i32.add
        local.tee 6
        local.get 5
        i32.add
        local.set 7
        block ;; label = @3
          local.get 5
          local.get 2
          i32.lt_u
          br_if 0 (;@3;)
          local.get 5
          local.get 2
          i32.sub
          local.tee 1
          i32.const 16
          i32.lt_u
          br_if 2 (;@1;)
          local.get 3
          local.get 2
          local.get 4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 6
          local.get 2
          i32.add
          local.tee 2
          local.get 1
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 7
          local.get 7
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 1
          call $dispose_chunk
          local.get 0
          return
        end
        block ;; label = @3
          local.get 7
          i32.const 0
          i32.load offset=1057124
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1057112
          local.get 5
          i32.add
          local.tee 5
          local.get 2
          i32.le_u
          br_if 1 (;@2;)
          local.get 3
          local.get 2
          local.get 4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          i32.const 0
          local.get 6
          local.get 2
          i32.add
          local.tee 1
          i32.store offset=1057124
          i32.const 0
          local.get 5
          local.get 2
          i32.sub
          local.tee 2
          i32.store offset=1057112
          local.get 1
          local.get 2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          return
        end
        block ;; label = @3
          local.get 7
          i32.const 0
          i32.load offset=1057120
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1057108
          local.get 5
          i32.add
          local.tee 5
          local.get 2
          i32.lt_u
          br_if 1 (;@2;)
          block ;; label = @4
            block ;; label = @5
              local.get 5
              local.get 2
              i32.sub
              local.tee 1
              i32.const 16
              i32.lt_u
              br_if 0 (;@5;)
              local.get 3
              local.get 2
              local.get 4
              i32.const 1
              i32.and
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 6
              local.get 2
              i32.add
              local.tee 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 6
              local.get 5
              i32.add
              local.tee 5
              local.get 1
              i32.store
              local.get 5
              local.get 5
              i32.load offset=4
              i32.const -2
              i32.and
              i32.store offset=4
              br 1 (;@4;)
            end
            local.get 3
            local.get 4
            i32.const 1
            i32.and
            local.get 5
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 6
            local.get 5
            i32.add
            local.tee 1
            local.get 1
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            local.set 2
            i32.const 0
            local.set 1
          end
          i32.const 0
          local.get 2
          i32.store offset=1057120
          i32.const 0
          local.get 1
          i32.store offset=1057108
          local.get 0
          return
        end
        local.get 7
        i32.load offset=4
        local.tee 8
        i32.const 2
        i32.and
        br_if 0 (;@2;)
        local.get 8
        i32.const -8
        i32.and
        local.get 5
        i32.add
        local.tee 9
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 9
        local.get 2
        i32.sub
        local.set 10
        local.get 7
        i32.load offset=12
        local.set 1
        block ;; label = @3
          block ;; label = @4
            local.get 8
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            block ;; label = @5
              local.get 1
              local.get 7
              i32.load offset=8
              local.tee 5
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1057100
              i32.const -2
              local.get 8
              i32.const 3
              i32.shr_u
              i32.rotl
              i32.and
              i32.store offset=1057100
              br 2 (;@3;)
            end
            local.get 1
            local.get 5
            i32.store offset=8
            local.get 5
            local.get 1
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 7
          i32.load offset=24
          local.set 11
          block ;; label = @4
            block ;; label = @5
              local.get 1
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              local.get 7
              i32.load offset=8
              local.tee 5
              local.get 1
              i32.store offset=12
              local.get 1
              local.get 5
              i32.store offset=8
              br 1 (;@4;)
            end
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 7
                  i32.load offset=20
                  local.tee 5
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 7
                  i32.const 20
                  i32.add
                  local.set 8
                  br 1 (;@6;)
                end
                local.get 7
                i32.load offset=16
                local.tee 5
                i32.eqz
                br_if 1 (;@5;)
                local.get 7
                i32.const 16
                i32.add
                local.set 8
              end
              loop ;; label = @6
                local.get 8
                local.set 12
                local.get 5
                local.tee 1
                i32.const 20
                i32.add
                local.set 8
                local.get 1
                i32.load offset=20
                local.tee 5
                br_if 0 (;@6;)
                local.get 1
                i32.const 16
                i32.add
                local.set 8
                local.get 1
                i32.load offset=16
                local.tee 5
                br_if 0 (;@6;)
              end
              local.get 12
              i32.const 0
              i32.store
              br 1 (;@4;)
            end
            i32.const 0
            local.set 1
          end
          local.get 11
          i32.eqz
          br_if 0 (;@3;)
          block ;; label = @4
            block ;; label = @5
              local.get 7
              local.get 7
              i32.load offset=28
              local.tee 8
              i32.const 2
              i32.shl
              local.tee 5
              i32.load offset=1057404
              i32.ne
              br_if 0 (;@5;)
              local.get 5
              i32.const 1057404
              i32.add
              local.get 1
              i32.store
              local.get 1
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1057104
              i32.const -2
              local.get 8
              i32.rotl
              i32.and
              i32.store offset=1057104
              br 2 (;@3;)
            end
            block ;; label = @5
              block ;; label = @6
                local.get 11
                i32.load offset=16
                local.get 7
                i32.ne
                br_if 0 (;@6;)
                local.get 11
                local.get 1
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 11
              local.get 1
              i32.store offset=20
            end
            local.get 1
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 1
          local.get 11
          i32.store offset=24
          block ;; label = @4
            local.get 7
            i32.load offset=16
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 5
            i32.store offset=16
            local.get 5
            local.get 1
            i32.store offset=24
          end
          local.get 7
          i32.load offset=20
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 5
          i32.store offset=20
          local.get 5
          local.get 1
          i32.store offset=24
        end
        block ;; label = @3
          local.get 10
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.const 1
          i32.and
          local.get 9
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 6
          local.get 9
          i32.add
          local.tee 1
          local.get 1
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          return
        end
        local.get 3
        local.get 2
        local.get 4
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 6
        local.get 2
        i32.add
        local.tee 1
        local.get 10
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 6
        local.get 9
        i32.add
        local.tee 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 10
        call $dispose_chunk
        local.get 0
        return
      end
      block ;; label = @2
        local.get 1
        call $dlmalloc
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      block ;; label = @2
        i32.const -4
        i32.const -8
        local.get 3
        i32.load
        local.tee 5
        i32.const 3
        i32.and
        select
        local.get 5
        i32.const -8
        i32.and
        i32.add
        local.tee 5
        local.get 1
        local.get 5
        local.get 1
        i32.lt_u
        select
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        local.get 1
        memory.copy
      end
      local.get 0
      call $dlfree
      local.get 2
      local.set 0
    end
    local.get 0
  )
  (func $dispose_chunk (;292;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 4
        local.get 1
        i32.add
        local.set 1
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 0
                local.get 4
                i32.sub
                local.tee 0
                i32.const 0
                i32.load offset=1057120
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                i32.load offset=12
                local.set 3
                block ;; label = @7
                  local.get 4
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 3
                  local.get 0
                  i32.load offset=8
                  local.tee 5
                  i32.ne
                  br_if 2 (;@5;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=1057100
                  i32.const -2
                  local.get 4
                  i32.const 3
                  i32.shr_u
                  i32.rotl
                  i32.and
                  i32.store offset=1057100
                  br 5 (;@2;)
                end
                local.get 0
                i32.load offset=24
                local.set 6
                block ;; label = @7
                  local.get 3
                  local.get 0
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load offset=8
                  local.tee 4
                  local.get 3
                  i32.store offset=12
                  local.get 3
                  local.get 4
                  i32.store offset=8
                  br 4 (;@3;)
                end
                block ;; label = @7
                  block ;; label = @8
                    local.get 0
                    i32.load offset=20
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 20
                    i32.add
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.load offset=16
                  local.tee 4
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 0
                  i32.const 16
                  i32.add
                  local.set 5
                end
                loop ;; label = @7
                  local.get 5
                  local.set 7
                  local.get 4
                  local.tee 3
                  i32.const 20
                  i32.add
                  local.set 5
                  local.get 3
                  i32.load offset=20
                  local.tee 4
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 16
                  i32.add
                  local.set 5
                  local.get 3
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 3 (;@3;)
              end
              local.get 2
              i32.load offset=4
              local.tee 3
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.const -2
              i32.and
              i32.store offset=4
              i32.const 0
              local.get 1
              i32.store offset=1057108
              local.get 2
              local.get 1
              i32.store
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              return
            end
            local.get 3
            local.get 5
            i32.store offset=8
            local.get 5
            local.get 3
            i32.store offset=12
            br 2 (;@2;)
          end
          i32.const 0
          local.set 3
        end
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        block ;; label = @3
          block ;; label = @4
            local.get 0
            local.get 0
            i32.load offset=28
            local.tee 5
            i32.const 2
            i32.shl
            local.tee 4
            i32.load offset=1057404
            i32.ne
            br_if 0 (;@4;)
            local.get 4
            i32.const 1057404
            i32.add
            local.get 3
            i32.store
            local.get 3
            br_if 1 (;@3;)
            i32.const 0
            i32.const 0
            i32.load offset=1057104
            i32.const -2
            local.get 5
            i32.rotl
            i32.and
            i32.store offset=1057104
            br 2 (;@2;)
          end
          block ;; label = @4
            block ;; label = @5
              local.get 6
              i32.load offset=16
              local.get 0
              i32.ne
              br_if 0 (;@5;)
              local.get 6
              local.get 3
              i32.store offset=16
              br 1 (;@4;)
            end
            local.get 6
            local.get 3
            i32.store offset=20
          end
          local.get 3
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 3
        local.get 6
        i32.store offset=24
        block ;; label = @3
          local.get 0
          i32.load offset=16
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.store offset=16
          local.get 4
          local.get 3
          i32.store offset=24
        end
        local.get 0
        i32.load offset=20
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 4
        i32.store offset=20
        local.get 4
        local.get 3
        i32.store offset=24
      end
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 2
                i32.load offset=4
                local.tee 4
                i32.const 2
                i32.and
                br_if 0 (;@6;)
                block ;; label = @7
                  local.get 2
                  i32.const 0
                  i32.load offset=1057124
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 0
                  i32.store offset=1057124
                  i32.const 0
                  i32.const 0
                  i32.load offset=1057112
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.store offset=1057112
                  local.get 0
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  i32.const 0
                  i32.load offset=1057120
                  i32.ne
                  br_if 6 (;@1;)
                  i32.const 0
                  i32.const 0
                  i32.store offset=1057108
                  i32.const 0
                  i32.const 0
                  i32.store offset=1057120
                  return
                end
                block ;; label = @7
                  local.get 2
                  i32.const 0
                  i32.load offset=1057120
                  local.tee 6
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 0
                  i32.store offset=1057120
                  i32.const 0
                  i32.const 0
                  i32.load offset=1057108
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.store offset=1057108
                  local.get 0
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 1
                  i32.add
                  local.get 1
                  i32.store
                  return
                end
                local.get 4
                i32.const -8
                i32.and
                local.get 1
                i32.add
                local.set 1
                local.get 2
                i32.load offset=12
                local.set 3
                block ;; label = @7
                  local.get 4
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  block ;; label = @8
                    local.get 3
                    local.get 2
                    i32.load offset=8
                    local.tee 5
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.const 0
                    i32.load offset=1057100
                    i32.const -2
                    local.get 4
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store offset=1057100
                    br 5 (;@3;)
                  end
                  local.get 3
                  local.get 5
                  i32.store offset=8
                  local.get 5
                  local.get 3
                  i32.store offset=12
                  br 4 (;@3;)
                end
                local.get 2
                i32.load offset=24
                local.set 8
                block ;; label = @7
                  local.get 3
                  local.get 2
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 2
                  i32.load offset=8
                  local.tee 4
                  local.get 3
                  i32.store offset=12
                  local.get 3
                  local.get 4
                  i32.store offset=8
                  br 3 (;@4;)
                end
                block ;; label = @7
                  block ;; label = @8
                    local.get 2
                    i32.load offset=20
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 2
                    i32.const 20
                    i32.add
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 2
                  i32.load offset=16
                  local.tee 4
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.set 5
                end
                loop ;; label = @7
                  local.get 5
                  local.set 7
                  local.get 4
                  local.tee 3
                  i32.const 20
                  i32.add
                  local.set 5
                  local.get 3
                  i32.load offset=20
                  local.tee 4
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 16
                  i32.add
                  local.set 5
                  local.get 3
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 2 (;@4;)
              end
              local.get 2
              local.get 4
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              local.get 1
              i32.store
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              br 3 (;@2;)
            end
            i32.const 0
            local.set 3
          end
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          block ;; label = @4
            block ;; label = @5
              local.get 2
              local.get 2
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              local.tee 4
              i32.load offset=1057404
              i32.ne
              br_if 0 (;@5;)
              local.get 4
              i32.const 1057404
              i32.add
              local.get 3
              i32.store
              local.get 3
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1057104
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=1057104
              br 2 (;@3;)
            end
            block ;; label = @5
              block ;; label = @6
                local.get 8
                i32.load offset=16
                local.get 2
                i32.ne
                br_if 0 (;@6;)
                local.get 8
                local.get 3
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 8
              local.get 3
              i32.store offset=20
            end
            local.get 3
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 3
          local.get 8
          i32.store offset=24
          block ;; label = @4
            local.get 2
            i32.load offset=16
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 4
            i32.store offset=16
            local.get 4
            local.get 3
            i32.store offset=24
          end
          local.get 2
          i32.load offset=20
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.store offset=20
          local.get 4
          local.get 3
          i32.store offset=24
        end
        local.get 0
        local.get 1
        i32.add
        local.get 1
        i32.store
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 6
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 1
        i32.store offset=1057108
        return
      end
      block ;; label = @2
        local.get 1
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 248
        i32.and
        i32.const 1057140
        i32.add
        local.set 3
        block ;; label = @3
          block ;; label = @4
            i32.const 0
            i32.load offset=1057100
            local.tee 4
            i32.const 1
            local.get 1
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 1
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 1
            i32.or
            i32.store offset=1057100
            local.get 3
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          i32.load offset=8
          local.set 1
        end
        local.get 1
        local.get 0
        i32.store offset=12
        local.get 3
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 3
        i32.store offset=12
        local.get 0
        local.get 1
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 3
      block ;; label = @2
        local.get 1
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 38
        local.get 1
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 3
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 3
        i32.const 1
        i32.shl
        i32.or
        i32.const 62
        i32.xor
        local.set 3
      end
      local.get 0
      local.get 3
      i32.store offset=28
      local.get 0
      i64.const 0
      i64.store offset=16 align=4
      local.get 3
      i32.const 2
      i32.shl
      i32.const 1057404
      i32.add
      local.set 4
      block ;; label = @2
        i32.const 0
        i32.load offset=1057104
        local.tee 5
        i32.const 1
        local.get 3
        i32.shl
        local.tee 2
        i32.and
        br_if 0 (;@2;)
        local.get 4
        local.get 0
        i32.store
        i32.const 0
        local.get 5
        local.get 2
        i32.or
        i32.store offset=1057104
        local.get 0
        local.get 4
        i32.store offset=24
        local.get 0
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 0
        i32.store offset=12
        return
      end
      local.get 1
      i32.const 0
      i32.const 25
      local.get 3
      i32.const 1
      i32.shr_u
      i32.sub
      local.get 3
      i32.const 31
      i32.eq
      select
      i32.shl
      local.set 3
      local.get 4
      i32.load
      local.set 5
      block ;; label = @2
        loop ;; label = @3
          local.get 5
          local.tee 4
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.eq
          br_if 1 (;@2;)
          local.get 3
          i32.const 29
          i32.shr_u
          local.set 5
          local.get 3
          i32.const 1
          i32.shl
          local.set 3
          local.get 4
          local.get 5
          i32.const 4
          i32.and
          i32.add
          local.tee 2
          i32.load offset=16
          local.tee 5
          br_if 0 (;@3;)
        end
        local.get 2
        i32.const 16
        i32.add
        local.get 0
        i32.store
        local.get 0
        local.get 4
        i32.store offset=24
        local.get 0
        local.get 0
        i32.store offset=12
        local.get 0
        local.get 0
        i32.store offset=8
        return
      end
      local.get 4
      i32.load offset=8
      local.tee 1
      local.get 0
      i32.store offset=12
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      local.get 4
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=8
    end
  )
  (func $posix_memalign (;293;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.const 16
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          call $dlmalloc
          local.set 1
          br 1 (;@2;)
        end
        i32.const 28
        local.set 3
        local.get 1
        i32.const 3
        i32.and
        br_if 1 (;@1;)
        local.get 1
        i32.const 2
        i32.shr_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.popcnt
        i32.const 1
        i32.gt_u
        br_if 1 (;@1;)
        block ;; label = @3
          local.get 2
          i32.const -64
          local.get 1
          i32.sub
          i32.le_u
          br_if 0 (;@3;)
          i32.const 48
          return
        end
        local.get 1
        i32.const 16
        local.get 1
        i32.const 16
        i32.gt_u
        select
        local.get 2
        call $internal_memalign
        local.set 1
      end
      block ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 48
        return
      end
      local.get 0
      local.get 1
      i32.store
      i32.const 0
      local.set 3
    end
    local.get 3
  )
  (func $internal_memalign (;294;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.const 16
        local.get 0
        i32.const 16
        i32.gt_u
        select
        local.tee 2
        local.get 2
        i32.const -1
        i32.add
        i32.and
        br_if 0 (;@2;)
        local.get 2
        local.set 0
        br 1 (;@1;)
      end
      i32.const 32
      local.set 3
      loop ;; label = @2
        local.get 3
        local.tee 0
        i32.const 1
        i32.shl
        local.set 3
        local.get 0
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    block ;; label = @1
      local.get 1
      i32.const -64
      local.get 0
      i32.sub
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 48
      i32.store offset=1057092
      i32.const 0
      return
    end
    block ;; label = @1
      local.get 0
      i32.const 16
      local.get 1
      i32.const 19
      i32.add
      i32.const -16
      i32.and
      local.get 1
      i32.const 11
      i32.lt_u
      select
      local.tee 1
      i32.add
      i32.const 12
      i32.add
      call $dlmalloc
      local.tee 3
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 3
    i32.const -8
    i32.add
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.const -1
        i32.add
        local.get 3
        i32.and
        br_if 0 (;@2;)
        local.get 2
        local.set 0
        br 1 (;@1;)
      end
      local.get 3
      i32.const -4
      i32.add
      local.tee 4
      i32.load
      local.tee 5
      i32.const -8
      i32.and
      local.get 3
      local.get 0
      i32.add
      i32.const -1
      i32.add
      i32.const 0
      local.get 0
      i32.sub
      i32.and
      i32.const -8
      i32.add
      local.tee 3
      i32.const 0
      local.get 0
      local.get 3
      local.get 2
      i32.sub
      i32.const 15
      i32.gt_u
      select
      i32.add
      local.tee 0
      local.get 2
      i32.sub
      local.tee 3
      i32.sub
      local.set 6
      block ;; label = @2
        local.get 5
        i32.const 3
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.get 6
        i32.store offset=4
        local.get 0
        local.get 2
        i32.load
        local.get 3
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      local.get 6
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 0
      local.get 6
      i32.add
      local.tee 6
      local.get 6
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 4
      local.get 3
      local.get 4
      i32.load
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store
      local.get 2
      local.get 3
      i32.add
      local.tee 6
      local.get 6
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 2
      local.get 3
      call $dispose_chunk
    end
    block ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 3
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const -8
      i32.and
      local.tee 2
      local.get 1
      i32.const 16
      i32.add
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 3
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 0
      local.get 1
      i32.add
      local.tee 3
      local.get 2
      local.get 1
      i32.sub
      local.tee 1
      i32.const 3
      i32.or
      i32.store offset=4
      local.get 0
      local.get 2
      i32.add
      local.tee 2
      local.get 2
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 3
      local.get 1
      call $dispose_chunk
    end
    local.get 0
    i32.const 8
    i32.add
  )
  (func $_RNvNtCs51AVrxNfmOa_5alloc7raw_vec12handle_error (;295;) (type 1) (param i32 i32)
    block ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_RNvNtCs51AVrxNfmOa_5alloc5alloc18handle_alloc_error
      unreachable
    end
    call $_RNvNtCs51AVrxNfmOa_5alloc7raw_vec17capacity_overflow
    unreachable
  )
  (func $_RNvMs4_NtCs51AVrxNfmOa_5alloc7raw_vecNtB5_11RawVecInner11finish_growB7_ (;296;) (type 2) (param i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 3
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 1
        i32.const 4
        local.set 2
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.get 1
              i32.const 1
              local.get 3
              call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc
              local.set 1
              br 1 (;@4;)
            end
            block ;; label = @5
              local.get 3
              br_if 0 (;@5;)
              i32.const 1
              local.set 1
              br 2 (;@3;)
            end
            call $_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2
            local.get 3
            i32.const 1
            call $_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc
            local.set 1
          end
          local.get 1
          br_if 0 (;@3;)
          i32.const 1
          local.set 1
          local.get 0
          i32.const 1
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 0
        local.get 1
        i32.store offset=4
        i32.const 0
        local.set 1
      end
      i32.const 8
      local.set 2
    end
    local.get 0
    local.get 2
    i32.add
    local.get 3
    i32.store
    local.get 0
    local.get 1
    i32.store
  )
  (func $_RNvNtCs51AVrxNfmOa_5alloc5alloc18handle_alloc_error (;297;) (type 1) (param i32 i32)
    local.get 1
    local.get 0
    call $_RNvCs9hJ03s5DiqP_7___rustc26___rust_alloc_error_handler
    unreachable
  )
  (func $_RNvMs_NtNtCs51AVrxNfmOa_5alloc3ffi5c_strNtB4_7CString19__from_vec_unchecked (;298;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.load
          local.tee 3
          local.get 1
          i32.load offset=8
          local.tee 4
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          i32.const 4
          i32.add
          local.get 4
          local.get 1
          i32.load offset=4
          local.get 4
          i32.const 1
          i32.add
          local.tee 3
          call $_RNvMs4_NtCs51AVrxNfmOa_5alloc7raw_vecNtB5_11RawVecInner11finish_growB7_
          local.get 2
          i32.load offset=4
          i32.const 1
          i32.eq
          br_if 1 (;@2;)
          local.get 1
          local.get 2
          i32.load offset=8
          i32.store offset=4
        end
        local.get 1
        i32.load offset=4
        local.tee 5
        local.get 4
        i32.add
        i32.const 0
        i32.store8
        block ;; label = @3
          block ;; label = @4
            local.get 3
            local.get 4
            i32.const 1
            i32.add
            local.tee 1
            i32.gt_u
            br_if 0 (;@4;)
            local.get 5
            local.set 4
            br 1 (;@3;)
          end
          block ;; label = @4
            local.get 1
            br_if 0 (;@4;)
            i32.const 1
            local.set 4
            local.get 5
            local.get 3
            i32.const 1
            call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc
            br 1 (;@3;)
          end
          local.get 5
          local.get 3
          i32.const 1
          local.get 1
          call $_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc
          local.tee 4
          i32.eqz
          br_if 2 (;@1;)
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        local.get 4
        i32.store
        local.get 2
        i32.const 16
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 2
      i32.load offset=8
      local.get 2
      i32.load offset=12
      call $_RNvNtCs51AVrxNfmOa_5alloc7raw_vec12handle_error
      unreachable
    end
    i32.const 1
    local.get 1
    call $_RNvNtCs51AVrxNfmOa_5alloc7raw_vec12handle_error
    unreachable
  )
  (func $_RNvNtCs51AVrxNfmOa_5alloc7raw_vec17capacity_overflow (;299;) (type 9)
    i32.const 1056171
    i32.const 35
    i32.const 1056188
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
    unreachable
  )
  (func $_RNvXs_NvMs_NtNtCs51AVrxNfmOa_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl (;300;) (type 10) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 0
    local.set 4
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 2
          i32.const 1
          i32.add
          local.tee 5
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          call $_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2
          i32.const 1
          local.set 4
          local.get 5
          i32.const 1
          call $_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          block ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            i32.const 0
            local.set 7
            i32.const 0
            local.set 4
            br 3 (;@1;)
          end
          block ;; label = @4
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            local.get 1
            local.get 2
            memory.copy
          end
          block ;; label = @4
            local.get 2
            i32.const 8
            i32.lt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const 8
            i32.add
            i32.const 0
            local.get 1
            local.get 2
            call $_RNvNtNtCs8dNdkSoVEg0_4core5slice6memchr14memchr_aligned
            local.get 3
            i32.load offset=12
            local.set 7
            local.get 3
            i32.load offset=8
            local.set 4
            br 3 (;@1;)
          end
          block ;; label = @4
            local.get 1
            i32.load8_u
            br_if 0 (;@4;)
            i32.const 1
            local.set 4
            i32.const 0
            local.set 7
            br 3 (;@1;)
          end
          i32.const 1
          local.set 4
          local.get 2
          i32.const 1
          i32.eq
          br_if 1 (;@2;)
          block ;; label = @4
            local.get 1
            i32.load8_u offset=1
            br_if 0 (;@4;)
            i32.const 1
            local.set 7
            br 3 (;@1;)
          end
          i32.const 2
          local.set 7
          local.get 2
          i32.const 2
          i32.eq
          br_if 1 (;@2;)
          local.get 1
          i32.load8_u offset=2
          i32.eqz
          br_if 2 (;@1;)
          i32.const 3
          local.set 7
          local.get 2
          i32.const 3
          i32.eq
          br_if 1 (;@2;)
          local.get 1
          i32.load8_u offset=3
          i32.eqz
          br_if 2 (;@1;)
          i32.const 4
          local.set 7
          local.get 2
          i32.const 4
          i32.eq
          br_if 1 (;@2;)
          local.get 1
          i32.load8_u offset=4
          i32.eqz
          br_if 2 (;@1;)
          i32.const 5
          local.set 7
          local.get 2
          i32.const 5
          i32.eq
          br_if 1 (;@2;)
          local.get 1
          i32.load8_u offset=5
          i32.eqz
          br_if 2 (;@1;)
          local.get 2
          local.set 7
          i32.const 0
          local.set 4
          local.get 2
          i32.const 6
          i32.eq
          br_if 2 (;@1;)
          local.get 2
          i32.const 6
          local.get 1
          i32.load8_u offset=6
          local.tee 4
          select
          local.set 7
          local.get 4
          i32.eqz
          local.set 4
          br 2 (;@1;)
        end
        local.get 4
        local.get 5
        call $_RNvNtCs51AVrxNfmOa_5alloc7raw_vec12handle_error
        unreachable
      end
      local.get 2
      local.set 7
      i32.const 0
      local.set 4
    end
    block ;; label = @1
      block ;; label = @2
        local.get 4
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i32.store offset=8
        local.get 0
        local.get 6
        i32.store offset=4
        local.get 0
        local.get 5
        i32.store
        local.get 0
        local.get 7
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 3
      local.get 2
      i32.store offset=28
      local.get 3
      local.get 6
      i32.store offset=24
      local.get 3
      local.get 5
      i32.store offset=20
      local.get 3
      local.get 3
      i32.const 20
      i32.add
      call $_RNvMs_NtNtCs51AVrxNfmOa_5alloc3ffi5c_strNtB4_7CString19__from_vec_unchecked
      local.get 0
      local.get 3
      i64.load
      i64.store offset=4 align=4
      local.get 0
      i32.const -1
      i32.store
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_RNvNtCs8dNdkSoVEg0_4core9panicking19assert_failed_inner (;301;) (type 13) (param i32 i32 i32 i32 i32 i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 8
    global.set $__stack_pointer
    local.get 8
    local.get 2
    i32.store offset=4
    local.get 8
    local.get 1
    i32.store
    local.get 8
    local.get 4
    i32.store offset=12
    local.get 8
    local.get 3
    i32.store offset=8
    local.get 8
    local.get 0
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    local.tee 2
    i32.load offset=1056992
    i32.store offset=20
    local.get 8
    local.get 2
    i32.load offset=1056980
    i32.store offset=16
    block ;; label = @1
      local.get 5
      i32.eqz
      br_if 0 (;@1;)
      local.get 8
      local.get 6
      i32.store offset=28
      local.get 8
      local.get 5
      i32.store offset=24
      local.get 8
      i32.const 51
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.tee 9
      local.get 8
      i32.const 8
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=56
      local.get 8
      local.get 9
      local.get 8
      i64.extend_i32_u
      i64.or
      i64.store offset=48
      local.get 8
      i32.const 52
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 8
      i32.const 24
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=40
      local.get 8
      i32.const 53
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 8
      i32.const 16
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=32
      i32.const 1056398
      local.get 8
      i32.const 32
      i32.add
      local.get 7
      call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
      unreachable
    end
    local.get 8
    i32.const 51
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 9
    local.get 8
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=48
    local.get 8
    local.get 9
    local.get 8
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 8
    i32.const 53
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 8
    i32.const 16
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    i32.const 1056343
    local.get 8
    i32.const 32
    i32.add
    local.get 7
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
    unreachable
  )
  (func $_RINvNtCs8dNdkSoVEg0_4core9panicking13assert_failedjjEB4_ (;302;) (type 5) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    local.get 2
    i32.store offset=12
    local.get 6
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 6
    i32.const 8
    i32.add
    i32.const 1056220
    local.get 6
    i32.const 12
    i32.add
    i32.const 1056220
    local.get 3
    local.get 4
    local.get 5
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking19assert_failed_inner
    unreachable
  )
  (func $_RNvNtCs8dNdkSoVEg0_4core9panicking5panic (;303;) (type 10) (param i32 i32 i32)
    local.get 0
    local.get 1
    i32.const 1
    i32.shl
    i32.const 1
    i32.or
    local.get 2
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
    unreachable
  )
  (func $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt (;304;) (type 10) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=16
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.const 1
    i32.store16 offset=28
    local.get 3
    local.get 2
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 12
    i32.add
    i32.store offset=20
    local.get 3
    i32.const 20
    i32.add
    call $_RNvCs9hJ03s5DiqP_7___rustc17rust_begin_unwind
    unreachable
  )
  (func $_RNvXsd_NtNtNtCs8dNdkSoVEg0_4core3fmt3num3impyNtB9_7Display3fmt (;305;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i64 i64 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 20
    local.set 3
    local.get 0
    i64.load
    local.tee 4
    local.set 5
    block ;; label = @1
      local.get 4
      i64.const 1000
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 20
      local.set 3
      local.get 4
      local.set 5
      loop ;; label = @2
        local.get 2
        i32.const 12
        i32.add
        local.get 3
        i32.add
        local.tee 0
        i32.const -4
        i32.add
        local.get 5
        local.tee 6
        local.get 6
        i64.const 10000
        i64.div_u
        local.tee 5
        i64.const 10000
        i64.mul
        i64.sub
        i32.wrap_i64
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.load16_u offset=1056573 align=1
        i32.store16 align=1
        local.get 0
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.load16_u offset=1056573 align=1
        i32.store16 align=1
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 6
        i64.const 9999999
        i64.gt_u
        br_if 0 (;@2;)
      end
    end
    block ;; label = @1
      local.get 5
      i64.const 9
      i64.le_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 12
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 5
      i32.wrap_i64
      local.tee 0
      local.get 0
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 0
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.load16_u offset=1056573 align=1
      i32.store16 align=1
      local.get 0
      i64.extend_i32_u
      local.set 5
    end
    block ;; label = @1
      block ;; label = @2
        local.get 4
        i64.eqz
        br_if 0 (;@2;)
        local.get 5
        i64.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.const 12
      i32.add
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.add
      local.get 5
      i32.wrap_i64
      i32.const 1
      i32.shl
      i32.load8_u offset=1056574
      i32.store8
    end
    local.get 1
    i32.const 1
    i32.const 1
    i32.const 0
    local.get 2
    i32.const 12
    i32.add
    local.get 3
    i32.add
    i32.const 20
    local.get 3
    i32.sub
    call $_RNvMsa_NtCs8dNdkSoVEg0_4core3fmtNtB5_9Formatter12pad_integral
    local.set 3
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 3
  )
  (func $_RNvXs1i_NtCs8dNdkSoVEg0_4core3fmtReNtB6_7Display3fmtB8_ (;306;) (type 4) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_RNvMsa_NtCs8dNdkSoVEg0_4core3fmtNtB5_9Formatter3pad
  )
  (func $_RNvNtCs8dNdkSoVEg0_4core3fmt5write (;307;) (type 8) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 2
          i32.load8_u
          local.tee 5
          br_if 1 (;@2;)
          i32.const 0
          local.set 5
          br 2 (;@1;)
        end
        local.get 0
        local.get 2
        local.get 3
        i32.const 1
        i32.shr_u
        local.get 1
        i32.load offset=12
        call_indirect (type 3)
        local.set 5
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=12
      local.set 6
      i32.const 0
      local.set 7
      loop ;; label = @2
        local.get 2
        i32.const 1
        i32.add
        local.set 8
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 5
                  i32.extend8_s
                  i32.const -1
                  i32.gt_s
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 255
                  i32.and
                  local.tee 9
                  i32.const 128
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 9
                  i32.const 192
                  i32.ne
                  br_if 3 (;@4;)
                  local.get 4
                  local.get 1
                  i32.store offset=4
                  local.get 4
                  local.get 0
                  i32.store
                  local.get 4
                  i64.const 1610612768
                  i64.store offset=8 align=4
                  local.get 3
                  local.get 7
                  i32.const 3
                  i32.shl
                  i32.add
                  local.tee 5
                  i32.load
                  local.get 4
                  local.get 5
                  i32.load offset=4
                  call_indirect (type 4)
                  i32.eqz
                  br_if 2 (;@5;)
                  i32.const 1
                  local.set 5
                  br 6 (;@1;)
                end
                block ;; label = @7
                  local.get 0
                  local.get 8
                  local.get 5
                  i32.const 255
                  i32.and
                  local.tee 5
                  local.get 6
                  call_indirect (type 3)
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 5
                  i32.add
                  local.set 2
                  br 4 (;@3;)
                end
                i32.const 1
                local.set 5
                br 5 (;@1;)
              end
              block ;; label = @6
                local.get 0
                local.get 2
                i32.const 3
                i32.add
                local.tee 5
                local.get 2
                i32.load16_u offset=1 align=1
                local.tee 2
                local.get 6
                call_indirect (type 3)
                br_if 0 (;@6;)
                local.get 5
                local.get 2
                i32.add
                local.set 2
                br 3 (;@3;)
              end
              i32.const 1
              local.set 5
              br 4 (;@1;)
            end
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            local.get 8
            local.set 2
            br 1 (;@3;)
          end
          i32.const 1610612768
          local.set 10
          block ;; label = @4
            local.get 5
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 5
            i32.add
            local.set 8
            local.get 2
            i32.load offset=1 align=1
            local.set 10
          end
          i32.const 0
          local.set 9
          block ;; label = @4
            block ;; label = @5
              local.get 5
              i32.const 2
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.set 11
              local.get 8
              local.set 2
              br 1 (;@4;)
            end
            local.get 8
            i32.const 2
            i32.add
            local.set 2
            local.get 8
            i32.load16_u align=1
            local.set 11
          end
          block ;; label = @4
            block ;; label = @5
              local.get 5
              i32.const 4
              i32.and
              br_if 0 (;@5;)
              local.get 2
              local.set 8
              br 1 (;@4;)
            end
            local.get 2
            i32.const 2
            i32.add
            local.set 8
            local.get 2
            i32.load16_u align=1
            local.set 9
          end
          block ;; label = @4
            block ;; label = @5
              local.get 5
              i32.const 8
              i32.and
              br_if 0 (;@5;)
              local.get 8
              local.set 2
              br 1 (;@4;)
            end
            local.get 8
            i32.const 2
            i32.add
            local.set 2
            local.get 8
            i32.load16_u align=1
            local.set 7
          end
          block ;; label = @4
            local.get 5
            i32.const 16
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 11
            i32.const 65535
            i32.and
            i32.const 3
            i32.shl
            i32.add
            i32.load16_u offset=4
            local.set 11
          end
          block ;; label = @4
            local.get 5
            i32.const 32
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 9
            i32.const 65535
            i32.and
            i32.const 3
            i32.shl
            i32.add
            i32.load16_u offset=4
            local.set 9
          end
          local.get 4
          local.get 9
          i32.store16 offset=14
          local.get 4
          local.get 11
          i32.store16 offset=12
          local.get 4
          local.get 10
          i32.store offset=8
          local.get 4
          local.get 1
          i32.store offset=4
          local.get 4
          local.get 0
          i32.store
          block ;; label = @4
            local.get 3
            local.get 7
            i32.const 3
            i32.shl
            i32.add
            local.tee 5
            i32.load
            local.get 4
            local.get 5
            i32.load offset=4
            call_indirect (type 4)
            i32.eqz
            br_if 0 (;@4;)
            i32.const 1
            local.set 5
            br 3 (;@1;)
          end
          local.get 7
          i32.const 1
          i32.add
          local.set 7
        end
        local.get 2
        i32.load8_u
        local.tee 5
        br_if 0 (;@2;)
      end
      i32.const 0
      local.set 5
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5
  )
  (func $_RNvNtNtCs8dNdkSoVEg0_4core5slice5index16slice_index_fail (;308;) (type 2) (param i32 i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          local.get 2
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          local.get 2
          i32.gt_u
          br_if 1 (;@2;)
          i32.const 8
          i64.extend_i32_u
          i64.const 32
          i64.shl
          local.set 5
          local.get 0
          local.get 1
          i32.le_u
          br_if 2 (;@1;)
          local.get 4
          local.get 0
          i32.store offset=8
          local.get 4
          local.get 1
          i32.store offset=12
          local.get 4
          local.get 5
          local.get 4
          i32.const 12
          i32.add
          i64.extend_i32_u
          i64.or
          i64.store offset=24
          local.get 4
          local.get 5
          local.get 4
          i32.const 8
          i32.add
          i64.extend_i32_u
          i64.or
          i64.store offset=16
          i32.const 1056828
          local.get 4
          i32.const 16
          i32.add
          local.get 3
          call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
          unreachable
        end
        local.get 4
        local.get 0
        i32.store offset=8
        local.get 4
        local.get 2
        i32.store offset=12
        local.get 4
        i32.const 8
        i64.extend_i32_u
        i64.const 32
        i64.shl
        local.tee 5
        local.get 4
        i32.const 12
        i32.add
        i64.extend_i32_u
        i64.or
        i64.store offset=24
        local.get 4
        local.get 5
        local.get 4
        i32.const 8
        i32.add
        i64.extend_i32_u
        i64.or
        i64.store offset=16
        i32.const 1056868
        local.get 4
        i32.const 16
        i32.add
        local.get 3
        call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
        unreachable
      end
      local.get 4
      local.get 1
      i32.store offset=8
      local.get 4
      local.get 2
      i32.store offset=12
      local.get 4
      i32.const 8
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.tee 5
      local.get 4
      i32.const 12
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=24
      local.get 4
      local.get 5
      local.get 4
      i32.const 8
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=16
      i32.const 1056773
      local.get 4
      i32.const 16
      i32.add
      local.get 3
      call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
      unreachable
    end
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    local.get 2
    i32.store offset=12
    local.get 4
    local.get 5
    local.get 4
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    local.get 4
    local.get 5
    local.get 4
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=16
    i32.const 1056773
    local.get 4
    i32.const 16
    i32.add
    local.get 3
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
    unreachable
  )
  (func $_RNvMs3_NtNtCs8dNdkSoVEg0_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul (;309;) (type 10) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 2
                  i32.const 7
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 2
                  i32.eqz
                  br_if 5 (;@2;)
                  local.get 1
                  i32.load8_u
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 3
                  br 6 (;@1;)
                end
                local.get 1
                i32.const 3
                i32.add
                i32.const -4
                i32.and
                local.tee 4
                local.get 1
                i32.eq
                br_if 1 (;@5;)
                local.get 4
                local.get 1
                i32.sub
                local.set 4
                i32.const 0
                local.set 3
                loop ;; label = @7
                  local.get 1
                  local.get 3
                  i32.add
                  i32.load8_u
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  local.get 3
                  i32.const 1
                  i32.add
                  local.tee 3
                  i32.ne
                  br_if 0 (;@7;)
                end
                local.get 4
                local.get 2
                i32.const -8
                i32.add
                local.tee 5
                i32.gt_u
                br_if 3 (;@3;)
                br 2 (;@4;)
              end
              i32.const 1
              local.set 3
              local.get 2
              i32.const 1
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=1
              i32.eqz
              br_if 4 (;@1;)
              i32.const 2
              local.set 3
              local.get 2
              i32.const 2
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=2
              i32.eqz
              br_if 4 (;@1;)
              i32.const 3
              local.set 3
              local.get 2
              i32.const 3
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=3
              i32.eqz
              br_if 4 (;@1;)
              i32.const 4
              local.set 3
              local.get 2
              i32.const 4
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=4
              i32.eqz
              br_if 4 (;@1;)
              i32.const 5
              local.set 3
              local.get 2
              i32.const 5
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=5
              i32.eqz
              br_if 4 (;@1;)
              i32.const 6
              local.set 3
              local.get 2
              i32.const 6
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=6
              br_if 3 (;@2;)
              br 4 (;@1;)
            end
            local.get 2
            i32.const -8
            i32.add
            local.set 5
            i32.const 0
            local.set 4
          end
          loop ;; label = @4
            i32.const 16843008
            local.get 1
            local.get 4
            i32.add
            local.tee 3
            i32.load
            local.tee 6
            i32.sub
            local.get 6
            i32.or
            i32.const 16843008
            local.get 3
            i32.const 4
            i32.add
            i32.load
            local.tee 3
            i32.sub
            local.get 3
            i32.or
            i32.and
            i32.const -2139062144
            i32.and
            i32.const -2139062144
            i32.ne
            br_if 1 (;@3;)
            local.get 4
            i32.const 8
            i32.add
            local.tee 4
            local.get 5
            i32.le_u
            br_if 0 (;@4;)
          end
        end
        local.get 2
        local.get 4
        i32.eq
        br_if 0 (;@2;)
        loop ;; label = @3
          block ;; label = @4
            local.get 1
            local.get 4
            i32.add
            i32.load8_u
            br_if 0 (;@4;)
            local.get 4
            local.set 3
            br 3 (;@1;)
          end
          local.get 2
          local.get 4
          i32.const 1
          i32.add
          local.tee 4
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 0
      i32.const 1
      i32.store offset=4
      local.get 0
      i32.const 1
      i32.store
      return
    end
    block ;; label = @1
      local.get 3
      i32.const 1
      i32.add
      local.get 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=4
      local.get 0
      i32.const 1
      i32.store
      return
    end
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store
  )
  (func $_RNvMsa_NtCs8dNdkSoVEg0_4core3fmtNtB5_9Formatter12pad_integral (;310;) (type 12) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    i32.const 43
    i32.const -1
    local.get 0
    i32.load offset=8
    local.tee 6
    i32.const 2097152
    i32.and
    local.tee 7
    select
    local.set 8
    local.get 7
    i32.const 21
    i32.shr_u
    i32.const 1
    local.get 1
    select
    local.get 5
    i32.add
    local.set 9
    block ;; label = @1
      block ;; label = @2
        local.get 6
        i32.const 8388608
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      block ;; label = @2
        block ;; label = @3
          local.get 3
          i32.const 16
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          call $_RNvNtNtCs8dNdkSoVEg0_4core3str5count14do_count_chars
          local.set 7
          br 1 (;@2;)
        end
        block ;; label = @3
          local.get 3
          br_if 0 (;@3;)
          i32.const 0
          local.set 7
          br 1 (;@2;)
        end
        local.get 3
        i32.const 3
        i32.and
        local.set 10
        i32.const 0
        local.set 11
        i32.const 0
        local.set 7
        block ;; label = @3
          local.get 3
          i32.const 4
          i32.lt_u
          br_if 0 (;@3;)
          local.get 3
          i32.const 12
          i32.and
          local.set 12
          i32.const 0
          local.set 11
          i32.const 0
          local.set 7
          loop ;; label = @4
            local.get 7
            local.get 2
            local.get 11
            i32.add
            local.tee 13
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 13
            i32.const 1
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 13
            i32.const 2
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 13
            i32.const 3
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 7
            local.get 12
            local.get 11
            i32.const 4
            i32.add
            local.tee 11
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 10
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 2
        local.get 11
        i32.add
        local.set 13
        loop ;; label = @3
          local.get 7
          local.get 13
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 7
          local.get 13
          i32.const 1
          i32.add
          local.set 13
          local.get 10
          i32.const -1
          i32.add
          local.tee 10
          br_if 0 (;@3;)
        end
      end
      local.get 7
      local.get 9
      i32.add
      local.set 9
    end
    local.get 8
    i32.const 45
    local.get 1
    select
    local.set 12
    block ;; label = @1
      block ;; label = @2
        local.get 9
        local.get 0
        i32.load16_u offset=12
        local.tee 1
        i32.ge_u
        br_if 0 (;@2;)
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 6
              i32.const 16777216
              i32.and
              br_if 0 (;@5;)
              local.get 1
              local.get 9
              i32.sub
              local.set 8
              i32.const 0
              local.set 7
              i32.const 0
              local.set 1
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    local.get 6
                    i32.const 29
                    i32.shr_u
                    i32.const 3
                    i32.and
                    br_table 2 (;@6;) 0 (;@8;) 1 (;@7;) 0 (;@8;) 2 (;@6;)
                  end
                  local.get 8
                  local.set 1
                  br 1 (;@6;)
                end
                local.get 8
                i32.const 65534
                i32.and
                i32.const 1
                i32.shr_u
                local.set 1
              end
              local.get 6
              i32.const 2097151
              i32.and
              local.set 9
              local.get 0
              i32.load offset=4
              local.set 11
              local.get 0
              i32.load
              local.set 10
              loop ;; label = @6
                local.get 7
                i32.const 65535
                i32.and
                local.get 1
                i32.const 65535
                i32.and
                i32.ge_u
                br_if 2 (;@4;)
                i32.const 1
                local.set 13
                local.get 7
                i32.const 1
                i32.add
                local.set 7
                local.get 10
                local.get 9
                local.get 11
                i32.load offset=16
                call_indirect (type 4)
                i32.eqz
                br_if 0 (;@6;)
                br 5 (;@1;)
              end
            end
            local.get 0
            local.get 0
            i64.load offset=8 align=4
            local.tee 14
            i32.wrap_i64
            i32.const -1612709888
            i32.and
            i32.const 536870960
            i32.or
            i32.store offset=8
            i32.const 1
            local.set 13
            local.get 0
            i32.load
            local.tee 10
            local.get 0
            i32.load offset=4
            local.tee 11
            local.get 12
            local.get 2
            local.get 3
            call $_RNvNvMsa_NtCs8dNdkSoVEg0_4core3fmtNtB7_9Formatter12pad_integral12write_prefix
            br_if 3 (;@1;)
            i32.const 0
            local.set 7
            local.get 1
            local.get 9
            i32.sub
            i32.const 65535
            i32.and
            local.set 2
            loop ;; label = @5
              local.get 7
              i32.const 65535
              i32.and
              local.get 2
              i32.ge_u
              br_if 2 (;@3;)
              i32.const 1
              local.set 13
              local.get 7
              i32.const 1
              i32.add
              local.set 7
              local.get 10
              i32.const 48
              local.get 11
              i32.load offset=16
              call_indirect (type 4)
              i32.eqz
              br_if 0 (;@5;)
              br 4 (;@1;)
            end
          end
          i32.const 1
          local.set 13
          local.get 10
          local.get 11
          local.get 12
          local.get 2
          local.get 3
          call $_RNvNvMsa_NtCs8dNdkSoVEg0_4core3fmtNtB7_9Formatter12pad_integral12write_prefix
          br_if 2 (;@1;)
          local.get 10
          local.get 4
          local.get 5
          local.get 11
          i32.load offset=12
          call_indirect (type 3)
          br_if 2 (;@1;)
          i32.const 0
          local.set 7
          local.get 8
          local.get 1
          i32.sub
          i32.const 65535
          i32.and
          local.set 0
          loop ;; label = @4
            local.get 7
            i32.const 65535
            i32.and
            local.tee 2
            local.get 0
            i32.lt_u
            local.set 13
            local.get 2
            local.get 0
            i32.ge_u
            br_if 3 (;@1;)
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            local.get 10
            local.get 9
            local.get 11
            i32.load offset=16
            call_indirect (type 4)
            i32.eqz
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        i32.const 1
        local.set 13
        local.get 10
        local.get 4
        local.get 5
        local.get 11
        i32.load offset=12
        call_indirect (type 3)
        br_if 1 (;@1;)
        local.get 0
        local.get 14
        i64.store offset=8 align=4
        i32.const 0
        return
      end
      i32.const 1
      local.set 13
      local.get 0
      i32.load
      local.tee 7
      local.get 0
      i32.load offset=4
      local.tee 10
      local.get 12
      local.get 2
      local.get 3
      call $_RNvNvMsa_NtCs8dNdkSoVEg0_4core3fmtNtB7_9Formatter12pad_integral12write_prefix
      br_if 0 (;@1;)
      local.get 7
      local.get 4
      local.get 5
      local.get 10
      i32.load offset=12
      call_indirect (type 3)
      local.set 13
    end
    local.get 13
  )
  (func $_RNvNtNtCs8dNdkSoVEg0_4core3str5count14do_count_chars (;311;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 1
        local.get 0
        i32.const 3
        i32.add
        i32.const -4
        i32.and
        local.tee 2
        local.get 0
        i32.sub
        local.tee 3
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        i32.sub
        local.tee 4
        i32.const 2
        i32.shr_u
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.const 3
        i32.and
        local.set 6
        i32.const 0
        local.set 7
        i32.const 0
        local.set 1
        block ;; label = @3
          local.get 2
          local.get 0
          i32.eq
          br_if 0 (;@3;)
          i32.const 0
          local.set 8
          i32.const 0
          local.set 1
          block ;; label = @4
            local.get 0
            local.get 2
            i32.sub
            local.tee 9
            i32.const -4
            i32.gt_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 8
            i32.const 0
            local.set 1
            loop ;; label = @5
              local.get 1
              local.get 0
              local.get 8
              i32.add
              local.tee 2
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.const 1
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.const 2
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.const 3
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 1
              local.get 8
              i32.const 4
              i32.add
              local.tee 8
              br_if 0 (;@5;)
            end
          end
          local.get 0
          local.get 8
          i32.add
          local.set 2
          loop ;; label = @4
            local.get 1
            local.get 2
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 1
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            local.get 9
            i32.const 1
            i32.add
            local.tee 9
            br_if 0 (;@4;)
          end
        end
        local.get 0
        local.get 3
        i32.add
        local.set 9
        block ;; label = @3
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 9
          local.get 4
          i32.const 2147483644
          i32.and
          i32.add
          local.tee 2
          i32.load8_s
          i32.const -65
          i32.gt_s
          local.set 7
          local.get 6
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          local.get 7
          local.get 2
          i32.load8_s offset=1
          i32.const -65
          i32.gt_s
          i32.add
          local.set 7
          local.get 6
          i32.const 2
          i32.eq
          br_if 0 (;@3;)
          local.get 7
          local.get 2
          i32.load8_s offset=2
          i32.const -65
          i32.gt_s
          i32.add
          local.set 7
        end
        local.get 7
        local.get 1
        i32.add
        local.set 8
        loop ;; label = @3
          local.get 9
          local.set 3
          local.get 5
          i32.eqz
          br_if 2 (;@1;)
          local.get 5
          i32.const 192
          local.get 5
          i32.const 192
          i32.lt_u
          select
          local.tee 7
          i32.const 3
          i32.and
          local.set 6
          block ;; label = @4
            block ;; label = @5
              local.get 7
              i32.const 2
              i32.shl
              local.tee 4
              i32.const 1008
              i32.and
              local.tee 1
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              br 1 (;@4;)
            end
            local.get 3
            local.get 1
            i32.add
            local.set 0
            i32.const 0
            local.set 2
            local.get 3
            local.set 1
            loop ;; label = @5
              local.get 1
              i32.const 12
              i32.add
              i32.load
              local.tee 9
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 9
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 1
              i32.const 8
              i32.add
              i32.load
              local.tee 9
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 9
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.tee 9
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 9
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 1
              i32.load
              local.tee 9
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 9
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 2
              i32.add
              i32.add
              i32.add
              i32.add
              local.set 2
              local.get 1
              i32.const 16
              i32.add
              local.tee 1
              local.get 0
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 5
          local.get 7
          i32.sub
          local.set 5
          local.get 3
          local.get 4
          i32.add
          local.set 9
          local.get 2
          i32.const 8
          i32.shr_u
          i32.const 16711935
          i32.and
          local.get 2
          i32.const 16711935
          i32.and
          i32.add
          i32.const 65537
          i32.mul
          i32.const 16
          i32.shr_u
          local.get 8
          i32.add
          local.set 8
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
        end
        local.get 3
        local.get 7
        i32.const 252
        i32.and
        i32.const 2
        i32.shl
        i32.add
        local.tee 2
        i32.load
        local.tee 1
        i32.const -1
        i32.xor
        i32.const 7
        i32.shr_u
        local.get 1
        i32.const 6
        i32.shr_u
        i32.or
        i32.const 16843009
        i32.and
        local.set 1
        block ;; label = @3
          local.get 6
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=4
          local.tee 9
          i32.const -1
          i32.xor
          i32.const 7
          i32.shr_u
          local.get 9
          i32.const 6
          i32.shr_u
          i32.or
          i32.const 16843009
          i32.and
          local.get 1
          i32.add
          local.set 1
          local.get 6
          i32.const 2
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=8
          local.tee 2
          i32.const -1
          i32.xor
          i32.const 7
          i32.shr_u
          local.get 2
          i32.const 6
          i32.shr_u
          i32.or
          i32.const 16843009
          i32.and
          local.get 1
          i32.add
          local.set 1
        end
        local.get 1
        i32.const 8
        i32.shr_u
        i32.const 459007
        i32.and
        local.get 1
        i32.const 16711935
        i32.and
        i32.add
        i32.const 65537
        i32.mul
        i32.const 16
        i32.shr_u
        local.get 8
        i32.add
        local.set 8
        br 1 (;@1;)
      end
      block ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 1
      i32.const 3
      i32.and
      local.set 2
      i32.const 0
      local.set 9
      i32.const 0
      local.set 8
      block ;; label = @2
        local.get 1
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const -4
        i32.and
        local.set 5
        i32.const 0
        local.set 8
        i32.const 0
        local.set 9
        loop ;; label = @3
          local.get 8
          local.get 0
          local.get 9
          i32.add
          local.tee 1
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.get 1
          i32.const 1
          i32.add
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.get 1
          i32.const 2
          i32.add
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.get 1
          i32.const 3
          i32.add
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 8
          local.get 5
          local.get 9
          i32.const 4
          i32.add
          local.tee 9
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 9
      i32.add
      local.set 1
      loop ;; label = @2
        local.get 8
        local.get 1
        i32.load8_s
        i32.const -65
        i32.gt_s
        i32.add
        local.set 8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 8
  )
  (func $_RNvNvMsa_NtCs8dNdkSoVEg0_4core3fmtNtB7_9Formatter12pad_integral12write_prefix (;312;) (type 14) (param i32 i32 i32 i32 i32) (result i32)
    block ;; label = @1
      local.get 2
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      i32.load offset=16
      call_indirect (type 4)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    block ;; label = @1
      local.get 3
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 0
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=12
    call_indirect (type 3)
  )
  (func $_RNvMsa_NtCs8dNdkSoVEg0_4core3fmtNtB5_9Formatter3pad (;313;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.const 402653184
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 3
                  i32.const 268435456
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load16_u offset=14
                  local.tee 4
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 2
                  br 2 (;@5;)
                end
                block ;; label = @7
                  local.get 2
                  i32.const 16
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 1
                  local.get 2
                  call $_RNvNtNtCs8dNdkSoVEg0_4core3str5count14do_count_chars
                  local.set 5
                  br 4 (;@3;)
                end
                block ;; label = @7
                  local.get 2
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 5
                  br 4 (;@3;)
                end
                local.get 2
                i32.const 3
                i32.and
                local.set 6
                i32.const 0
                local.set 7
                i32.const 0
                local.set 5
                block ;; label = @7
                  local.get 2
                  i32.const 4
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 12
                  i32.and
                  local.set 4
                  i32.const 0
                  local.set 5
                  i32.const 0
                  local.set 7
                  loop ;; label = @8
                    local.get 5
                    local.get 1
                    local.get 7
                    i32.add
                    local.tee 8
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.get 8
                    i32.const 1
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.get 8
                    i32.const 2
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.get 8
                    i32.const 3
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.set 5
                    local.get 4
                    local.get 7
                    i32.const 4
                    i32.add
                    local.tee 7
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 6
                  i32.eqz
                  br_if 4 (;@3;)
                end
                local.get 1
                local.get 7
                i32.add
                local.set 8
                loop ;; label = @7
                  local.get 5
                  local.get 8
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.set 5
                  local.get 8
                  i32.const 1
                  i32.add
                  local.set 8
                  local.get 6
                  i32.const -1
                  i32.add
                  local.tee 6
                  br_if 0 (;@7;)
                  br 4 (;@3;)
                end
              end
              local.get 1
              local.get 2
              i32.add
              local.set 7
              i32.const 0
              local.set 2
              local.get 1
              local.set 8
              local.get 4
              local.set 6
              loop ;; label = @6
                local.get 8
                local.tee 5
                local.get 7
                i32.eq
                br_if 2 (;@4;)
                block ;; label = @7
                  block ;; label = @8
                    local.get 5
                    i32.load8_s
                    local.tee 8
                    i32.const -1
                    i32.le_s
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 1
                    i32.add
                    local.set 8
                    br 1 (;@7;)
                  end
                  block ;; label = @8
                    local.get 8
                    i32.const -32
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 2
                    i32.add
                    local.set 8
                    br 1 (;@7;)
                  end
                  local.get 5
                  i32.const 4
                  i32.const 3
                  local.get 8
                  i32.const -17
                  i32.gt_u
                  select
                  i32.add
                  local.set 8
                end
                local.get 8
                local.get 5
                i32.sub
                local.get 2
                i32.add
                local.set 2
                local.get 6
                i32.const -1
                i32.add
                local.tee 6
                br_if 0 (;@6;)
              end
            end
            i32.const 0
            local.set 6
          end
          local.get 4
          local.get 6
          i32.sub
          local.set 5
        end
        local.get 5
        local.get 0
        i32.load16_u offset=12
        local.tee 8
        i32.ge_u
        br_if 0 (;@2;)
        local.get 8
        local.get 5
        i32.sub
        local.set 9
        i32.const 0
        local.set 5
        i32.const 0
        local.set 4
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 3
              i32.const 29
              i32.shr_u
              i32.const 3
              i32.and
              br_table 2 (;@3;) 0 (;@5;) 1 (;@4;) 2 (;@3;) 2 (;@3;)
            end
            local.get 9
            local.set 4
            br 1 (;@3;)
          end
          local.get 9
          i32.const 65534
          i32.and
          i32.const 1
          i32.shr_u
          local.set 4
        end
        local.get 3
        i32.const 2097151
        i32.and
        local.set 7
        local.get 0
        i32.load offset=4
        local.set 6
        local.get 0
        i32.load
        local.set 0
        block ;; label = @3
          loop ;; label = @4
            local.get 5
            i32.const 65535
            i32.and
            local.get 4
            i32.const 65535
            i32.and
            i32.ge_u
            br_if 1 (;@3;)
            i32.const 1
            local.set 8
            local.get 5
            i32.const 1
            i32.add
            local.set 5
            local.get 0
            local.get 7
            local.get 6
            i32.load offset=16
            call_indirect (type 4)
            br_if 3 (;@1;)
            br 0 (;@4;)
          end
        end
        i32.const 1
        local.set 8
        local.get 0
        local.get 1
        local.get 2
        local.get 6
        i32.load offset=12
        call_indirect (type 3)
        br_if 1 (;@1;)
        i32.const 0
        local.set 5
        local.get 9
        local.get 4
        i32.sub
        i32.const 65535
        i32.and
        local.set 2
        loop ;; label = @3
          local.get 5
          i32.const 65535
          i32.and
          local.tee 4
          local.get 2
          i32.lt_u
          local.set 8
          local.get 4
          local.get 2
          i32.ge_u
          br_if 2 (;@1;)
          local.get 5
          i32.const 1
          i32.add
          local.set 5
          local.get 0
          local.get 7
          local.get 6
          i32.load offset=16
          call_indirect (type 4)
          br_if 2 (;@1;)
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.load
      local.get 1
      local.get 2
      local.get 0
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 3)
      local.set 8
    end
    local.get 8
  )
  (func $_RNvMsa_NtCs8dNdkSoVEg0_4core3fmtNtB5_9Formatter9write_str (;314;) (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 2
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 3)
  )
  (func $_RNvMsa_NtNtNtCs8dNdkSoVEg0_4core3fmt3num3impm4__fmt (;315;) (type 2) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    local.set 4
    local.get 3
    local.set 5
    block ;; label = @1
      local.get 1
      i32.const 1000
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      i32.const -4
      i32.add
      local.set 6
      local.get 3
      local.set 5
      local.get 1
      local.set 4
      loop ;; label = @2
        local.get 6
        local.get 5
        i32.add
        local.tee 7
        local.get 4
        local.tee 8
        local.get 8
        i32.const 10000
        i32.div_u
        local.tee 4
        i32.const 10000
        i32.mul
        i32.sub
        local.tee 9
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 10
        i32.const 1
        i32.shl
        i32.load16_u offset=1056573 align=1
        i32.store16 align=1
        local.get 7
        i32.const 2
        i32.add
        local.get 9
        local.get 10
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.load16_u offset=1056573 align=1
        i32.store16 align=1
        local.get 5
        i32.const -4
        i32.add
        local.set 5
        local.get 8
        i32.const 9999999
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    block ;; label = @1
      block ;; label = @2
        local.get 4
        i32.const 9
        i32.gt_u
        br_if 0 (;@2;)
        local.get 4
        local.set 8
        br 1 (;@1;)
      end
      local.get 2
      local.get 5
      i32.const -2
      i32.add
      local.tee 5
      i32.add
      local.get 4
      local.get 4
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 8
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.load16_u offset=1056573 align=1
      i32.store16 align=1
    end
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      local.get 5
      i32.const -1
      i32.add
      local.tee 5
      i32.add
      local.get 8
      i32.const 1
      i32.shl
      i32.load8_u offset=1056574
      i32.store8
    end
    local.get 0
    local.get 3
    local.get 5
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 2
    local.get 5
    i32.add
    i32.store
  )
  (func $_RNvXs8_NtNtNtCs8dNdkSoVEg0_4core3fmt3num3impmNtB9_7Display3fmt (;316;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 10
    local.set 3
    local.get 0
    i32.load
    local.tee 4
    local.set 5
    block ;; label = @1
      local.get 4
      i32.const 1000
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 10
      local.set 3
      local.get 4
      local.set 5
      loop ;; label = @2
        local.get 2
        i32.const 6
        i32.add
        local.get 3
        i32.add
        local.tee 6
        i32.const -4
        i32.add
        local.get 5
        local.tee 0
        local.get 0
        i32.const 10000
        i32.div_u
        local.tee 5
        i32.const 10000
        i32.mul
        i32.sub
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.load16_u offset=1056573 align=1
        i32.store16 align=1
        local.get 6
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.load16_u offset=1056573 align=1
        i32.store16 align=1
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 0
        i32.const 9999999
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    block ;; label = @1
      block ;; label = @2
        local.get 5
        i32.const 9
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      i32.const 6
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 5
      local.get 5
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 0
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.load16_u offset=1056573 align=1
      i32.store16 align=1
    end
    block ;; label = @1
      block ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.const 6
      i32.add
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.add
      local.get 0
      i32.const 1
      i32.shl
      i32.load8_u offset=1056574
      i32.store8
    end
    local.get 1
    i32.const 1
    i32.const 1
    i32.const 0
    local.get 2
    i32.const 6
    i32.add
    local.get 3
    i32.add
    i32.const 10
    local.get 3
    i32.sub
    call $_RNvMsa_NtCs8dNdkSoVEg0_4core3fmtNtB5_9Formatter12pad_integral
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3
  )
  (func $_RNvNtCs8dNdkSoVEg0_4core6option13expect_failed (;317;) (type 10) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 53
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 3
    i64.extend_i32_u
    i64.or
    i64.store offset=8
    i32.const 1056236
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
    unreachable
  )
  (func $_RNvXs1g_NtCs8dNdkSoVEg0_4core3fmtRDNtB6_5DebugEL_Bx_3fmtB8_ (;318;) (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 4)
  )
  (func $_RNvNtCs8dNdkSoVEg0_4core9panicking14panic_nounwind (;319;) (type 1) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 1
    i32.shl
    i32.const 1
    i32.or
    i32.const 0
    i32.const 1056316
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking18panic_nounwind_fmt
    unreachable
  )
  (func $_RNvNtCs8dNdkSoVEg0_4core9panicking18panic_nounwind_fmt (;320;) (type 2) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 1
    i32.store offset=16
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 2
    i32.store8 offset=29
    local.get 4
    i32.const 0
    i32.store8 offset=28
    local.get 4
    local.get 3
    i32.store offset=24
    local.get 4
    local.get 4
    i32.const 12
    i32.add
    i32.store offset=20
    local.get 4
    i32.const 20
    i32.add
    call $_RNvCs9hJ03s5DiqP_7___rustc17rust_begin_unwind
    unreachable
  )
  (func $_RNvXs8_NtCs8dNdkSoVEg0_4core3fmtNtB5_9ArgumentsNtB5_7Display3fmt (;321;) (type 4) (param i32 i32) (result i32)
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_RNvNtCs8dNdkSoVEg0_4core3fmt5write
  )
  (func $_RNvNtCs8dNdkSoVEg0_4core9panicking30panic_null_pointer_dereference (;322;) (type 0) (param i32)
    i32.const 1056457
    i32.const 67
    i32.const 0
    local.get 0
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking18panic_nounwind_fmt
    unreachable
  )
  (func $_RNvNtCs8dNdkSoVEg0_4core9panicking36panic_misaligned_pointer_dereference (;323;) (type 10) (param i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    i32.const 54
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 4
    local.get 3
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    local.get 3
    local.get 4
    local.get 3
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=16
    i32.const 1056490
    local.get 3
    i32.const 16
    i32.add
    i32.const 0
    local.get 2
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking18panic_nounwind_fmt
    unreachable
  )
  (func $_RNvXs6_NtNtCs8dNdkSoVEg0_4core3fmt3numjNtB7_8LowerHex3fmt (;324;) (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 3
    i32.const 0
    local.set 0
    loop ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 0
      i32.add
      i32.const 7
      i32.add
      local.get 3
      i32.const 15
      i32.and
      i32.load8_u offset=1056204
      i32.store8
      local.get 0
      i32.const -1
      i32.add
      local.set 0
      local.get 3
      i32.const 4
      i32.shr_u
      local.tee 3
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 1
    i32.const 1056953
    i32.const 2
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.add
    i32.const 8
    i32.add
    i32.const 0
    local.get 0
    i32.sub
    call $_RNvMsa_NtCs8dNdkSoVEg0_4core3fmtNtB5_9Formatter12pad_integral
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_RNvNtNtCs8dNdkSoVEg0_4core5slice6memchr14memchr_aligned (;325;) (type 2) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 2
            i32.const 3
            i32.add
            i32.const -4
            i32.and
            local.tee 4
            local.get 2
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            i32.const -8
            i32.add
            local.set 5
            i32.const 0
            local.set 4
            br 1 (;@3;)
          end
          local.get 3
          local.get 4
          local.get 2
          i32.sub
          local.tee 4
          local.get 3
          local.get 4
          i32.lt_u
          select
          local.set 4
          block ;; label = @4
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 6
            local.get 1
            i32.const 255
            i32.and
            local.set 7
            i32.const 1
            local.set 8
            loop ;; label = @5
              local.get 2
              local.get 6
              i32.add
              i32.load8_u
              local.get 7
              i32.eq
              br_if 4 (;@1;)
              local.get 4
              local.get 6
              i32.const 1
              i32.add
              local.tee 6
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 4
          local.get 3
          i32.const -8
          i32.add
          local.tee 5
          i32.gt_u
          br_if 1 (;@2;)
        end
        local.get 1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.set 6
        loop ;; label = @3
          i32.const 16843008
          local.get 2
          local.get 4
          i32.add
          local.tee 7
          i32.load
          local.get 6
          i32.xor
          local.tee 8
          i32.sub
          local.get 8
          i32.or
          i32.const 16843008
          local.get 7
          i32.const 4
          i32.add
          i32.load
          local.get 6
          i32.xor
          local.tee 7
          i32.sub
          local.get 7
          i32.or
          i32.and
          i32.const -2139062144
          i32.and
          i32.const -2139062144
          i32.ne
          br_if 1 (;@2;)
          local.get 4
          i32.const 8
          i32.add
          local.tee 4
          local.get 5
          i32.le_u
          br_if 0 (;@3;)
        end
      end
      block ;; label = @2
        local.get 3
        local.get 4
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i32.const 255
        i32.and
        local.set 6
        i32.const 1
        local.set 8
        loop ;; label = @3
          block ;; label = @4
            local.get 2
            local.get 4
            i32.add
            i32.load8_u
            local.get 6
            i32.ne
            br_if 0 (;@4;)
            local.get 4
            local.set 6
            br 3 (;@1;)
          end
          local.get 3
          local.get 4
          i32.const 1
          i32.add
          local.tee 4
          i32.ne
          br_if 0 (;@3;)
        end
      end
      i32.const 0
      local.set 8
    end
    local.get 0
    local.get 6
    i32.store offset=4
    local.get 0
    local.get 8
    i32.store
  )
  (func $_RNvNtNtCs8dNdkSoVEg0_4core9panicking11panic_const24panic_const_add_overflow (;326;) (type 0) (param i32)
    i32.const 1056925
    i32.const 57
    local.get 0
    call $_RNvNtCs8dNdkSoVEg0_4core9panicking9panic_fmt
    unreachable
  )
  (func $_RNvXs1g_NtCs8dNdkSoVEg0_4core3fmtRjNtB6_5Debug3fmtB8_ (;327;) (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.load offset=8
          local.tee 3
          i32.const 33554432
          i32.and
          br_if 0 (;@3;)
          local.get 3
          i32.const 67108864
          i32.and
          br_if 1 (;@2;)
          local.get 0
          local.get 1
          call $_RNvXs8_NtNtNtCs8dNdkSoVEg0_4core3fmt3num3impmNtB9_7Display3fmt
          local.set 0
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.set 3
        i32.const 0
        local.set 0
        loop ;; label = @3
          local.get 2
          i32.const 8
          i32.add
          local.get 0
          i32.add
          i32.const 7
          i32.add
          local.get 3
          i32.const 15
          i32.and
          i32.load8_u offset=1056204
          i32.store8
          local.get 0
          i32.const -1
          i32.add
          local.set 0
          local.get 3
          i32.const 4
          i32.shr_u
          local.tee 3
          br_if 0 (;@3;)
        end
        local.get 1
        i32.const 1
        i32.const 1056953
        i32.const 2
        local.get 2
        i32.const 8
        i32.add
        local.get 0
        i32.add
        i32.const 8
        i32.add
        i32.const 0
        local.get 0
        i32.sub
        call $_RNvMsa_NtCs8dNdkSoVEg0_4core3fmtNtB5_9Formatter12pad_integral
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.load
      local.set 3
      i32.const 0
      local.set 0
      loop ;; label = @2
        local.get 2
        i32.const 8
        i32.add
        local.get 0
        i32.add
        i32.const 7
        i32.add
        local.get 3
        i32.const 15
        i32.and
        i32.load8_u offset=1056955
        i32.store8
        local.get 0
        i32.const -1
        i32.add
        local.set 0
        local.get 3
        i32.const 4
        i32.shr_u
        local.tee 3
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const 1
      i32.const 1056953
      i32.const 2
      local.get 2
      i32.const 8
      i32.add
      local.get 0
      i32.add
      i32.const 8
      i32.add
      i32.const 0
      local.get 0
      i32.sub
      call $_RNvMsa_NtCs8dNdkSoVEg0_4core3fmtNtB5_9Formatter12pad_integral
      local.set 0
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_RNvXsg_NtCs8dNdkSoVEg0_4core3fmtbNtB5_7Display3fmt (;328;) (type 4) (param i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      i32.load8_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 1056971
      i32.const 5
      call $_RNvMsa_NtCs8dNdkSoVEg0_4core3fmtNtB5_9Formatter3pad
      return
    end
    local.get 1
    i32.const 1056976
    i32.const 4
    call $_RNvMsa_NtCs8dNdkSoVEg0_4core3fmtNtB5_9Formatter3pad
  )
  (func $_RNvXsi_NtCs8dNdkSoVEg0_4core3fmteNtB5_7Display3fmt (;329;) (type 3) (param i32 i32 i32) (result i32)
    local.get 2
    local.get 0
    local.get 1
    call $_RNvMsa_NtCs8dNdkSoVEg0_4core3fmtNtB5_9Formatter3pad
  )
  (table (;0;) 56 56 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (;0;) (mut i32) i32.const 1048576)
  (export "memory" (memory 0))
  (export "run" (func $run))
  (export "cabi_realloc_wit_bindgen_0_41_0" (func $cabi_realloc_wit_bindgen_0_41_0))
  (export "cabi_realloc" (func $cabi_realloc))
  (elem (;0;) (i32.const 1) func $_RNvNtCsaJolGoatC1G_7todomvc8bindings40___link_custom_section_describing_imports $cabi_realloc $_RNvNtCs4cXvnjfI5fJ_3std5alloc24default_alloc_error_hook $_RNvXs1i_NtCs8dNdkSoVEg0_4core3fmtReNtB6_7Display3fmtCs4cXvnjfI5fJ_3std $_RNvXs1i_NtCs8dNdkSoVEg0_4core3fmtRNtNtNtB8_5panic8location8LocationNtB6_7Display3fmtCs4cXvnjfI5fJ_3std $_RNvXs1j_NtCs8dNdkSoVEg0_4core3fmtQDNtNtB8_5panic12PanicPayloadEL_NtB6_7Display3fmtCs4cXvnjfI5fJ_3std $_RNvXsd_NtNtNtCs8dNdkSoVEg0_4core3fmt3num3impyNtB9_7Display3fmt $_RNvXs8_NtNtNtCs8dNdkSoVEg0_4core3fmt3num3impmNtB9_7Display3fmt $_RNvYNtNtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_ $_RNvXNvMNtNtCs4cXvnjfI5fJ_3std3sys9backtraceNtB5_13BacktraceLock5printNtB2_16DisplayBacktraceNtNtCs8dNdkSoVEg0_4core3fmt7Display3fmt $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmt7AdapterINtNtCs51AVrxNfmOa_5alloc3vec3VechEEEBI_ $_RNvXNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmtINtB2_7AdapterINtNtCs51AVrxNfmOa_5alloc3vec3VechEENtNtCs8dNdkSoVEg0_4core3fmt5Write9write_strB6_ $_RNvYINtNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmt7AdapterINtNtCs51AVrxNfmOa_5alloc3vec3VechEENtNtCs8dNdkSoVEg0_4core3fmt5Write10write_charB9_ $_RNvYINtNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmt7AdapterINtNtCs51AVrxNfmOa_5alloc3vec3VechEENtNtCs8dNdkSoVEg0_4core3fmt5Write9write_fmtB9_ $_RNvXNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmtINtB2_7AdapterINtNtNtCs8dNdkSoVEg0_4core2io6cursor6CursorQShEENtNtB15_3fmt5Write9write_strB6_ $_RNvYINtNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmt7AdapterINtNtNtCs8dNdkSoVEg0_4core2io6cursor6CursorQShEENtNtB12_3fmt5Write10write_charB9_ $_RNvYINtNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmt7AdapterINtNtNtCs8dNdkSoVEg0_4core2io6cursor6CursorQShEENtNtB12_3fmt5Write9write_fmtB9_ $_RNvXNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCs8dNdkSoVEg0_4core3fmt5Write9write_strB6_ $_RNvYINtNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCs8dNdkSoVEg0_4core3fmt5Write10write_charB9_ $_RNvYINtNvNtCs4cXvnjfI5fJ_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCs8dNdkSoVEg0_4core3fmt5Write9write_fmtB9_ $_RNvXs1g_NtCs8dNdkSoVEg0_4core3fmtRbNtB6_5Debug3fmtCs4cXvnjfI5fJ_3std $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNtCs51AVrxNfmOa_5alloc6string6StringECs4cXvnjfI5fJ_3std $_RNvXsZ_NtCs51AVrxNfmOa_5alloc6stringNtB5_6StringNtNtCs8dNdkSoVEg0_4core3fmt5Write9write_str $_RNvXsZ_NtCs51AVrxNfmOa_5alloc6stringNtB5_6StringNtNtCs8dNdkSoVEg0_4core3fmt5Write10write_char $_RNvYNtNtCs51AVrxNfmOa_5alloc6string6StringNtNtCs8dNdkSoVEg0_4core3fmt5Write9write_fmtCs4cXvnjfI5fJ_3std $_RNvXs2_NvNtCs4cXvnjfI5fJ_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs8dNdkSoVEg0_4core3fmt7Display3fmt $_RNvXs1_NvNtCs4cXvnjfI5fJ_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs8dNdkSoVEg0_4core5panic12PanicPayload8take_box $_RNvXs1_NvNtCs4cXvnjfI5fJ_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs8dNdkSoVEg0_4core5panic12PanicPayload3get $_RNvXs1_NvNtCs4cXvnjfI5fJ_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs8dNdkSoVEg0_4core5panic12PanicPayload6as_str $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueNtNvNtCs4cXvnjfI5fJ_3std9panicking13panic_handler19FormatStringPayloadEBH_ $_RNvXs0_NvNtCs4cXvnjfI5fJ_3std9panicking13panic_handlerNtB5_19FormatStringPayloadNtNtCs8dNdkSoVEg0_4core3fmt7Display3fmt $_RNvXs_NvNtCs4cXvnjfI5fJ_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCs8dNdkSoVEg0_4core5panic12PanicPayload8take_box $_RNvXs_NvNtCs4cXvnjfI5fJ_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCs8dNdkSoVEg0_4core5panic12PanicPayload3get $_RNvYINtNvNtCs4cXvnjfI5fJ_3std9panicking11begin_panic7PayloadReENtNtCs8dNdkSoVEg0_4core5panic12PanicPayload6as_strB9_ $_RNvXs3_NtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write $_RNvXs3_NtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write14write_vectored $_RNvXs3_NtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write17is_write_vectored $_RNvXs3_NtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5flush $_RNvYNtNtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allBa_ $_RNvYNtNtNtNtCs4cXvnjfI5fJ_3std3sys5stdio4unix6StderrNtNtBa_2io5Write18write_all_vectoredBa_ $_RINvNtCs8dNdkSoVEg0_4core3ptr9drop_glueINtNtCs51AVrxNfmOa_5alloc3vec3VechEECs4cXvnjfI5fJ_3std $_RNvXs9_NtNtCs4cXvnjfI5fJ_3std2io5implsINtNtCs51AVrxNfmOa_5alloc3vec3VechENtB7_5Write5writeB9_ $_RNvXs9_NtNtCs4cXvnjfI5fJ_3std2io5implsINtNtCs51AVrxNfmOa_5alloc3vec3VechENtB7_5Write14write_vectoredB9_ $_RNvXs9_NtNtCs4cXvnjfI5fJ_3std2io5implsINtNtCs51AVrxNfmOa_5alloc3vec3VechENtB7_5Write17is_write_vectoredB9_ $_RNvXs9_NtNtCs4cXvnjfI5fJ_3std2io5implsINtNtCs51AVrxNfmOa_5alloc3vec3VechENtB7_5Write5flushB9_ $_RNvXs9_NtNtCs4cXvnjfI5fJ_3std2io5implsINtNtCs51AVrxNfmOa_5alloc3vec3VechENtB7_5Write9write_allB9_ $_RNvXs9_NtNtCs4cXvnjfI5fJ_3std2io5implsINtNtCs51AVrxNfmOa_5alloc3vec3VechENtB7_5Write18write_all_vectoredB9_ $_RNvYINtNtCs51AVrxNfmOa_5alloc3vec3VechENtNtCs4cXvnjfI5fJ_3std2io5Write9write_fmtBF_ $_RNvXNtCs8dNdkSoVEg0_4core3anyReNtB2_3Any7type_idCs4cXvnjfI5fJ_3std $_RNvXNtCs8dNdkSoVEg0_4core3anyNtNtCs51AVrxNfmOa_5alloc6string6StringNtB2_3Any7type_idCs4cXvnjfI5fJ_3std $_RNvXs1g_NtCs8dNdkSoVEg0_4core3fmtRDNtB6_5DebugEL_Bx_3fmtB8_ $_RNvXs8_NtCs8dNdkSoVEg0_4core3fmtNtB5_9ArgumentsNtB5_7Display3fmt $_RNvXs1i_NtCs8dNdkSoVEg0_4core3fmtReNtB6_7Display3fmtB8_ $_RNvXs6_NtNtCs8dNdkSoVEg0_4core3fmt3numjNtB7_8LowerHex3fmt $_RNvXs1g_NtCs8dNdkSoVEg0_4core3fmtRjNtB6_5Debug3fmtB8_)
  (data $.rodata (;0;) (i32.const 1048576) "/Users/mozilla/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/mem/alignment.rs\00\00\00\00\00\00\10\00t\00\00\00\8b\00\00\00\1b\00\00\00unsafe precondition(s) violated: Layout::from_size_align_unchecked requires that align is a power of 2 and the rounded-up allocation size does not exceed isize::MAX\0a\0aThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.unsafe precondition(s) violated: Vec::set_len requires that new_len <= capacity()\0a\0aThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety./Users/mozilla/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/ptr/non_null.rs\00\00g\02\10\00s\00\00\00\b6\03\00\00 \00\00\00/Users/mozilla/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/slice/iter.rs\00\00\00\ec\02\10\00q\00\00\00\8c\00\00\00\01\00\00\00/Users/mozilla/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/iter/adapters/filter.rs\00p\03\10\00{\00\00\00\fb\00\00\00\12\00\00\00/Users/mozilla/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/alloc/src/raw_vec/mod.rs\00\fc\03\10\00s\00\00\00\82\02\00\005\00\00\00\fc\03\10\00s\00\00\00\83\02\00\00\1e\00\00\00\00\00\00\00\00\00\00\00\fc\03\10\00s\00\00\00\b6\01\00\00\15\00\00\00/Users/mozilla/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/ptr/mod.rs\00\00\a8\04\10\00n\00\00\00\13\02\00\00\05\00\00\00/Users/mozilla/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs\00(\05\10\00o\00\00\00\a7\08\00\00\09\00\00\00\01\00\00\00src/bindings.rs\00\ac\05\10\00\0f\00\00\00.\02\00\00,\00\00\00\ac\05\10\00\0f\00\00\003\02\00\00.\00\00\00is_nonoverlapping: `size_of::<T>() * count` overflows a usizethere is no such thing as a release load/Users/mozilla/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/sync/atomic.rs\00A\06\10\00r\00\00\00C\0f\00\00\18\00\00\00there is no such thing as an acquire-release load\00\00\00A\06\10\00r\00\00\00D\0f\00\00\17\00\00\00unsafe precondition(s) violated: ptr::copy_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap\0a\0aThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety./Users/mozilla/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs\00#\08\10\00x\00\00\00\ce\00\00\00\01\00\00\00unsafe precondition(s) violated: hint::assert_unchecked must never be called when the condition is false\0a\0aThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.liahrefselectedcompleteddivviewinputtoggletypecheckboxcheckedlabelbuttondestroyclasssectiontodoappheaderh1todosnew-todoplaceholderWhat needs to be done?autofocusmaintoggle-allidforMark all as completeultodo-listTaste JavaScriptBuy a unicorn\00\00\00\5c\0a\10\00\10\00\00\00\01\00\00\00l\0a\10\00\0d\00\00\00\00\00\00\00footerspantodo-countstrong items left item leftfiltersAll#/Active#/activeCompleted#/completedclear-completedClear completedunsafe precondition(s) violated: ptr::offset_from_unsigned requires `self >= origin`\0a\0aThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.unsafe precondition(s) violated: NonNull::new_unchecked requires that the pointer is non-null\0a\0aThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.unsafe precondition(s) violated: usize::unchecked_add cannot overflow\0a\0aThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.unsafe precondition(s) violated: usize::unchecked_mul cannot overflow\0a\0aThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.invalid enum discriminantsrc/bindings.rs\00\007\0e\10\00\0f\00\00\00\fc\05\00\00\0d\00\00\00assertion failed: handle != u32::MAX7\0e\10\00\0f\00\00\00\cf\05\00\00\0d\00\00\00/Users/mozilla/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/ptr/non_null.rs\00\8c\0e\10\00s\00\00\00\a7\05\00\00\12\00\00\00\00\00\00\00\00\00\00\00\8c\0e\10\00s\00\00\00\0d\01\00\00\1b\00\00\00unsafe precondition(s) violated: Alignment::new_unchecked requires a power of two\0a\0aThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.\00\00\02\00\00\00\00\00\00\00/Users/mozilla/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/wit-bindgen-rt-0.41.0/src/lib.rs\00\00\00\00\f8\0f\10\00d\00\00\00G\00\00\00\12\00\00\00non-zero old_len requires non-zero new_len!\00\f8\0f\10\00d\00\00\00F\00\00\00\09\00\00\00\f8\0f\10\00d\00\00\00C\00\00\00\12\00\00\00/Users/mozilla/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/alloc/src/alloc.rs\00\00\00\bc\10\10\00m\00\00\00\94\00\00\00\1e\00\00\00unsafe precondition(s) violated: Alignment::new_unchecked requires a power of two\0a\0aThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety./Users/mozilla/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/mem/alignment.rs\00\00\02\12\10\00t\00\00\00\8b\00\00\00\1b\00\00\00unsafe precondition(s) violated: Layout::from_size_align_unchecked requires that align is a power of 2 and the rounded-up allocation size does not exceed isize::MAX\0a\0aThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.unsafe precondition(s) violated: NonNull::new_unchecked requires that the pointer is non-null\0a\0aThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.is_aligned_to: align is not a power-of-two/Users/mozilla/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/ptr/const_ptr.rs\00\00\00\9d\14\10\00t\00\00\00^\05\00\00\0d\00\00\00/rustc/2d8144b7880597b6e6d3dfd63a9a9efae3f533d3/library/std/src/io/mod.rs\00\00\00\0b\00\00\00\0c\00\00\00\04\00\00\00\0c\00\00\00\0d\00\00\00\0e\00\00\00a formatting trait implementation returned an error when the underlying stream did not\00\00$\15\10\00I\00\00\00w\02\00\00\11\00\00\00\0b\00\00\00\0c\00\00\00\04\00\00\00\0f\00\00\00\10\00\00\00\11\00\00\00\0b\00\00\00\0c\00\00\00\04\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00\15\00\00\00file name contained an unexpected NUL byte\00\000\16\10\00*\00\00\00\14\00\00\00\02\00\00\00\5c\16\10\00main\09\0athread '\c0\03' (\c0\0e) panicked at \c0\02:\0a\c0\01\0a\00<unnamed>/rustc/2d8144b7880597b6e6d3dfd63a9a9efae3f533d3/library/std/src/panicking.rs\00\00\00\00\a4\16\10\00L\00\00\00\16\01\00\00.\00\00\00\16\00\00\00\0c\00\00\00\04\00\00\00\17\00\00\00\18\00\00\00\19\00\00\00note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace\0a\00\00\00\00\00\00\08\00\00\00\04\00\00\00\1a\00\00\00\1b\00\00\00\1c\00\00\00\1d\00\00\00\1e\00\00\00\10\00\00\00\04\00\00\00\1f\00\00\00 \00\00\00!\00\00\00\22\00\00\005fatal runtime error: failed to initiate panic, error \c0\0b, aborting\0a\00\5c\f6\e9_\dc\02\f6\b9\f1\c1pl\f2a\c1$\eb\5c\ed+\da6\a8\f15\cc\e7\ee4\18QZ\c0\00/rustc/2d8144b7880597b6e6d3dfd63a9a9efae3f533d3/library/std/src/thread/id.rs\00fatal runtime error: rwlock locked for writing, aborting\0arwlock overflowed read locks/rustc/2d8144b7880597b6e6d3dfd63a9a9efae3f533d3/library/std/src/sys/sync/rwlock/no_threads.rs\00\00\00\ac\18\10\00]\00\00\00\15\00\00\00,\00\00\00RUST_BACKTRACEcannot recursively acquire mutex/rustc/2d8144b7880597b6e6d3dfd63a9a9efae3f533d3/library/std/src/sys/sync/mutex/no_threads.rs\00\00J\19\10\00\5c\00\00\00\13\00\00\00\09\00\00\00advancing io slices beyond their length\00$\15\10\00I\00\00\00I\06\00\00\0d\00\00\00advancing IoSlice beyond its length/rustc/2d8144b7880597b6e6d3dfd63a9a9efae3f533d3/library/std/src/sys/io/io_slice/iovec.rs\00\13\1a\10\00X\00\00\00\1f\00\00\00\0d\00\00\00$\15\10\00I\00\00\00G\06\00\00 \00\00\00\00\15memory allocation of \c0\0e bytes failed\0a\00\00\00\00\00\00\00\00\00\01\00\00\00#\00\00\00$\00\00\00%\00\00\00&\00\00\00'\00\00\00(\00\00\00\09\00\00\00\15memory allocation of \c0G bytes failed\0askipping backtrace printing to avoid potential recursion\0a\00)\00\00\00\0c\00\00\00\04\00\00\00*\00\00\00+\00\00\00,\00\00\00-\00\00\00.\00\00\00/\00\00\000\00\00\00Box<dyn Any>\19aborting due to panic at \c0\02:\0a\c0\01\0a\00\0cpanicked at \c0\02:\0a\c03\0athread panicked while processing panic. aborting.\0a\00thread caused non-unwinding panic. aborting.\0afailed to write whole buffer\00\00\06\1c\10\00\1c\00\00\00\17\00\00\00\02\00\00\00$\1c\10\00stack backtrace:\0anote: Some details are omitted, run with `RUST_BACKTRACE=full` for a verbose backtrace.\0afailed to generate unique thread ID: bitspace exhausted\0a\18\10\00L\00\00\00&\00\00\00\0d\00\00\00\00\00\00\00\08\00\00\00\04\00\00\001\00\00\00\c0\01:\c0\01:\c0\00\16\00\00\00\0c\00\00\00\04\00\00\002\00\00\00rwlock has not been locked for reading\00\00\ac\18\10\00]\00\00\00>\00\00\00\09\00\00\00$\15\10\00I\00\00\00H\07\00\00$\00\00\00/\00/rustc/2d8144b7880597b6e6d3dfd63a9a9efae3f533d3/library/alloc/src/raw_vec/mod.rs\00capacity overflowZ\1d\10\00P\00\00\00\1c\00\00\00\05\00\00\000123456789abcdef\00\00\00\00\04\00\00\00\04\00\00\007\00\00\00\c0\00/rustc/2d8144b7880597b6e6d3dfd63a9a9efae3f533d3/library/core/src/panicking.rs\00\ee\1d\10\00M\00\00\00\e1\00\00\00\05\00\00\00==!=matches\10assertion `left \c0\17 right` failed\0a  left: \c0\09\0a right: \c0\00\10assertion `left \c0\10 right` failed: \c0\09\0a  left: \c0\09\0a right: \c0\00null pointer dereference occurred>misaligned pointer dereference: address must be a multiple of \c1 \00\80`\08 but is \c1 \00\80`\0000010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\10range end index \c0\22 out of range for slice of length \c0\00\16slice index starts at \c0\0d but ends at \c0\00\12range start index \c0\22 out of range for slice of length \c0\00attempt to add with overflow0x0123456789ABCDEFfalsetrueL\1e\10\00N\1e\10\00P\1e\10\00\02\00\00\00\02\00\00\00\07\00\00\00")
  (data $.data (;1;) (i32.const 1057004) "\01\00\00\00\ff\ff\ff\ffX\1d\10\00")
  (@producers
    (language "Rust" "")
    (language "C11" "")
    (processed-by "rustc" "1.97.0 (2d8144b78 2026-07-07)")
    (processed-by "clang" "22.1.0-wasi-sdk (https://github.com/llvm/llvm-project 4434dabb69916856b824f68a64b029c67175e532)")
    (processed-by "wit-component" "0.227.1")
    (processed-by "wit-bindgen-rust" "0.41.0")
  )
)
