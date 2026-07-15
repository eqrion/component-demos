(module $wit-component:adapter:wasi_snapshot_preview1
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32 i64 i32)))
  (type (;3;) (func (param i32 i32 i32 i32)))
  (type (;4;) (func (param i32 i32 i32 i32 i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (param i64 i32)))
  (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (result i32)))
  (type (;10;) (func (param i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32) (result i32)))
  (type (;12;) (func))
  (import "env" "memory" (memory (;0;) 0))
  (import "wasi:cli/environment@0.2.3" "get-environment" (func $_ZN22wasi_snapshot_preview124wasi_cli_get_environment17h9c87126ef27cf558E (;0;) (type 0)))
  (import "wasi:filesystem/types@0.2.3" "[resource-drop]descriptor" (func $_ZN141_$LT$wasi_snapshot_preview1..bindings..wasi..filesystem..types..Descriptor$u20$as$u20$wasi_snapshot_preview1..bindings.._rt..WasmResource$GT$4drop4drop17habd763d19a96734eE (;1;) (type 0)))
  (import "wasi:io/streams@0.2.3" "[resource-drop]output-stream" (func $_ZN137_$LT$wasi_snapshot_preview1..bindings..wasi..io..streams..OutputStream$u20$as$u20$wasi_snapshot_preview1..bindings.._rt..WasmResource$GT$4drop4drop17h2cd95caae0c19702E (;2;) (type 0)))
  (import "wasi:filesystem/types@0.2.3" "filesystem-error-code" (func $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem5types21filesystem_error_code10wit_import17h54686631fb2f3f8cE (;3;) (type 1)))
  (import "wasi:io/error@0.2.3" "[resource-drop]error" (func $_ZN128_$LT$wasi_snapshot_preview1..bindings..wasi..io..error..Error$u20$as$u20$wasi_snapshot_preview1..bindings.._rt..WasmResource$GT$4drop4drop17h126ca568d93f391eE (;4;) (type 0)))
  (import "wasi:io/streams@0.2.3" "[resource-drop]input-stream" (func $_ZN136_$LT$wasi_snapshot_preview1..bindings..wasi..io..streams..InputStream$u20$as$u20$wasi_snapshot_preview1..bindings.._rt..WasmResource$GT$4drop4drop17h9c496c6205949cd0E (;5;) (type 0)))
  (import "wasi:random/random@0.2.3" "get-random-bytes" (func $_ZN22wasi_snapshot_preview18bindings4wasi6random6random16get_random_bytes10wit_import17h3514f42888b428a9E (;6;) (type 7)))
  (import "wasi:io/streams@0.2.3" "[method]output-stream.check-write" (func $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams12OutputStream11check_write10wit_import17h48f6848a32963615E (;7;) (type 1)))
  (import "wasi:io/streams@0.2.3" "[method]output-stream.write" (func $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams12OutputStream5write10wit_import17h23ca25d4e87a3335E (;8;) (type 3)))
  (import "wasi:io/streams@0.2.3" "[method]output-stream.blocking-flush" (func $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams12OutputStream14blocking_flush10wit_import17headb7523631a87ccE (;9;) (type 1)))
  (import "__main_module__" "cabi_realloc" (func $_ZN22wasi_snapshot_preview15State3new12cabi_realloc17h9e5c107fb796f9b5E (;10;) (type 8)))
  (import "wasi:filesystem/preopens@0.2.2" "get-directories" (func $_ZN22wasi_snapshot_preview111descriptors31wasi_filesystem_get_directories17h7823d9b55299d1faE (;11;) (type 0)))
  (import "wasi:cli/stderr@0.2.3" "get-stderr" (func $_ZN22wasi_snapshot_preview18bindings4wasi3cli6stderr10get_stderr10wit_import17h851f46f641e7fe80E (;12;) (type 9)))
  (import "wasi:io/streams@0.2.3" "[method]output-stream.blocking-write-and-flush" (func $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams12OutputStream24blocking_write_and_flush10wit_import17h7085f0b5b70fc1afE (;13;) (type 3)))
  (import "wasi:filesystem/types@0.2.3" "[method]descriptor.write-via-stream" (func $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem5types10Descriptor16write_via_stream10wit_import17ha64804783e599ccbE (;14;) (type 2)))
  (import "wasi:cli/stdin@0.2.3" "get-stdin" (func $_ZN22wasi_snapshot_preview18bindings4wasi3cli5stdin9get_stdin10wit_import17h4fb7768023d1a4fcE (;15;) (type 9)))
  (import "wasi:cli/stdout@0.2.3" "get-stdout" (func $_ZN22wasi_snapshot_preview18bindings4wasi3cli6stdout10get_stdout10wit_import17h490a886c306f7fdfE (;16;) (type 9)))
  (import "wasi:cli/exit@0.2.3" "exit" (func $_ZN22wasi_snapshot_preview18bindings4wasi3cli4exit4exit10wit_import17hce5b4e4b2c207012E (;17;) (type 0)))
  (import "wasi:filesystem/types@0.2.3" "[method]descriptor.append-via-stream" (func $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem5types10Descriptor17append_via_stream10wit_import17h10cd2837ec6d8dc8E (;18;) (type 1)))
  (import "wasi:filesystem/types@0.2.3" "[method]descriptor.get-type" (func $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem5types10Descriptor8get_type10wit_import17h3aa6e85bc2f73396E (;19;) (type 1)))
  (import "wasi:filesystem/types@0.2.3" "[method]descriptor.stat" (func $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem5types10Descriptor4stat10wit_import17h75b4c67b9de87a81E (;20;) (type 1)))
  (func $_ZN22wasi_snapshot_preview15State3ptr17h5c145dfdb9e77f14E (;21;) (type 9) (result i32)
    (local i32)
    block ;; label = @1
      call $get_state_ptr
      local.tee 0
      br_if 0 (;@1;)
      call $_ZN22wasi_snapshot_preview15State3new17h37d6e1e49faf9882E
      local.tee 0
      call $set_state_ptr
    end
    local.get 0
  )
  (func $_ZN22wasi_snapshot_preview16macros11assert_fail17h67fe26dc6b70f78bE (;22;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 32
    i32.store8 offset=47
    local.get 1
    i64.const 7308895158390646132
    i64.store offset=39 align=1
    local.get 1
    i64.const 8097863973307965728
    i64.store offset=31 align=1
    local.get 1
    i64.const 7234307576302018670
    i64.store offset=23 align=1
    local.get 1
    i64.const 8028075845441778529
    i64.store offset=15 align=1
    local.get 1
    i32.const 15
    i32.add
    i32.const 33
    call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
    local.get 0
    call $_ZN22wasi_snapshot_preview16macros10eprint_u3217haa4cafbda91ed390E
    unreachable
  )
  (func $cabi_import_realloc (;23;) (type 8) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i64)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 4
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
                        call $_ZN22wasi_snapshot_preview15State3ptr17h5c145dfdb9e77f14E
                        local.tee 5
                        i32.load
                        i32.const 560490357
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 5
                        i32.load offset=65532
                        i32.const 560490357
                        i32.ne
                        br_if 1 (;@9;)
                        local.get 5
                        i64.load offset=4 align=4
                        local.set 6
                        local.get 5
                        i32.const 4
                        i32.store offset=4
                        local.get 4
                        i32.const 16
                        i32.add
                        local.get 5
                        i32.const 20
                        i32.add
                        i32.load
                        i32.store
                        local.get 4
                        i32.const 8
                        i32.add
                        local.get 5
                        i32.const 12
                        i32.add
                        i64.load align=4
                        i64.store
                        local.get 4
                        local.get 6
                        i64.store
                        local.get 0
                        i32.eqz
                        br_if 2 (;@8;)
                        local.get 1
                        local.get 3
                        i32.le_u
                        br_if 3 (;@7;)
                        local.get 2
                        i32.const 1
                        i32.eq
                        br_if 9 (;@1;)
                        i32.const 377
                        call $_ZN22wasi_snapshot_preview16macros11assert_fail17h67fe26dc6b70f78bE
                        unreachable
                      end
                      i32.const 2745
                      call $_ZN22wasi_snapshot_preview16macros11assert_fail17h67fe26dc6b70f78bE
                      unreachable
                    end
                    i32.const 2746
                    call $_ZN22wasi_snapshot_preview16macros11assert_fail17h67fe26dc6b70f78bE
                    unreachable
                  end
                  local.get 4
                  i32.load
                  br_table 5 (;@2;) 3 (;@4;) 2 (;@5;) 1 (;@6;) 4 (;@3;) 5 (;@2;)
                end
                i32.const 376
                call $_ZN22wasi_snapshot_preview16macros11assert_fail17h67fe26dc6b70f78bE
                unreachable
              end
              local.get 4
              i32.const 12
              i32.add
              local.set 0
              block ;; label = @6
                local.get 2
                i32.const 1
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                local.get 2
                local.get 3
                call $_ZN22wasi_snapshot_preview19BumpAlloc5alloc17h39670d76c8e870b7E
                local.set 0
                br 5 (;@1;)
              end
              local.get 4
              local.get 4
              i32.load offset=4
              local.tee 2
              i32.const 1
              i32.add
              i32.store offset=4
              block ;; label = @6
                local.get 2
                local.get 4
                i32.load offset=8
                i32.eq
                br_if 0 (;@6;)
                local.get 4
                local.get 4
                i64.load offset=12 align=4
                i64.store offset=24 align=4
                local.get 4
                i32.const 24
                i32.add
                i32.const 1
                local.get 3
                call $_ZN22wasi_snapshot_preview19BumpAlloc5alloc17h39670d76c8e870b7E
                local.set 0
                br 5 (;@1;)
              end
              local.get 0
              i32.const 1
              local.get 3
              call $_ZN22wasi_snapshot_preview19BumpAlloc5alloc17h39670d76c8e870b7E
              local.set 0
              br 4 (;@1;)
            end
            block ;; label = @5
              local.get 2
              i32.const 1
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              i32.const 12
              i32.add
              local.get 2
              local.get 3
              call $_ZN22wasi_snapshot_preview19BumpAlloc5alloc17h39670d76c8e870b7E
              local.set 0
              br 4 (;@1;)
            end
            local.get 4
            i32.const 4
            i32.or
            i32.const 1
            local.get 3
            i32.const 1
            i32.add
            call $_ZN22wasi_snapshot_preview19BumpAlloc5alloc17h39670d76c8e870b7E
            local.set 0
            br 3 (;@1;)
          end
          block ;; label = @4
            local.get 2
            i32.const 1
            i32.eq
            br_if 0 (;@4;)
            local.get 4
            i32.const 8
            i32.add
            local.get 2
            local.get 3
            call $_ZN22wasi_snapshot_preview19BumpAlloc5alloc17h39670d76c8e870b7E
            local.set 0
            br 3 (;@1;)
          end
          local.get 4
          local.get 4
          i32.load offset=4
          local.get 3
          i32.add
          i32.store offset=4
          local.get 4
          local.get 4
          i64.load offset=8
          i64.store offset=24 align=4
          local.get 4
          i32.const 24
          i32.add
          i32.const 1
          local.get 3
          call $_ZN22wasi_snapshot_preview19BumpAlloc5alloc17h39670d76c8e870b7E
          local.set 0
          br 2 (;@1;)
        end
        i32.const 418
        call $_ZN22wasi_snapshot_preview16macros18eprint_unreachable17h82bf8aece4f48e92E
        local.get 4
        i32.const 8250
        i32.store16 offset=24 align=1
        local.get 4
        i32.const 24
        i32.add
        i32.const 2
        call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
        local.get 4
        i64.const 748834980320733542
        i64.store offset=40 align=1
        local.get 4
        i64.const 7957688057596965985
        i64.store offset=32 align=1
        local.get 4
        i64.const 7165064744911531886
        i64.store offset=24 align=1
        local.get 4
        i32.const 24
        i32.add
        i32.const 24
        call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
        local.get 4
        i32.const 10
        i32.store8 offset=24
        local.get 4
        i32.const 24
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
        unreachable
      end
      local.get 4
      i32.const 4
      i32.or
      local.get 2
      local.get 3
      call $_ZN22wasi_snapshot_preview19BumpAlloc5alloc17h39670d76c8e870b7E
      local.set 0
      local.get 4
      i32.const 4
      i32.store
    end
    local.get 5
    i32.const 4
    i32.add
    local.tee 5
    local.get 4
    i64.load
    i64.store align=4
    local.get 5
    i32.const 16
    i32.add
    local.get 4
    i32.const 16
    i32.add
    i32.load
    i32.store
    local.get 5
    i32.const 8
    i32.add
    local.get 4
    i32.const 8
    i32.add
    i64.load
    i64.store align=4
    local.get 4
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN22wasi_snapshot_preview19BumpAlloc5alloc17h39670d76c8e870b7E (;24;) (type 10) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.popcnt
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=4
          local.tee 4
          local.get 1
          local.get 0
          i32.load
          local.tee 5
          i32.add
          i32.const -1
          i32.add
          i32.const 0
          local.get 1
          i32.sub
          i32.and
          local.get 5
          i32.sub
          local.tee 1
          i32.lt_u
          br_if 1 (;@2;)
          local.get 4
          local.get 1
          i32.sub
          local.tee 4
          local.get 2
          i32.ge_u
          br_if 2 (;@1;)
          i32.const 438
          call $_ZN22wasi_snapshot_preview16macros18eprint_unreachable17h82bf8aece4f48e92E
          local.get 3
          i32.const 8250
          i32.store16 offset=3 align=1
          local.get 3
          i32.const 3
          i32.add
          i32.const 2
          call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
          local.get 3
          i32.const 10
          i32.store8 offset=31
          local.get 3
          i32.const 1701278305
          i32.store offset=27 align=1
          local.get 3
          i64.const 7791349879831294825
          i64.store offset=19 align=1
          local.get 3
          i64.const 2334406575183130223
          i64.store offset=11 align=1
          local.get 3
          i64.const 7598805550979902561
          i64.store offset=3 align=1
          local.get 3
          i32.const 3
          i32.add
          i32.const 29
          call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
          local.get 3
          i32.const 10
          i32.store8 offset=3
          local.get 3
          i32.const 3
          i32.add
          i32.const 1
          call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
          unreachable
        end
        i32.const 448
        call $_ZN22wasi_snapshot_preview16macros18eprint_unreachable17h82bf8aece4f48e92E
        local.get 3
        i32.const 8250
        i32.store16 offset=3 align=1
        local.get 3
        i32.const 3
        i32.add
        i32.const 2
        call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
        local.get 3
        i32.const 2676
        i32.store16 offset=19 align=1
        local.get 3
        i64.const 7954884637768641633
        i64.store offset=11 align=1
        local.get 3
        i64.const 2334106421097295465
        i64.store offset=3 align=1
        local.get 3
        i32.const 3
        i32.add
        i32.const 18
        call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
        local.get 3
        i32.const 10
        i32.store8 offset=3
        local.get 3
        i32.const 3
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
        unreachable
      end
      i32.const 452
      call $_ZN22wasi_snapshot_preview16macros18eprint_unreachable17h82bf8aece4f48e92E
      local.get 3
      i32.const 8250
      i32.store16 offset=3 align=1
      local.get 3
      i32.const 3
      i32.add
      i32.const 2
      call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
      local.get 3
      i32.const 10
      i32.store8 offset=21
      local.get 3
      i32.const 25972
      i32.store16 offset=19 align=1
      local.get 3
      i64.const 7017575155838820463
      i64.store offset=11 align=1
      local.get 3
      i64.const 8367798494427701606
      i64.store offset=3 align=1
      local.get 3
      i32.const 3
      i32.add
      i32.const 19
      call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
      local.get 3
      i32.const 10
      i32.store8 offset=3
      local.get 3
      i32.const 3
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
      unreachable
    end
    local.get 0
    local.get 4
    local.get 2
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 5
    local.get 1
    i32.add
    local.tee 1
    local.get 2
    i32.add
    i32.store
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN22wasi_snapshot_preview16macros18eprint_unreachable17h82bf8aece4f48e92E (;25;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 32
    i32.store8 offset=47
    local.get 1
    i32.const 1701734764
    i32.store offset=43 align=1
    local.get 1
    i64.const 2338042707334751329
    i64.store offset=35 align=1
    local.get 1
    i64.const 2338600898263348341
    i64.store offset=27 align=1
    local.get 1
    i64.const 7162263158133189730
    i64.store offset=19 align=1
    local.get 1
    i64.const 7018969289221893749
    i64.store offset=11 align=1
    local.get 1
    i32.const 11
    i32.add
    i32.const 37
    call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
    local.get 0
    call $_ZN22wasi_snapshot_preview16macros10eprint_u3215eprint_u32_impl17h3d321cc495af037eE
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E (;26;) (type 1) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    call $_ZN22wasi_snapshot_preview18bindings4wasi3cli6stderr10get_stderr10wit_import17h851f46f641e7fe80E
    i32.store offset=12
    local.get 2
    i32.const 4
    i32.add
    local.get 2
    i32.const 12
    i32.add
    local.get 0
    local.get 1
    call $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams12OutputStream24blocking_write_and_flush17h4f9b86b3d19bf6d5E
    block ;; label = @1
      local.get 2
      i32.load offset=4
      local.tee 1
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=8
      local.tee 1
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      call $_ZN128_$LT$wasi_snapshot_preview1..bindings..wasi..io..error..Error$u20$as$u20$wasi_snapshot_preview1..bindings.._rt..WasmResource$GT$4drop4drop17h126ca568d93f391eE
    end
    block ;; label = @1
      local.get 2
      i32.load offset=12
      local.tee 1
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      call $_ZN137_$LT$wasi_snapshot_preview1..bindings..wasi..io..streams..OutputStream$u20$as$u20$wasi_snapshot_preview1..bindings.._rt..WasmResource$GT$4drop4drop17h2cd95caae0c19702E
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN22wasi_snapshot_preview16macros11unreachable17h9782a153de5c5504E (;27;) (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN22wasi_snapshot_preview16macros18eprint_unreachable17h82bf8aece4f48e92E
    local.get 1
    i32.const 10
    i32.store8 offset=15
    local.get 1
    i32.const 15
    i32.add
    i32.const 1
    call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
    unreachable
  )
  (func $environ_get (;28;) (type 11) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          call $_ZN22wasi_snapshot_preview15State3ptr17h5c145dfdb9e77f14E
          local.tee 3
          i32.load
          i32.const 560490357
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=65532
          i32.const 560490357
          i32.ne
          br_if 1 (;@2;)
          local.get 3
          i32.const 59032
          i32.store offset=20
          local.get 3
          i32.const -1
          i32.store offset=12
          local.get 3
          local.get 1
          i32.store offset=8
          local.get 3
          local.get 3
          i32.const 6192
          i32.add
          i32.store offset=16
          local.get 3
          i32.load offset=4
          local.set 1
          local.get 3
          i32.const 2
          i32.store offset=4
          local.get 1
          i32.const 4
          i32.ne
          br_if 2 (;@1;)
          local.get 2
          i64.const 0
          i64.store align=4
          local.get 2
          call $_ZN22wasi_snapshot_preview124wasi_cli_get_environment17h9c87126ef27cf558E
          local.get 2
          i32.load offset=4
          local.set 4
          local.get 2
          i32.load
          local.set 1
          local.get 3
          i32.const 4
          i32.store offset=4
          block ;; label = @4
            local.get 4
            i32.eqz
            br_if 0 (;@4;)
            loop ;; label = @5
              local.get 1
              i32.const 12
              i32.add
              i32.load
              local.set 3
              local.get 1
              i32.const 8
              i32.add
              i32.load
              local.set 5
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.set 6
              local.get 0
              local.get 1
              i32.load
              local.tee 7
              i32.store
              local.get 7
              local.get 6
              i32.add
              i32.const 61
              i32.store8
              local.get 5
              local.get 3
              i32.add
              i32.const 0
              i32.store8
              local.get 1
              i32.const 16
              i32.add
              local.set 1
              local.get 0
              i32.const 4
              i32.add
              local.set 0
              local.get 4
              i32.const -1
              i32.add
              local.tee 4
              br_if 0 (;@5;)
            end
          end
          local.get 2
          i32.const 32
          i32.add
          global.set $__stack_pointer
          i32.const 0
          return
        end
        i32.const 2745
        call $_ZN22wasi_snapshot_preview16macros11assert_fail17h67fe26dc6b70f78bE
        unreachable
      end
      i32.const 2746
      call $_ZN22wasi_snapshot_preview16macros11assert_fail17h67fe26dc6b70f78bE
      unreachable
    end
    i32.const 2884
    call $_ZN22wasi_snapshot_preview16macros18eprint_unreachable17h82bf8aece4f48e92E
    local.get 2
    i32.const 8250
    i32.store16 align=1
    local.get 2
    i32.const 2
    call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
    local.get 2
    i32.const 10
    i32.store8 offset=28
    local.get 2
    i32.const 1952805664
    i32.store offset=24 align=1
    local.get 2
    i64.const 8747223464599642400
    i64.store offset=16 align=1
    local.get 2
    i64.const 8245937404367563884
    i64.store offset=8 align=1
    local.get 2
    i64.const 6998721855778483561
    i64.store align=1
    local.get 2
    i32.const 29
    call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
    local.get 2
    i32.const 10
    i32.store8
    local.get 2
    i32.const 1
    call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
    unreachable
  )
  (func $environ_sizes_get (;29;) (type 11) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  call $get_allocation_state
                  i32.const -2
                  i32.add
                  br_table 1 (;@6;) 0 (;@7;) 1 (;@6;) 0 (;@7;)
                end
                i32.const 0
                local.set 3
                local.get 0
                i32.const 0
                i32.store
                br 1 (;@5;)
              end
              call $_ZN22wasi_snapshot_preview15State3ptr17h5c145dfdb9e77f14E
              local.tee 3
              i32.load
              i32.const 560490357
              i32.ne
              br_if 1 (;@4;)
              local.get 3
              i32.load offset=65532
              i32.const 560490357
              i32.ne
              br_if 2 (;@3;)
              local.get 3
              i32.const 59032
              i32.store offset=16
              local.get 3
              local.get 3
              i32.const 6192
              i32.add
              i32.store offset=12
              local.get 3
              i32.load offset=4
              local.set 4
              local.get 3
              i64.const 1
              i64.store offset=4 align=4
              local.get 4
              i32.const 4
              i32.ne
              br_if 3 (;@2;)
              local.get 2
              i64.const 0
              i64.store align=4
              local.get 2
              call $_ZN22wasi_snapshot_preview124wasi_cli_get_environment17h9c87126ef27cf558E
              local.get 2
              i32.load offset=4
              local.set 4
              local.get 3
              i32.load offset=4
              local.set 5
              local.get 3
              i32.const 4
              i32.store offset=4
              local.get 5
              i32.const 1
              i32.ne
              br_if 4 (;@1;)
              local.get 3
              i32.load offset=8
              local.set 3
              local.get 0
              local.get 4
              i32.store
              local.get 3
              local.get 4
              i32.const 1
              i32.shl
              i32.add
              local.set 3
            end
            local.get 1
            local.get 3
            i32.store
            local.get 2
            i32.const 32
            i32.add
            global.set $__stack_pointer
            i32.const 0
            return
          end
          i32.const 2745
          call $_ZN22wasi_snapshot_preview16macros11assert_fail17h67fe26dc6b70f78bE
          unreachable
        end
        i32.const 2746
        call $_ZN22wasi_snapshot_preview16macros11assert_fail17h67fe26dc6b70f78bE
        unreachable
      end
      i32.const 2884
      call $_ZN22wasi_snapshot_preview16macros18eprint_unreachable17h82bf8aece4f48e92E
      local.get 2
      i32.const 8250
      i32.store16 align=1
      local.get 2
      i32.const 2
      call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
      local.get 2
      i32.const 10
      i32.store8 offset=28
      local.get 2
      i32.const 1952805664
      i32.store offset=24 align=1
      local.get 2
      i64.const 8747223464599642400
      i64.store offset=16 align=1
      local.get 2
      i64.const 8245937404367563884
      i64.store offset=8 align=1
      local.get 2
      i64.const 6998721855778483561
      i64.store align=1
      local.get 2
      i32.const 29
      call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
      local.get 2
      i32.const 10
      i32.store8
      local.get 2
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
      unreachable
    end
    i32.const 628
    call $_ZN22wasi_snapshot_preview16macros11unreachable17h9782a153de5c5504E
    unreachable
  )
  (func $_ZN22wasi_snapshot_preview15State11descriptors17hd17d22f965ea0069E (;30;) (type 1) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 6160
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load offset=24
        br_if 0 (;@2;)
        local.get 1
        i32.const -1
        i32.store offset=24
        local.get 1
        i32.const 32
        i32.add
        local.set 3
        block ;; label = @3
          local.get 1
          i32.load offset=6180
          i32.const 2
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          local.get 1
          call $_ZN22wasi_snapshot_preview111descriptors11Descriptors3new17ha3aa5a1842636204E
          local.get 3
          local.get 2
          i32.const 6160
          call $memcpy
          drop
          local.get 1
          i32.load offset=6180
          i32.const 2
          i32.eq
          br_if 2 (;@1;)
        end
        local.get 0
        local.get 1
        i32.const 24
        i32.add
        i32.store offset=4
        local.get 0
        local.get 3
        i32.store
        local.get 2
        i32.const 6160
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 2833
      call $_ZN22wasi_snapshot_preview16macros11unreachable17h9782a153de5c5504E
      unreachable
    end
    i32.const 2837
    call $_ZN22wasi_snapshot_preview16macros11unreachable17h9782a153de5c5504E
    unreachable
  )
  (func $_ZN22wasi_snapshot_preview1152_$LT$impl$u20$core..convert..From$LT$wasi_snapshot_preview1..bindings..wasi..filesystem..types..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17h010e8c8d099928dfE (;31;) (type 5) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    i32.const 6
    local.set 2
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
                              block ;; label = @14
                                block ;; label = @15
                                  block ;; label = @16
                                    block ;; label = @17
                                      block ;; label = @18
                                        block ;; label = @19
                                          block ;; label = @20
                                            block ;; label = @21
                                              block ;; label = @22
                                                block ;; label = @23
                                                  block ;; label = @24
                                                    block ;; label = @25
                                                      block ;; label = @26
                                                        block ;; label = @27
                                                          block ;; label = @28
                                                            block ;; label = @29
                                                              block ;; label = @30
                                                                block ;; label = @31
                                                                  block ;; label = @32
                                                                    block ;; label = @33
                                                                      block ;; label = @34
                                                                        block ;; label = @35
                                                                          block ;; label = @36
                                                                            block ;; label = @37
                                                                              local.get 0
                                                                              i32.const 255
                                                                              i32.and
                                                                              br_table 0 (;@37;) 36 (;@1;) 1 (;@36;) 2 (;@35;) 3 (;@34;) 4 (;@33;) 5 (;@32;) 6 (;@31;) 7 (;@30;) 8 (;@29;) 9 (;@28;) 10 (;@27;) 11 (;@26;) 12 (;@25;) 13 (;@24;) 14 (;@23;) 15 (;@22;) 16 (;@21;) 17 (;@20;) 18 (;@19;) 19 (;@18;) 20 (;@17;) 21 (;@16;) 22 (;@15;) 23 (;@14;) 24 (;@13;) 25 (;@12;) 26 (;@11;) 27 (;@10;) 28 (;@9;) 29 (;@8;) 30 (;@7;) 31 (;@6;) 32 (;@5;) 33 (;@4;) 34 (;@3;) 35 (;@2;) 0 (;@37;)
                                                                            end
                                                                            local.get 1
                                                                            i32.const 2
                                                                            i32.store16 offset=14
                                                                            local.get 1
                                                                            i32.const 14
                                                                            i32.add
                                                                            local.set 0
                                                                            local.get 1
                                                                            i32.load16_u offset=14
                                                                            return
                                                                          end
                                                                          i32.const 7
                                                                          return
                                                                        end
                                                                        i32.const 8
                                                                        return
                                                                      end
                                                                      i32.const 10
                                                                      return
                                                                    end
                                                                    i32.const 16
                                                                    return
                                                                  end
                                                                  i32.const 19
                                                                  return
                                                                end
                                                                i32.const 20
                                                                return
                                                              end
                                                              i32.const 22
                                                              return
                                                            end
                                                            i32.const 25
                                                            return
                                                          end
                                                          i32.const 26
                                                          return
                                                        end
                                                        i32.const 27
                                                        return
                                                      end
                                                      i32.const 28
                                                      return
                                                    end
                                                    i32.const 29
                                                    return
                                                  end
                                                  i32.const 31
                                                  return
                                                end
                                                i32.const 32
                                                return
                                              end
                                              i32.const 34
                                              return
                                            end
                                            i32.const 35
                                            return
                                          end
                                          i32.const 37
                                          return
                                        end
                                        i32.const 43
                                        return
                                      end
                                      i32.const 44
                                      return
                                    end
                                    i32.const 46
                                    return
                                  end
                                  i32.const 48
                                  return
                                end
                                i32.const 51
                                return
                              end
                              i32.const 54
                              return
                            end
                            i32.const 55
                            return
                          end
                          i32.const 56
                          return
                        end
                        i32.const 58
                        return
                      end
                      i32.const 59
                      return
                    end
                    i32.const 60
                    return
                  end
                  i32.const 61
                  return
                end
                i32.const 63
                return
              end
              i32.const 64
              return
            end
            i32.const 69
            return
          end
          i32.const 70
          return
        end
        i32.const 74
        return
      end
      i32.const 75
      local.set 2
    end
    local.get 2
  )
  (func $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem5types10Descriptor8get_type17hc602b719bf4b6cb1E (;32;) (type 1) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load
    local.get 2
    i32.const 14
    i32.add
    call $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem5types10Descriptor8get_type10wit_import17h3aa6e85bc2f73396E
    i32.const 0
    local.set 3
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 2
          i32.load8_u offset=14
          br_table 1 (;@2;) 0 (;@3;) 2 (;@1;)
        end
        i32.const 1
        local.set 3
      end
      local.get 2
      i32.load8_u offset=15
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store8 offset=1
    local.get 0
    local.get 3
    i32.const 1
    i32.and
    i32.store8
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem5types10Descriptor4stat17h84f35b255161bdf8E (;33;) (type 1) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load
    local.get 2
    i32.const 8
    i32.add
    call $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem5types10Descriptor4stat10wit_import17h75b4c67b9de87a81E
    local.get 2
    i32.load8_u offset=16
    local.set 1
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.load8_u offset=8
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i32.load offset=104
        i32.store offset=88
        local.get 0
        local.get 2
        i64.load offset=96
        i64.store offset=80
        local.get 0
        local.get 2
        i32.load offset=80
        i32.store offset=64
        local.get 0
        local.get 2
        i64.load offset=72
        i64.store offset=56
        local.get 0
        local.get 2
        i32.load offset=56
        i32.store offset=40
        local.get 0
        local.get 2
        i64.load offset=48
        i64.store offset=32
        local.get 0
        local.get 2
        i64.load offset=32
        i64.store offset=16
        local.get 0
        local.get 2
        i64.load offset=24
        i64.store offset=8
        local.get 0
        local.get 1
        i32.store8
        local.get 0
        local.get 2
        i32.load8_u offset=88
        i32.const 0
        i32.ne
        i64.extend_i32_u
        i64.store offset=72
        local.get 0
        local.get 2
        i32.load8_u offset=64
        i32.const 0
        i32.ne
        i64.extend_i32_u
        i64.store offset=48
        local.get 0
        local.get 2
        i32.load8_u offset=40
        i32.const 0
        i32.ne
        i64.extend_i32_u
        i64.store offset=24
        br 1 (;@1;)
      end
      local.get 0
      i64.const 2
      i64.store offset=72
      local.get 0
      local.get 1
      i32.store8
    end
    local.get 2
    i32.const 112
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN22wasi_snapshot_preview15State17with_import_alloc17h0eac7c9f1205cd4aE (;34;) (type 6) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    i32.load offset=4
    local.set 4
    local.get 1
    local.get 2
    i64.load align=4
    i64.store offset=4 align=4
    local.get 1
    i32.const 12
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i64.load align=4
    i64.store align=4
    local.get 1
    i32.const 20
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i32.load
    i32.store
    block ;; label = @1
      local.get 4
      i32.const 4
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i64.const 0
      i64.store align=4
      local.get 3
      call $_ZN22wasi_snapshot_preview111descriptors31wasi_filesystem_get_directories17h7823d9b55299d1faE
      local.get 0
      local.get 3
      i64.load align=4
      i64.store align=4
      local.get 0
      i32.const 24
      i32.add
      local.get 1
      i32.const 4
      i32.add
      local.tee 1
      i32.const 16
      i32.add
      i32.load
      i32.store
      local.get 0
      i32.const 16
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store align=4
      local.get 0
      local.get 1
      i64.load align=4
      i64.store offset=8 align=4
      local.get 1
      i32.const 4
      i32.store
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 2884
    call $_ZN22wasi_snapshot_preview16macros18eprint_unreachable17h82bf8aece4f48e92E
    local.get 3
    i32.const 8250
    i32.store16 align=1
    local.get 3
    i32.const 2
    call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
    local.get 3
    i32.const 10
    i32.store8 offset=28
    local.get 3
    i32.const 1952805664
    i32.store offset=24 align=1
    local.get 3
    i64.const 8747223464599642400
    i64.store offset=16 align=1
    local.get 3
    i64.const 8245937404367563884
    i64.store offset=8 align=1
    local.get 3
    i64.const 6998721855778483561
    i64.store align=1
    local.get 3
    i32.const 29
    call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
    local.get 3
    i32.const 10
    i32.store8
    local.get 3
    i32.const 1
    call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
    unreachable
  )
  (func $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem5types10Descriptor17append_via_stream17ha30aec2ad95c3e2fE (;35;) (type 1) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 1
    i32.load
    local.get 2
    i32.const 8
    i32.add
    call $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem5types10Descriptor17append_via_stream10wit_import17h10cd2837ec6d8dc8E
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.load8_u offset=8
        local.tee 1
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i32.load offset=12
        i32.store offset=4
        br 1 (;@1;)
      end
      local.get 0
      local.get 2
      i32.load8_u offset=12
      i32.store8 offset=1
    end
    local.get 0
    local.get 1
    i32.store8
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams12OutputStream24blocking_write_and_flush17h4f9b86b3d19bf6d5E (;36;) (type 3) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 1
    i32.load
    local.get 2
    local.get 3
    local.get 4
    i32.const 4
    i32.add
    call $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams12OutputStream24blocking_write_and_flush10wit_import17h7085f0b5b70fc1afE
    block ;; label = @1
      block ;; label = @2
        local.get 4
        i32.load8_u offset=4
        br_if 0 (;@2;)
        local.get 0
        i32.const 2
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      i64.const 1
      local.get 4
      i64.load32_u offset=12
      i64.const 32
      i64.shl
      local.get 4
      i32.load8_u offset=8
      select
      i64.store align=4
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN22wasi_snapshot_preview121stream_error_to_errno17h501c563fc6b05a5bE (;37;) (type 5) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    local.get 1
    i32.const 14
    i32.add
    call $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem5types21filesystem_error_code10wit_import17h54686631fb2f3f8cE
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load8_u offset=14
        br_if 0 (;@2;)
        i32.const 29
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      i32.load8_u offset=15
      call $_ZN22wasi_snapshot_preview1152_$LT$impl$u20$core..convert..From$LT$wasi_snapshot_preview1..bindings..wasi..filesystem..types..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17h010e8c8d099928dfE
      local.set 2
    end
    block ;; label = @1
      local.get 0
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      call $_ZN128_$LT$wasi_snapshot_preview1..bindings..wasi..io..error..Error$u20$as$u20$wasi_snapshot_preview1..bindings.._rt..WasmResource$GT$4drop4drop17h126ca568d93f391eE
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
  )
  (func $_ZN4core3ptr68drop_in_place$LT$wasi_snapshot_preview1..descriptors..Descriptor$GT$17hb5a58b4b9b9ba851E (;38;) (type 0) (param i32)
    (local i32)
    block ;; label = @1
      local.get 0
      i32.load
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=12
        local.tee 1
        i32.const -1
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        call $_ZN136_$LT$wasi_snapshot_preview1..bindings..wasi..io..streams..InputStream$u20$as$u20$wasi_snapshot_preview1..bindings.._rt..WasmResource$GT$4drop4drop17h9c496c6205949cd0E
      end
      block ;; label = @2
        local.get 0
        i32.load offset=16
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=20
        local.tee 1
        i32.const -1
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        call $_ZN137_$LT$wasi_snapshot_preview1..bindings..wasi..io..streams..OutputStream$u20$as$u20$wasi_snapshot_preview1..bindings.._rt..WasmResource$GT$4drop4drop17h2cd95caae0c19702E
      end
      local.get 0
      i32.load8_u offset=41
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=24
      local.tee 0
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      call $_ZN141_$LT$wasi_snapshot_preview1..bindings..wasi..filesystem..types..Descriptor$u20$as$u20$wasi_snapshot_preview1..bindings.._rt..WasmResource$GT$4drop4drop17habd763d19a96734eE
    end
  )
  (func $fd_write (;39;) (type 8) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          call $get_allocation_state
          i32.const -2
          i32.add
          br_table 1 (;@2;) 0 (;@3;) 1 (;@2;) 0 (;@3;)
        end
        local.get 3
        i32.const 0
        i32.store
        i32.const 29
        local.set 1
        br 1 (;@1;)
      end
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    block ;; label = @9
                      local.get 2
                      i32.const 2
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 1
                      local.get 2
                      i32.const 3
                      i32.shl
                      i32.add
                      i32.const -8
                      i32.add
                      local.set 5
                      loop ;; label = @10
                        local.get 1
                        i32.load offset=4
                        local.tee 6
                        br_if 3 (;@7;)
                        local.get 1
                        i32.const 8
                        i32.add
                        local.set 1
                        local.get 2
                        i32.const -1
                        i32.add
                        local.tee 2
                        i32.const 1
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                      local.get 5
                      local.set 1
                      br 1 (;@8;)
                    end
                    local.get 2
                    i32.eqz
                    br_if 2 (;@6;)
                  end
                  local.get 1
                  i32.load offset=4
                  local.set 6
                end
                local.get 1
                i32.load
                local.set 7
                call $_ZN22wasi_snapshot_preview15State3ptr17h5c145dfdb9e77f14E
                local.tee 1
                i32.load
                i32.const 560490357
                i32.ne
                br_if 1 (;@5;)
                local.get 1
                i32.load offset=65532
                i32.const 560490357
                i32.ne
                br_if 2 (;@4;)
                local.get 4
                i32.const 8
                i32.add
                local.get 1
                call $_ZN22wasi_snapshot_preview15State11descriptors17hd17d22f965ea0069E
                i32.const 8
                local.set 1
                local.get 4
                i32.load offset=12
                local.set 2
                local.get 4
                i32.load offset=8
                local.tee 5
                i32.load16_u offset=6144
                local.get 0
                i32.le_u
                br_if 4 (;@2;)
                local.get 5
                local.get 0
                i32.const 48
                i32.mul
                i32.add
                local.tee 0
                i32.load
                i32.const 1
                i32.ne
                br_if 4 (;@2;)
                local.get 4
                i32.const 16
                i32.add
                local.get 0
                i32.const 8
                i32.add
                call $_ZN22wasi_snapshot_preview111descriptors7Streams16get_write_stream17h2da6b8b377c41a17E
                block ;; label = @7
                  local.get 4
                  i32.load16_u offset=16
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load offset=20
                  local.set 1
                  block ;; label = @8
                    local.get 0
                    i32.load8_u offset=41
                    local.tee 5
                    i32.const 2
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 4
                    i32.const 16
                    i32.add
                    local.get 5
                    i32.const 1
                    i32.and
                    local.get 1
                    local.get 7
                    local.get 6
                    call $_ZN22wasi_snapshot_preview112BlockingMode5write17h421ed9ec4188530cE
                    local.get 4
                    i32.load16_u offset=16
                    br_if 1 (;@7;)
                    br 5 (;@3;)
                  end
                  local.get 4
                  i32.const 16
                  i32.add
                  i32.const 1
                  local.get 1
                  local.get 7
                  local.get 6
                  call $_ZN22wasi_snapshot_preview112BlockingMode5write17h421ed9ec4188530cE
                  local.get 4
                  i32.load16_u offset=16
                  i32.eqz
                  br_if 4 (;@3;)
                end
                local.get 4
                i32.load16_u offset=18
                local.set 1
                br 4 (;@2;)
              end
              i32.const 0
              local.set 1
              local.get 3
              i32.const 0
              i32.store
              br 4 (;@1;)
            end
            i32.const 2745
            call $_ZN22wasi_snapshot_preview16macros11assert_fail17h67fe26dc6b70f78bE
            unreachable
          end
          i32.const 2746
          call $_ZN22wasi_snapshot_preview16macros11assert_fail17h67fe26dc6b70f78bE
          unreachable
        end
        local.get 4
        i32.load offset=20
        local.set 1
        block ;; label = @3
          local.get 0
          i32.load8_u offset=41
          i32.const 2
          i32.eq
          br_if 0 (;@3;)
          block ;; label = @4
            local.get 0
            i32.load8_u offset=40
            br_if 0 (;@4;)
            local.get 0
            local.get 0
            i64.load offset=32
            local.get 1
            i64.extend_i32_u
            i64.add
            i64.store offset=32
            br 1 (;@3;)
          end
          local.get 4
          i32.const 16
          i32.add
          local.get 0
          i32.const 24
          i32.add
          call $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem5types10Descriptor4stat17h84f35b255161bdf8E
          block ;; label = @4
            local.get 4
            i64.load offset=88
            i64.const 2
            i64.eq
            br_if 0 (;@4;)
            local.get 0
            local.get 4
            i64.load offset=32
            i64.store offset=32
            br 1 (;@3;)
          end
          local.get 4
          i32.load8_u offset=16
          call $_ZN22wasi_snapshot_preview1152_$LT$impl$u20$core..convert..From$LT$wasi_snapshot_preview1..bindings..wasi..filesystem..types..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17h010e8c8d099928dfE
          local.set 1
          br 1 (;@2;)
        end
        local.get 3
        local.get 1
        i32.store
        i32.const 0
        local.set 1
      end
      local.get 2
      local.get 2
      i32.load
      i32.const 1
      i32.add
      i32.store
    end
    local.get 4
    i32.const 112
    i32.add
    global.set $__stack_pointer
    local.get 1
    i32.const 65535
    i32.and
  )
  (func $_ZN22wasi_snapshot_preview111descriptors7Streams16get_write_stream17h2da6b8b377c41a17E (;40;) (type 1) (param i32 i32)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.const 12
    i32.add
    local.set 3
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.load offset=8
          br_if 0 (;@3;)
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 1
                  i32.load8_u offset=33
                  i32.const 2
                  i32.eq
                  br_if 0 (;@7;)
                  block ;; label = @8
                    local.get 1
                    i32.load8_u offset=20
                    i32.const 3
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 8
                    i32.store16 offset=2
                    br 3 (;@5;)
                  end
                  block ;; label = @8
                    local.get 1
                    i32.load8_u offset=32
                    br_if 0 (;@8;)
                    local.get 1
                    i64.load offset=24
                    local.set 4
                    local.get 2
                    i64.const 0
                    i64.store offset=8
                    local.get 1
                    i32.load offset=16
                    local.get 4
                    local.get 2
                    i32.const 8
                    i32.add
                    call $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem5types10Descriptor16write_via_stream10wit_import17ha64804783e599ccbE
                    local.get 2
                    i32.load8_u offset=8
                    br_if 2 (;@6;)
                    br 4 (;@4;)
                  end
                  local.get 2
                  i32.const 8
                  i32.add
                  local.get 1
                  i32.const 16
                  i32.add
                  call $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem5types10Descriptor17append_via_stream17ha30aec2ad95c3e2fE
                  local.get 2
                  i32.load8_u offset=8
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 0
                  local.get 2
                  i32.load8_u offset=9
                  call $_ZN22wasi_snapshot_preview1152_$LT$impl$u20$core..convert..From$LT$wasi_snapshot_preview1..bindings..wasi..filesystem..types..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17h010e8c8d099928dfE
                  i32.store16 offset=2
                  br 2 (;@5;)
                end
                local.get 0
                i32.const 8
                i32.store16 offset=2
                br 1 (;@5;)
              end
              local.get 0
              local.get 2
              i32.load8_u offset=12
              call $_ZN22wasi_snapshot_preview1152_$LT$impl$u20$core..convert..From$LT$wasi_snapshot_preview1..bindings..wasi..filesystem..types..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17h010e8c8d099928dfE
              i32.store16 offset=2
            end
            i32.const 1
            local.set 1
            br 2 (;@2;)
          end
          local.get 2
          i32.load offset=12
          local.set 5
          local.get 1
          i32.load offset=8
          local.tee 6
          br_if 2 (;@1;)
          block ;; label = @4
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.load
            local.tee 6
            i32.const -1
            i32.eq
            br_if 0 (;@4;)
            local.get 6
            call $_ZN137_$LT$wasi_snapshot_preview1..bindings..wasi..io..streams..OutputStream$u20$as$u20$wasi_snapshot_preview1..bindings.._rt..WasmResource$GT$4drop4drop17h2cd95caae0c19702E
          end
          local.get 1
          local.get 5
          i32.store offset=12
          local.get 1
          i32.const 1
          i32.store offset=8
        end
        local.get 0
        local.get 3
        i32.store offset=4
        i32.const 0
        local.set 1
      end
      local.get 0
      local.get 1
      i32.store16
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 159
    call $_ZN22wasi_snapshot_preview16macros11unreachable17h9782a153de5c5504E
    unreachable
  )
  (func $_ZN22wasi_snapshot_preview112BlockingMode5write17h421ed9ec4188530cE (;41;) (type 4) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.set 1
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              loop ;; label = @6
                local.get 5
                local.get 2
                local.get 3
                local.get 1
                i32.const 4096
                local.get 1
                i32.const 4096
                i32.lt_u
                select
                local.tee 6
                call $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams12OutputStream24blocking_write_and_flush17h4f9b86b3d19bf6d5E
                block ;; label = @7
                  local.get 5
                  i32.load
                  local.tee 7
                  i32.const 2
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 7
                  br_table 2 (;@5;) 3 (;@4;) 2 (;@5;)
                end
                local.get 3
                local.get 6
                i32.add
                local.set 3
                local.get 1
                local.get 6
                i32.sub
                local.tee 1
                br_if 0 (;@6;)
              end
              local.get 0
              i32.const 0
              i32.store16
              local.get 0
              local.get 4
              i32.store offset=4
              br 4 (;@1;)
            end
            local.get 5
            i32.load offset=4
            call $_ZN22wasi_snapshot_preview121stream_error_to_errno17h501c563fc6b05a5bE
            local.set 1
            br 1 (;@3;)
          end
          i32.const 29
          local.set 1
        end
        local.get 0
        i32.const 1
        i32.store16
        local.get 0
        local.get 1
        i32.store16 offset=2
        br 1 (;@1;)
      end
      local.get 2
      i32.load
      local.get 5
      call $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams12OutputStream11check_write10wit_import17h48f6848a32963615E
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    local.get 5
                    i32.load8_u
                    br_if 0 (;@8;)
                    local.get 5
                    i32.load offset=8
                    local.set 1
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.set 1
                  i64.const 1
                  local.get 5
                  i64.load32_u offset=12
                  i64.const 32
                  i64.shl
                  local.get 5
                  i32.load8_u offset=8
                  select
                  local.tee 8
                  i32.wrap_i64
                  i32.const 1
                  i32.ne
                  br_if 1 (;@6;)
                end
                local.get 2
                i32.load
                local.get 3
                local.get 4
                local.get 1
                local.get 4
                local.get 1
                i32.lt_u
                select
                local.tee 1
                local.get 5
                call $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams12OutputStream5write10wit_import17h23ca25d4e87a3335E
                local.get 5
                i32.load8_u
                br_if 2 (;@4;)
                local.get 2
                i32.load
                local.get 5
                call $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams12OutputStream14blocking_flush10wit_import17headb7523631a87ccE
                local.get 5
                i32.load8_u
                br_if 1 (;@5;)
                local.get 0
                i32.const 0
                i32.store16
                local.get 0
                local.get 1
                i32.store offset=4
                br 5 (;@1;)
              end
              local.get 8
              i64.const 32
              i64.shr_u
              i32.wrap_i64
              call $_ZN22wasi_snapshot_preview121stream_error_to_errno17h501c563fc6b05a5bE
              local.set 1
              local.get 0
              i32.const 1
              i32.store16
              local.get 0
              local.get 1
              i32.store16 offset=2
              br 4 (;@1;)
            end
            i64.const 1
            local.get 5
            i64.load32_u offset=8
            i64.const 32
            i64.shl
            local.get 5
            i32.load8_u offset=4
            select
            local.tee 8
            i64.const 1
            i64.and
            i64.eqz
            br_if 1 (;@3;)
            i32.const 0
            local.set 1
            local.get 0
            i32.const 0
            i32.store offset=4
            br 2 (;@2;)
          end
          block ;; label = @4
            block ;; label = @5
              i64.const 1
              local.get 5
              i64.load32_u offset=8
              i64.const 32
              i64.shl
              local.get 5
              i32.load8_u offset=4
              select
              local.tee 8
              i64.const 1
              i64.and
              i64.eqz
              br_if 0 (;@5;)
              i32.const 0
              local.set 1
              local.get 0
              i32.const 0
              i32.store offset=4
              br 1 (;@4;)
            end
            local.get 0
            local.get 8
            i64.const 32
            i64.shr_u
            i32.wrap_i64
            call $_ZN22wasi_snapshot_preview121stream_error_to_errno17h501c563fc6b05a5bE
            i32.store16 offset=2
            i32.const 1
            local.set 1
          end
          local.get 0
          local.get 1
          i32.store16
          br 2 (;@1;)
        end
        local.get 0
        local.get 8
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        call $_ZN22wasi_snapshot_preview121stream_error_to_errno17h501c563fc6b05a5bE
        i32.store16 offset=2
        i32.const 1
        local.set 1
      end
      local.get 0
      local.get 1
      i32.store16
    end
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $proc_exit (;42;) (type 0) (param i32)
    (local i32)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.const 0
    i32.ne
    call $_ZN22wasi_snapshot_preview18bindings4wasi3cli4exit4exit17h42b9b79e1fb05b02E
    i32.const 2280
    call $_ZN22wasi_snapshot_preview16macros18eprint_unreachable17h82bf8aece4f48e92E
    local.get 1
    i32.const 8250
    i32.store16 offset=10 align=1
    local.get 1
    i32.const 10
    i32.add
    i32.const 2
    call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
    local.get 1
    i32.const 2593
    i32.store16 offset=46 align=1
    local.get 1
    i32.const 1953069157
    i32.store offset=42 align=1
    local.get 1
    i64.const 2338537461596644384
    i64.store offset=34 align=1
    local.get 1
    i64.const 7957695015159098981
    i64.store offset=26 align=1
    local.get 1
    i64.const 7882825952909664372
    i64.store offset=18 align=1
    local.get 1
    i64.const 7599935561254793064
    i64.store offset=10 align=1
    local.get 1
    i32.const 10
    i32.add
    i32.const 38
    call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
    local.get 1
    i32.const 10
    i32.store8 offset=10
    local.get 1
    i32.const 10
    i32.add
    i32.const 1
    call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
    unreachable
  )
  (func $_ZN22wasi_snapshot_preview18bindings4wasi3cli4exit4exit17h42b9b79e1fb05b02E (;43;) (type 0) (param i32)
    local.get 0
    call $_ZN22wasi_snapshot_preview18bindings4wasi3cli4exit4exit10wit_import17hce5b4e4b2c207012E
  )
  (func $random_get (;44;) (type 11) (param i32 i32) (result i32)
    (local i32 i32 i32)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                call $get_allocation_state
                i32.const -2
                i32.add
                br_table 0 (;@6;) 1 (;@5;) 0 (;@6;) 1 (;@5;)
              end
              call $_ZN22wasi_snapshot_preview15State3ptr17h5c145dfdb9e77f14E
              local.tee 3
              i32.load
              i32.const 560490357
              i32.ne
              br_if 1 (;@4;)
              local.get 3
              i32.load offset=65532
              i32.const 560490357
              i32.ne
              br_if 2 (;@3;)
              local.get 3
              local.get 1
              i32.store offset=12
              local.get 3
              local.get 0
              i32.store offset=8
              local.get 3
              i32.load offset=4
              local.set 4
              local.get 3
              i32.const 0
              i32.store offset=4
              local.get 4
              i32.const 4
              i32.ne
              br_if 3 (;@2;)
              local.get 2
              i64.const 0
              i64.store
              local.get 1
              i64.extend_i32_u
              local.get 2
              call $_ZN22wasi_snapshot_preview18bindings4wasi6random6random16get_random_bytes10wit_import17h3514f42888b428a9E
              local.get 2
              i32.load
              local.set 1
              local.get 3
              i32.const 4
              i32.store offset=4
              local.get 1
              local.get 0
              i32.ne
              br_if 4 (;@1;)
            end
            local.get 2
            i32.const 32
            i32.add
            global.set $__stack_pointer
            i32.const 0
            return
          end
          i32.const 2745
          call $_ZN22wasi_snapshot_preview16macros11assert_fail17h67fe26dc6b70f78bE
          unreachable
        end
        i32.const 2746
        call $_ZN22wasi_snapshot_preview16macros11assert_fail17h67fe26dc6b70f78bE
        unreachable
      end
      i32.const 2884
      call $_ZN22wasi_snapshot_preview16macros18eprint_unreachable17h82bf8aece4f48e92E
      local.get 2
      i32.const 8250
      i32.store16 align=1
      local.get 2
      i32.const 2
      call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
      local.get 2
      i32.const 10
      i32.store8 offset=28
      local.get 2
      i32.const 1952805664
      i32.store offset=24 align=1
      local.get 2
      i64.const 8747223464599642400
      i64.store offset=16 align=1
      local.get 2
      i64.const 8245937404367563884
      i64.store offset=8 align=1
      local.get 2
      i64.const 6998721855778483561
      i64.store align=1
      local.get 2
      i32.const 29
      call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
      local.get 2
      i32.const 10
      i32.store8
      local.get 2
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
      unreachable
    end
    i32.const 2316
    call $_ZN22wasi_snapshot_preview16macros11assert_fail17h67fe26dc6b70f78bE
    unreachable
  )
  (func $_ZN22wasi_snapshot_preview15State3new17h37d6e1e49faf9882E (;45;) (type 9) (result i32)
    (local i32)
    block ;; label = @1
      call $get_allocation_state
      i32.const 2
      i32.ne
      br_if 0 (;@1;)
      i32.const 3
      call $set_allocation_state
      i32.const 0
      i32.const 0
      i32.const 8
      i32.const 65536
      call $_ZN22wasi_snapshot_preview15State3new12cabi_realloc17h9e5c107fb796f9b5E
      local.set 0
      i32.const 4
      call $set_allocation_state
      local.get 0
      i32.const 2
      i32.store offset=6180
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      i64.const 17740359541
      i64.store
      local.get 0
      i32.const 65480
      i32.add
      i32.const 0
      i32.const 37
      call $memset
      drop
      local.get 0
      i32.const 560490357
      i32.store offset=65532
      local.get 0
      i32.const 11822
      i32.store16 offset=65528
      local.get 0
      i32.const 0
      i32.store offset=65520
      local.get 0
      return
    end
    i32.const 2777
    call $_ZN22wasi_snapshot_preview16macros11assert_fail17h67fe26dc6b70f78bE
    unreachable
  )
  (func $_ZN22wasi_snapshot_preview111descriptors11Descriptors3new17ha3aa5a1842636204E (;46;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 6256
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 0
    local.set 3
    local.get 2
    i32.const 0
    i32.store offset=6156
    call $_ZN22wasi_snapshot_preview18bindings4wasi3cli5stdin9get_stdin10wit_import17h4fb7768023d1a4fcE
    local.set 4
    local.get 2
    i32.const 2
    i32.store8 offset=49
    local.get 2
    i32.const 0
    i32.store8 offset=32
    local.get 2
    i64.const 0
    i64.store offset=24
    local.get 2
    i32.const 1
    i32.store offset=8
    local.get 2
    local.get 4
    i64.extend_i32_u
    i64.const 32
    i64.shl
    i64.const 1
    i64.or
    i64.store offset=16
    call $_ZN22wasi_snapshot_preview18bindings4wasi3cli6stdout10get_stdout10wit_import17h490a886c306f7fdfE
    local.set 4
    local.get 2
    i32.const 2
    i32.store8 offset=97
    local.get 2
    i32.const 1
    i32.store8 offset=80
    local.get 2
    i64.const 0
    i64.store offset=64
    local.get 2
    i32.const 1
    i32.store offset=56
    local.get 2
    local.get 4
    i64.extend_i32_u
    i64.const 32
    i64.shl
    i64.const 1
    i64.or
    i64.store offset=72
    call $_ZN22wasi_snapshot_preview18bindings4wasi3cli6stderr10get_stderr10wit_import17h851f46f641e7fe80E
    local.set 4
    local.get 2
    i32.const 3
    i32.store16 offset=6152
    local.get 2
    i32.const 2
    i32.store8 offset=145
    local.get 2
    i32.const 2
    i32.store8 offset=128
    local.get 2
    i64.const 0
    i64.store offset=112
    local.get 2
    i32.const 1
    i32.store offset=104
    local.get 2
    local.get 4
    i64.extend_i32_u
    i64.const 32
    i64.shl
    i64.const 1
    i64.or
    i64.store offset=120
    local.get 2
    i32.const 59032
    i32.store offset=6184
    local.get 2
    local.get 1
    i32.const 6192
    i32.add
    i32.store offset=6180
    local.get 2
    i64.const 1
    i64.store offset=6172 align=4
    local.get 2
    i32.const 6208
    i32.add
    local.get 1
    local.get 2
    i32.const 6172
    i32.add
    call $_ZN22wasi_snapshot_preview15State17with_import_alloc17h0eac7c9f1205cd4aE
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 2
          i32.load offset=6212
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=6208
          local.set 1
          local.get 2
          i32.const 152
          i32.add
          local.set 6
          local.get 2
          i32.const 6208
          i32.add
          i32.const 8
          i32.add
          local.set 4
          loop ;; label = @4
            local.get 2
            i32.const 6192
            i32.add
            i32.const 8
            i32.add
            local.get 1
            i32.const 8
            i32.add
            i32.load
            i32.store
            local.get 2
            local.get 1
            i64.load align=4
            i64.store offset=6192
            local.get 2
            local.get 2
            i32.const 6192
            i32.add
            call $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem5types10Descriptor8get_type17hc602b719bf4b6cb1E
            local.get 2
            i32.load8_u
            br_if 2 (;@2;)
            local.get 2
            i32.load8_u offset=1
            local.set 7
            local.get 4
            i64.const 0
            i64.store
            local.get 4
            i32.const 8
            i32.add
            i64.const 0
            i64.store
            local.get 2
            local.get 2
            i32.load offset=6200
            i32.store offset=6252
            local.get 2
            i32.const 256
            i32.store16 offset=6248
            local.get 2
            i64.const 0
            i64.store offset=6240
            local.get 2
            local.get 2
            i32.load offset=6192
            i32.store offset=6232
            local.get 2
            i32.const 1
            i32.store offset=6208
            local.get 2
            local.get 7
            i32.store8 offset=6236
            local.get 3
            i32.const 125
            i32.eq
            br_if 3 (;@1;)
            local.get 6
            local.get 2
            i32.const 6208
            i32.add
            i32.const 48
            call $memcpy
            local.set 6
            local.get 2
            local.get 3
            i32.const 4
            i32.add
            i32.store16 offset=6152
            local.get 1
            i32.const 12
            i32.add
            local.set 1
            local.get 6
            i32.const 48
            i32.add
            local.set 6
            local.get 3
            i32.const 1
            i32.add
            local.tee 7
            local.set 3
            local.get 5
            local.get 7
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 0
        local.get 2
        i32.const 8
        i32.add
        i32.const 6160
        call $memcpy
        drop
        local.get 2
        i32.const 6256
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 159
      call $_ZN22wasi_snapshot_preview16macros11unreachable17h9782a153de5c5504E
      unreachable
    end
    local.get 2
    i32.const 6208
    i32.add
    call $_ZN4core3ptr68drop_in_place$LT$wasi_snapshot_preview1..descriptors..Descriptor$GT$17hb5a58b4b9b9ba851E
    i32.const 159
    call $_ZN22wasi_snapshot_preview16macros11unreachable17h9782a153de5c5504E
    unreachable
  )
  (func $_ZN22wasi_snapshot_preview16macros10eprint_u3215eprint_u32_impl17h3d321cc495af037eE (;47;) (type 0) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 10
      i32.div_u
      local.tee 2
      call $_ZN22wasi_snapshot_preview16macros10eprint_u3215eprint_u32_impl17h3d321cc495af037eE
      local.get 1
      local.get 2
      i32.const 246
      i32.mul
      local.get 0
      i32.add
      i32.const 48
      i32.or
      i32.store8 offset=15
      local.get 1
      i32.const 15
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h319e9b3e6f2e5d09E
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN22wasi_snapshot_preview16macros10eprint_u3217haa4cafbda91ed390E (;48;) (type 0) (param i32)
    local.get 0
    call $_ZN22wasi_snapshot_preview16macros10eprint_u3215eprint_u32_impl17h3d321cc495af037eE
  )
  (func $get_state_ptr (;49;) (type 9) (result i32)
    global.get $internal_state_ptr
  )
  (func $set_state_ptr (;50;) (type 0) (param i32)
    local.get 0
    global.set $internal_state_ptr
  )
  (func $get_allocation_state (;51;) (type 9) (result i32)
    global.get $allocation_state
  )
  (func $set_allocation_state (;52;) (type 0) (param i32)
    local.get 0
    global.set $allocation_state
  )
  (func $memset (;53;) (type 10) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.const 16
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.set 5
      block ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        loop ;; label = @3
          local.get 3
          local.get 1
          i32.store8
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 5
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 2
      local.get 4
      i32.sub
      local.tee 4
      i32.const -4
      i32.and
      local.tee 2
      i32.add
      local.set 3
      block ;; label = @2
        local.get 2
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        local.get 1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.set 2
        loop ;; label = @3
          local.get 5
          local.get 2
          i32.store
          local.get 5
          i32.const 4
          i32.add
          local.tee 5
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 4
      i32.const 3
      i32.and
      local.set 2
    end
    block ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      i32.add
      local.set 5
      loop ;; label = @2
        local.get 3
        local.get 1
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 5
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0
  )
  (func $memcpy (;54;) (type 10) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.const 16
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.set 5
      block ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        local.get 1
        local.set 6
        loop ;; label = @3
          local.get 3
          local.get 6
          i32.load8_u
          i32.store8
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 5
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 2
      local.get 4
      i32.sub
      local.tee 7
      i32.const -4
      i32.and
      local.tee 8
      i32.add
      local.set 3
      block ;; label = @2
        block ;; label = @3
          local.get 1
          local.get 4
          i32.add
          local.tee 9
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.const 1
          i32.lt_s
          br_if 1 (;@2;)
          local.get 9
          i32.const 3
          i32.shl
          local.tee 6
          i32.const 24
          i32.and
          local.set 2
          local.get 9
          i32.const -4
          i32.and
          local.tee 10
          i32.const 4
          i32.add
          local.set 1
          i32.const 0
          local.get 6
          i32.sub
          i32.const 24
          i32.and
          local.set 4
          local.get 10
          i32.load
          local.set 6
          loop ;; label = @4
            local.get 5
            local.get 6
            local.get 2
            i32.shr_u
            local.get 1
            i32.load
            local.tee 6
            local.get 4
            i32.shl
            i32.or
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 8
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        local.get 9
        local.set 1
        loop ;; label = @3
          local.get 5
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 5
          i32.const 4
          i32.add
          local.tee 5
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 7
      i32.const 3
      i32.and
      local.set 2
      local.get 9
      local.get 8
      i32.add
      local.set 1
    end
    block ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      i32.add
      local.set 5
      loop ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 5
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0
  )
  (func $allocate_stack (;55;) (type 12)
    global.get $allocation_state
    i32.const 0
    i32.eq
    if ;; label = @1
      i32.const 1
      global.set $allocation_state
      i32.const 0
      i32.const 0
      i32.const 8
      i32.const 65536
      call $_ZN22wasi_snapshot_preview15State3new12cabi_realloc17h9e5c107fb796f9b5E
      i32.const 65536
      i32.add
      global.set $__stack_pointer
      i32.const 2
      global.set $allocation_state
    end
  )
  (global $__stack_pointer (;0;) (mut i32) i32.const 0)
  (global $internal_state_ptr (;1;) (mut i32) i32.const 0)
  (global $allocation_state (;2;) (mut i32) i32.const 0)
  (export "environ_get" (func $environ_get))
  (export "environ_sizes_get" (func $environ_sizes_get))
  (export "fd_write" (func $fd_write))
  (export "cabi_import_realloc" (func $cabi_import_realloc))
  (export "random_get" (func $random_get))
  (export "proc_exit" (func $proc_exit))
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.83.0 (90b35a623 2024-11-26)")
  )
)
