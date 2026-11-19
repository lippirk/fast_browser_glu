(module $forward.wasm
  (type (;0;) (func (param i32 i32 i32 i32 i32)))
  (func $forward_batch (type 0) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 v128 v128 v128 v128 v128 v128 v128 v128 v128 v128 v128 v128 v128 v128 v128 v128 i32 i32 i32 v128 v128 v128 v128 v128 v128 v128 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 i32 i32 i32 v128)
    block  ;; label = @1
      local.get 3
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 4
      i32.const 2
      i32.shl
      local.set 5
      local.get 0
      i32.const 72
      i32.add
      local.set 6
      i32.const 0
      local.set 7
      i32.const 4
      local.set 8
      i32.const 8
      local.set 9
      i32.const 12
      local.set 10
      i32.const 0
      local.set 11
      local.get 3
      local.set 12
      i32.const 0
      local.set 13
      loop  ;; label = @2
        local.get 0
        i32.load
        local.set 14
        local.get 0
        i32.load offset=28
        local.set 15
        local.get 0
        i32.load offset=24
        local.set 16
        local.get 0
        i32.load offset=48
        local.set 17
        local.get 0
        i32.load offset=8
        local.set 18
        local.get 0
        i32.load offset=4
        local.set 19
        i32.const 0
        local.set 20
        block  ;; label = @3
          local.get 3
          local.get 13
          i32.sub
          local.tee 21
          local.get 4
          local.get 21
          local.get 4
          i32.lt_s
          select
          local.tee 22
          i32.const 4
          i32.lt_s
          local.tee 23
          br_if 0 (;@3;)
          local.get 14
          i32.const 2
          i32.shl
          local.set 24
          i32.const 4
          local.set 21
          local.get 14
          i32.const 4
          i32.shl
          local.set 25
          local.get 19
          i32.const 4
          i32.shl
          local.set 26
          local.get 14
          i32.const 6
          i32.shl
          local.set 27
          local.get 1
          local.get 14
          local.get 7
          i32.mul
          i32.add
          local.set 28
          local.get 1
          local.get 14
          local.get 8
          i32.mul
          i32.add
          local.set 29
          local.get 1
          local.get 14
          local.get 9
          i32.mul
          i32.add
          local.set 30
          local.get 1
          local.get 14
          local.get 10
          i32.mul
          i32.add
          local.set 31
          local.get 22
          i32.const -4
          i32.add
          i32.const 2
          i32.shr_u
          local.set 32
          local.get 19
          i32.const -16
          i32.add
          local.tee 33
          i32.const 4
          i32.shr_u
          local.set 34
          local.get 33
          i32.const -16
          i32.and
          i32.const 16
          i32.add
          local.set 35
          i32.const 0
          local.set 33
          local.get 17
          local.set 36
          local.get 17
          local.get 19
          i32.const 2
          i32.shl
          local.tee 37
          i32.add
          local.tee 38
          local.set 39
          local.get 17
          local.get 19
          i32.const 3
          i32.shl
          local.tee 40
          i32.add
          local.tee 41
          local.set 42
          local.get 17
          local.get 19
          i32.const 12
          i32.mul
          local.tee 43
          i32.add
          local.tee 44
          local.set 45
          i32.const 0
          local.set 20
          loop  ;; label = @4
            local.get 20
            local.set 46
            local.get 21
            local.set 20
            local.get 33
            local.set 47
            i32.const 0
            local.set 48
            block  ;; label = @5
              local.get 19
              i32.const 16
              i32.lt_s
              br_if 0 (;@5;)
              local.get 26
              local.get 47
              i32.mul
              local.set 49
              i32.const 0
              local.set 50
              local.get 16
              local.set 51
              loop  ;; label = @6
                local.get 50
                i32.const 6
                i32.shl
                local.tee 21
                local.get 49
                i32.add
                local.set 52
                local.get 15
                local.get 21
                i32.add
                local.tee 21
                v128.load align=1
                local.tee 53
                local.set 54
                local.get 21
                v128.load offset=16 align=1
                local.tee 55
                local.set 56
                local.get 21
                v128.load offset=32 align=1
                local.tee 57
                local.set 58
                local.get 21
                v128.load offset=48 align=1
                local.tee 59
                local.set 60
                local.get 53
                local.set 61
                local.get 55
                local.set 62
                local.get 57
                local.set 63
                local.get 59
                local.set 64
                local.get 53
                local.set 65
                local.get 55
                local.set 66
                local.get 57
                local.set 67
                local.get 59
                local.set 68
                local.get 51
                local.set 21
                local.get 28
                local.set 33
                local.get 29
                local.set 69
                local.get 30
                local.set 48
                local.get 31
                local.set 70
                local.get 14
                local.set 71
                block  ;; label = @7
                  local.get 14
                  i32.const 1
                  i32.lt_s
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    local.get 21
                    v128.load align=1
                    local.tee 72
                    local.get 70
                    v128.load32_splat align=1
                    local.tee 73
                    local.get 65
                    f32x4.relaxed_madd
                    local.set 65
                    local.get 72
                    local.get 48
                    v128.load32_splat align=1
                    local.tee 74
                    local.get 61
                    f32x4.relaxed_madd
                    local.set 61
                    local.get 72
                    local.get 69
                    v128.load32_splat align=1
                    local.tee 75
                    local.get 54
                    f32x4.relaxed_madd
                    local.set 54
                    local.get 72
                    local.get 33
                    v128.load32_splat align=1
                    local.tee 76
                    local.get 53
                    f32x4.relaxed_madd
                    local.set 53
                    local.get 21
                    i32.const 48
                    i32.add
                    v128.load align=1
                    local.tee 72
                    local.get 73
                    local.get 68
                    f32x4.relaxed_madd
                    local.set 68
                    local.get 21
                    i32.const 32
                    i32.add
                    v128.load align=1
                    local.tee 77
                    local.get 73
                    local.get 67
                    f32x4.relaxed_madd
                    local.set 67
                    local.get 21
                    i32.const 16
                    i32.add
                    v128.load align=1
                    local.tee 78
                    local.get 73
                    local.get 66
                    f32x4.relaxed_madd
                    local.set 66
                    local.get 72
                    local.get 74
                    local.get 64
                    f32x4.relaxed_madd
                    local.set 64
                    local.get 77
                    local.get 74
                    local.get 63
                    f32x4.relaxed_madd
                    local.set 63
                    local.get 78
                    local.get 74
                    local.get 62
                    f32x4.relaxed_madd
                    local.set 62
                    local.get 72
                    local.get 75
                    local.get 60
                    f32x4.relaxed_madd
                    local.set 60
                    local.get 77
                    local.get 75
                    local.get 58
                    f32x4.relaxed_madd
                    local.set 58
                    local.get 78
                    local.get 75
                    local.get 56
                    f32x4.relaxed_madd
                    local.set 56
                    local.get 72
                    local.get 76
                    local.get 59
                    f32x4.relaxed_madd
                    local.set 59
                    local.get 77
                    local.get 76
                    local.get 57
                    f32x4.relaxed_madd
                    local.set 57
                    local.get 78
                    local.get 76
                    local.get 55
                    f32x4.relaxed_madd
                    local.set 55
                    local.get 21
                    i32.const 64
                    i32.add
                    local.set 21
                    local.get 33
                    i32.const 4
                    i32.add
                    local.set 33
                    local.get 69
                    i32.const 4
                    i32.add
                    local.set 69
                    local.get 48
                    i32.const 4
                    i32.add
                    local.set 48
                    local.get 70
                    i32.const 4
                    i32.add
                    local.set 70
                    local.get 71
                    i32.const -1
                    i32.add
                    local.tee 71
                    br_if 0 (;@8;)
                  end
                end
                local.get 17
                local.get 52
                i32.add
                local.tee 21
                local.get 59
                v128.store offset=48 align=1
                local.get 21
                local.get 57
                v128.store offset=32 align=1
                local.get 21
                local.get 55
                v128.store offset=16 align=1
                local.get 21
                local.get 53
                v128.store align=1
                local.get 38
                local.get 52
                i32.add
                local.tee 21
                local.get 60
                v128.store offset=48 align=1
                local.get 21
                local.get 58
                v128.store offset=32 align=1
                local.get 21
                local.get 56
                v128.store offset=16 align=1
                local.get 21
                local.get 54
                v128.store align=1
                local.get 41
                local.get 52
                i32.add
                local.tee 21
                local.get 64
                v128.store offset=48 align=1
                local.get 21
                local.get 63
                v128.store offset=32 align=1
                local.get 21
                local.get 62
                v128.store offset=16 align=1
                local.get 21
                local.get 61
                v128.store align=1
                local.get 44
                local.get 52
                i32.add
                local.tee 21
                local.get 68
                v128.store offset=48 align=1
                local.get 21
                local.get 67
                v128.store offset=32 align=1
                local.get 21
                local.get 66
                v128.store offset=16 align=1
                local.get 21
                local.get 65
                v128.store align=1
                local.get 51
                local.get 27
                i32.add
                local.set 51
                local.get 50
                local.get 34
                i32.eq
                local.set 21
                local.get 50
                i32.const 1
                i32.add
                local.set 50
                local.get 21
                i32.eqz
                br_if 0 (;@6;)
              end
              local.get 35
              local.set 48
            end
            block  ;; label = @5
              local.get 48
              local.get 19
              i32.ge_s
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 14
                i32.const 0
                i32.gt_s
                br_if 0 (;@6;)
                local.get 48
                i32.const 2
                i32.shl
                local.set 21
                local.get 15
                local.set 33
                local.get 36
                local.set 69
                local.get 39
                local.set 70
                local.get 42
                local.set 71
                local.get 45
                local.set 52
                loop  ;; label = @7
                  local.get 69
                  local.get 21
                  i32.add
                  local.get 33
                  local.get 21
                  i32.add
                  v128.load align=1
                  local.tee 72
                  v128.store align=1
                  local.get 70
                  local.get 21
                  i32.add
                  local.get 72
                  v128.store align=1
                  local.get 71
                  local.get 21
                  i32.add
                  local.get 72
                  v128.store align=1
                  local.get 52
                  local.get 21
                  i32.add
                  local.get 72
                  v128.store align=1
                  local.get 33
                  i32.const 16
                  i32.add
                  local.set 33
                  local.get 69
                  i32.const 16
                  i32.add
                  local.set 69
                  local.get 70
                  i32.const 16
                  i32.add
                  local.set 70
                  local.get 71
                  i32.const 16
                  i32.add
                  local.set 71
                  local.get 52
                  i32.const 16
                  i32.add
                  local.set 52
                  local.get 48
                  i32.const 4
                  i32.add
                  local.tee 48
                  local.get 19
                  i32.lt_s
                  br_if 0 (;@7;)
                  br 2 (;@5;)
                end
              end
              local.get 17
              local.get 46
              local.get 19
              i32.mul
              i32.const 2
              i32.shl
              i32.add
              local.set 52
              local.get 16
              local.get 24
              local.get 48
              i32.mul
              i32.add
              local.set 70
              loop  ;; label = @6
                i32.const 0
                local.set 21
                local.get 70
                local.set 33
                local.get 14
                local.set 69
                local.get 15
                local.get 48
                i32.const 2
                i32.shl
                local.tee 71
                i32.add
                v128.load align=1
                local.tee 73
                local.set 74
                local.get 73
                local.set 75
                local.get 73
                local.set 76
                loop  ;; label = @7
                  local.get 33
                  v128.load align=1
                  local.tee 72
                  local.get 31
                  local.get 21
                  i32.add
                  v128.load32_splat align=1
                  local.get 76
                  f32x4.relaxed_madd
                  local.set 76
                  local.get 72
                  local.get 30
                  local.get 21
                  i32.add
                  v128.load32_splat align=1
                  local.get 75
                  f32x4.relaxed_madd
                  local.set 75
                  local.get 72
                  local.get 29
                  local.get 21
                  i32.add
                  v128.load32_splat align=1
                  local.get 74
                  f32x4.relaxed_madd
                  local.set 74
                  local.get 72
                  local.get 28
                  local.get 21
                  i32.add
                  v128.load32_splat align=1
                  local.get 73
                  f32x4.relaxed_madd
                  local.set 73
                  local.get 33
                  i32.const 16
                  i32.add
                  local.set 33
                  local.get 21
                  i32.const 4
                  i32.add
                  local.set 21
                  local.get 69
                  i32.const -1
                  i32.add
                  local.tee 69
                  br_if 0 (;@7;)
                end
                local.get 52
                local.get 71
                i32.add
                local.tee 21
                local.get 73
                v128.store align=1
                local.get 21
                local.get 37
                i32.add
                local.get 74
                v128.store align=1
                local.get 21
                local.get 40
                i32.add
                local.get 75
                v128.store align=1
                local.get 21
                local.get 43
                i32.add
                local.get 76
                v128.store align=1
                local.get 70
                local.get 25
                i32.add
                local.set 70
                local.get 48
                i32.const 4
                i32.add
                local.tee 48
                local.get 19
                i32.lt_s
                br_if 0 (;@6;)
              end
            end
            local.get 36
            local.get 26
            i32.add
            local.set 36
            local.get 39
            local.get 26
            i32.add
            local.set 39
            local.get 42
            local.get 26
            i32.add
            local.set 42
            local.get 45
            local.get 26
            i32.add
            local.set 45
            local.get 28
            local.get 25
            i32.add
            local.set 28
            local.get 29
            local.get 25
            i32.add
            local.set 29
            local.get 30
            local.get 25
            i32.add
            local.set 30
            local.get 31
            local.get 25
            i32.add
            local.set 31
            local.get 47
            i32.const 1
            i32.add
            local.set 33
            local.get 20
            i32.const 4
            i32.add
            local.set 21
            local.get 47
            local.get 32
            i32.ne
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 22
          local.get 20
          i32.le_s
          br_if 0 (;@3;)
          local.get 1
          local.get 14
          local.get 13
          i32.mul
          i32.const 2
          i32.shl
          i32.add
          local.set 43
          local.get 14
          i32.const 4
          i32.shl
          local.set 51
          local.get 14
          i32.const 2
          i32.shl
          local.set 41
          local.get 14
          i32.const 1
          i32.and
          local.set 27
          local.get 22
          local.get 20
          i32.sub
          local.set 44
          local.get 14
          i32.const 6
          i32.shl
          local.set 52
          i32.const 0
          local.set 34
          i32.const 0
          local.get 14
          i32.const 2147483646
          i32.and
          i32.sub
          local.set 48
          local.get 19
          i32.const -16
          i32.add
          local.tee 21
          i32.const 4
          i32.shr_u
          local.tee 50
          i32.const 1
          i32.add
          local.set 37
          local.get 21
          i32.const -16
          i32.and
          i32.const 16
          i32.add
          local.set 25
          local.get 1
          local.get 14
          local.get 7
          local.get 20
          i32.const 2
          i32.shl
          i32.add
          i32.mul
          i32.add
          local.set 29
          local.get 17
          local.get 19
          i32.const 2
          i32.shl
          local.tee 38
          local.get 20
          i32.mul
          i32.add
          local.tee 40
          local.set 30
          loop  ;; label = @4
            i32.const 0
            local.set 70
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 19
                    i32.const 16
                    i32.lt_s
                    br_if 0 (;@8;)
                    local.get 30
                    local.set 21
                    local.get 15
                    local.set 33
                    local.get 37
                    local.set 69
                    local.get 14
                    i32.const 0
                    i32.le_s
                    br_if 1 (;@7;)
                    local.get 40
                    local.get 38
                    local.get 34
                    i32.mul
                    i32.add
                    local.set 31
                    i32.const 0
                    local.set 70
                    local.get 16
                    local.set 71
                    loop  ;; label = @9
                      local.get 15
                      local.get 70
                      i32.const 6
                      i32.shl
                      local.tee 28
                      i32.add
                      local.tee 21
                      v128.load offset=48 align=1
                      local.set 73
                      local.get 21
                      v128.load offset=32 align=1
                      local.set 74
                      local.get 21
                      v128.load offset=16 align=1
                      local.set 75
                      local.get 21
                      v128.load align=1
                      local.set 76
                      local.get 71
                      local.set 21
                      local.get 29
                      local.set 33
                      local.get 14
                      local.set 69
                      loop  ;; label = @10
                        local.get 21
                        v128.load align=1
                        local.get 33
                        v128.load32_splat align=1
                        local.tee 72
                        local.get 76
                        f32x4.relaxed_madd
                        local.set 76
                        local.get 21
                        i32.const 48
                        i32.add
                        v128.load align=1
                        local.get 72
                        local.get 73
                        f32x4.relaxed_madd
                        local.set 73
                        local.get 21
                        i32.const 32
                        i32.add
                        v128.load align=1
                        local.get 72
                        local.get 74
                        f32x4.relaxed_madd
                        local.set 74
                        local.get 21
                        i32.const 16
                        i32.add
                        v128.load align=1
                        local.get 72
                        local.get 75
                        f32x4.relaxed_madd
                        local.set 75
                        local.get 21
                        i32.const 64
                        i32.add
                        local.set 21
                        local.get 33
                        i32.const 4
                        i32.add
                        local.set 33
                        local.get 69
                        i32.const -1
                        i32.add
                        local.tee 69
                        br_if 0 (;@10;)
                      end
                      local.get 31
                      local.get 28
                      i32.add
                      local.tee 21
                      local.get 73
                      v128.store offset=48 align=1
                      local.get 21
                      local.get 74
                      v128.store offset=32 align=1
                      local.get 21
                      local.get 75
                      v128.store offset=16 align=1
                      local.get 21
                      local.get 76
                      v128.store align=1
                      local.get 71
                      local.get 52
                      i32.add
                      local.set 71
                      local.get 70
                      local.get 50
                      i32.ne
                      local.set 21
                      local.get 70
                      i32.const 1
                      i32.add
                      local.set 70
                      local.get 21
                      br_if 0 (;@9;)
                    end
                    local.get 25
                    local.set 70
                  end
                  local.get 70
                  local.get 19
                  i32.ge_s
                  br_if 2 (;@5;)
                  local.get 14
                  i32.const 1
                  i32.lt_s
                  br_if 1 (;@6;)
                  local.get 43
                  local.get 20
                  local.get 14
                  i32.mul
                  i32.const 2
                  i32.shl
                  i32.add
                  local.set 49
                  local.get 17
                  local.get 20
                  local.get 19
                  i32.mul
                  i32.const 2
                  i32.shl
                  i32.add
                  local.set 31
                  local.get 16
                  local.get 41
                  local.get 70
                  i32.mul
                  i32.add
                  local.set 71
                  loop  ;; label = @8
                    local.get 15
                    local.get 70
                    i32.const 2
                    i32.shl
                    local.tee 28
                    i32.add
                    v128.load align=1
                    local.set 72
                    i32.const 0
                    local.set 21
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 14
                        i32.const 1
                        i32.eq
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 69
                        local.get 29
                        local.set 21
                        local.get 71
                        local.set 33
                        loop  ;; label = @11
                          local.get 33
                          i32.const 16
                          i32.add
                          v128.load align=1
                          local.get 21
                          i32.const 4
                          i32.add
                          v128.load32_splat align=1
                          local.get 33
                          v128.load align=1
                          local.get 21
                          v128.load32_splat align=1
                          local.get 72
                          f32x4.relaxed_madd
                          f32x4.relaxed_madd
                          local.set 72
                          local.get 21
                          i32.const 8
                          i32.add
                          local.set 21
                          local.get 33
                          i32.const 32
                          i32.add
                          local.set 33
                          local.get 48
                          local.get 69
                          i32.const -2
                          i32.add
                          local.tee 69
                          i32.ne
                          br_if 0 (;@11;)
                        end
                        local.get 27
                        i32.eqz
                        br_if 1 (;@9;)
                        i32.const 0
                        local.get 69
                        i32.sub
                        local.set 21
                      end
                      local.get 16
                      local.get 70
                      local.get 14
                      i32.mul
                      i32.const 2
                      i32.shl
                      i32.add
                      local.get 21
                      i32.const 4
                      i32.shl
                      i32.add
                      v128.load align=1
                      local.get 49
                      local.get 21
                      i32.const 2
                      i32.shl
                      i32.add
                      v128.load32_splat align=1
                      local.get 72
                      f32x4.relaxed_madd
                      local.set 72
                    end
                    local.get 31
                    local.get 28
                    i32.add
                    local.get 72
                    v128.store align=1
                    local.get 71
                    local.get 51
                    i32.add
                    local.set 71
                    local.get 70
                    i32.const 4
                    i32.add
                    local.tee 70
                    local.get 19
                    i32.lt_s
                    br_if 0 (;@8;)
                    br 3 (;@5;)
                  end
                end
                loop  ;; label = @7
                  local.get 33
                  i32.const 16
                  i32.add
                  v128.load align=1
                  local.set 72
                  local.get 33
                  i32.const 32
                  i32.add
                  v128.load align=1
                  local.set 73
                  local.get 33
                  v128.load align=1
                  local.set 74
                  local.get 21
                  i32.const 48
                  i32.add
                  local.get 33
                  i32.const 48
                  i32.add
                  v128.load align=1
                  v128.store align=1
                  local.get 21
                  i32.const 32
                  i32.add
                  local.get 73
                  v128.store align=1
                  local.get 21
                  i32.const 16
                  i32.add
                  local.get 72
                  v128.store align=1
                  local.get 21
                  local.get 74
                  v128.store align=1
                  local.get 21
                  i32.const 64
                  i32.add
                  local.set 21
                  local.get 33
                  i32.const 64
                  i32.add
                  local.set 33
                  local.get 69
                  i32.const -1
                  i32.add
                  local.tee 69
                  br_if 0 (;@7;)
                end
                local.get 25
                local.set 70
                local.get 25
                local.get 19
                i32.ge_s
                br_if 1 (;@5;)
              end
              local.get 70
              i32.const 2
              i32.shl
              local.set 21
              loop  ;; label = @6
                local.get 30
                local.get 21
                i32.add
                local.get 15
                local.get 21
                i32.add
                v128.load align=1
                v128.store align=1
                local.get 21
                i32.const 16
                i32.add
                local.set 21
                local.get 70
                i32.const 4
                i32.add
                local.tee 70
                local.get 19
                i32.lt_s
                br_if 0 (;@6;)
              end
            end
            local.get 29
            local.get 41
            i32.add
            local.set 29
            local.get 30
            local.get 38
            i32.add
            local.set 30
            local.get 20
            i32.const 1
            i32.add
            local.set 20
            local.get 34
            i32.const 1
            i32.add
            local.tee 34
            local.get 44
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 4
        local.get 12
        local.get 4
        local.get 12
        i32.lt_s
        select
        local.set 79
        block  ;; label = @3
          local.get 0
          i32.load offset=20
          i32.const 1
          i32.lt_s
          br_if 0 (;@3;)
          local.get 22
          i32.const 1
          i32.lt_s
          local.tee 80
          local.get 18
          i32.const 1
          i32.lt_s
          local.tee 40
          i32.or
          local.set 81
          local.get 18
          i32.const 2
          i32.shl
          local.set 69
          local.get 19
          i32.const 2
          i32.shl
          local.set 28
          local.get 18
          i32.const 3
          i32.shl
          local.set 70
          local.get 19
          i32.const 4
          i32.shl
          local.set 44
          local.get 18
          i32.const 1
          i32.and
          local.set 46
          local.get 19
          i32.const 1
          i32.and
          local.set 45
          local.get 18
          i32.const 12
          i32.mul
          local.set 71
          local.get 18
          i32.const 24
          i32.mul
          local.set 42
          local.get 18
          i32.const 4
          i32.shl
          local.set 38
          local.get 19
          i32.const 12
          i32.mul
          local.set 29
          local.get 19
          i32.const 3
          i32.shl
          local.set 30
          local.get 18
          i32.const 6
          i32.shl
          local.set 27
          local.get 18
          i32.const 5
          i32.shl
          local.set 32
          local.get 19
          i32.const 6
          i32.shl
          local.set 41
          local.get 18
          i32.const 1
          i32.shl
          local.set 15
          i32.const 0
          local.set 82
          i32.const 0
          local.get 18
          i32.const 2147483646
          i32.and
          i32.sub
          local.set 52
          i32.const 0
          local.get 19
          i32.const 2147483646
          i32.and
          i32.sub
          local.set 31
          local.get 19
          i32.const -1
          i32.add
          local.tee 36
          i32.const 4
          i32.and
          local.set 83
          local.get 22
          i32.const -4
          i32.add
          i32.const 2
          i32.shr_u
          local.set 84
          local.get 19
          i32.const -16
          i32.add
          local.tee 21
          i32.const 4
          i32.shr_u
          local.tee 34
          i32.const 1
          i32.add
          local.set 85
          local.get 19
          local.get 22
          i32.mul
          local.tee 86
          i32.const -1
          i32.add
          local.tee 33
          i32.const 4
          i32.and
          local.set 87
          local.get 33
          i32.const 2
          i32.shr_u
          local.set 88
          local.get 21
          i32.const -16
          i32.and
          i32.const 16
          i32.add
          local.set 89
          local.get 36
          i32.const 2
          i32.shr_u
          local.tee 90
          i32.const 1
          i32.add
          local.tee 21
          i32.const 2147483644
          i32.and
          local.set 91
          local.get 21
          i32.const 3
          i32.and
          local.set 92
          local.get 19
          local.get 79
          i32.mul
          i32.const -1
          i32.add
          i32.const 2
          i32.shr_u
          i32.const 1
          i32.add
          local.tee 33
          i32.const 2147483646
          i32.and
          local.set 93
          local.get 21
          i32.const 2147483646
          i32.and
          local.tee 94
          i32.const 2
          i32.shl
          local.set 95
          local.get 33
          i32.const 2
          i32.shl
          i32.const -8
          i32.and
          local.set 96
          local.get 19
          f32.convert_i32_s
          local.set 97
          loop  ;; label = @4
            local.get 6
            local.get 82
            i32.const 12
            i32.mul
            i32.add
            local.set 98
            local.get 0
            i32.load offset=52
            local.set 99
            block  ;; label = @5
              block  ;; label = @6
                local.get 80
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 19
                  i32.const 1
                  i32.lt_s
                  local.tee 16
                  br_if 0 (;@7;)
                  local.get 98
                  i32.load
                  local.set 49
                  i32.const 0
                  local.set 25
                  local.get 99
                  local.set 17
                  local.get 0
                  i32.load offset=48
                  local.tee 37
                  local.set 51
                  loop  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 36
                          i32.const 12
                          i32.ge_u
                          br_if 0 (;@11;)
                          v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
                          local.set 72
                          i32.const 0
                          local.set 33
                          br 1 (;@10;)
                        end
                        i32.const 0
                        local.set 33
                        v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
                        local.set 72
                        local.get 91
                        local.set 48
                        local.get 51
                        local.set 21
                        loop  ;; label = @11
                          local.get 21
                          i32.const 48
                          i32.add
                          v128.load align=1
                          local.tee 73
                          local.get 73
                          local.get 21
                          i32.const 32
                          i32.add
                          v128.load align=1
                          local.tee 74
                          local.get 74
                          local.get 21
                          i32.const 16
                          i32.add
                          v128.load align=1
                          local.tee 75
                          local.get 75
                          local.get 21
                          v128.load align=1
                          local.tee 76
                          local.get 76
                          local.get 72
                          f32x4.relaxed_madd
                          f32x4.relaxed_madd
                          f32x4.relaxed_madd
                          f32x4.relaxed_madd
                          local.set 72
                          local.get 21
                          i32.const 64
                          i32.add
                          local.set 21
                          local.get 33
                          i32.const 16
                          i32.add
                          local.set 33
                          local.get 48
                          i32.const -4
                          i32.add
                          local.tee 48
                          br_if 0 (;@11;)
                        end
                        local.get 92
                        i32.eqz
                        br_if 1 (;@9;)
                      end
                      local.get 51
                      local.get 33
                      i32.const 2
                      i32.shl
                      i32.add
                      local.set 21
                      local.get 92
                      local.set 33
                      loop  ;; label = @10
                        local.get 21
                        v128.load align=1
                        local.tee 73
                        local.get 73
                        local.get 72
                        f32x4.relaxed_madd
                        local.set 72
                        local.get 21
                        i32.const 16
                        i32.add
                        local.set 21
                        local.get 33
                        i32.const -1
                        i32.add
                        local.tee 33
                        br_if 0 (;@10;)
                      end
                    end
                    f32.const 0x1p+0 (;=1;)
                    local.get 72
                    f32x4.extract_lane 3
                    local.get 72
                    f32x4.extract_lane 2
                    local.get 72
                    f32x4.extract_lane 0
                    local.get 72
                    f32x4.extract_lane 1
                    f32.add
                    f32.add
                    f32.add
                    local.get 97
                    f32.div
                    f32.const 0x1p-23 (;=1.19209e-07;)
                    f32.add
                    f32.sqrt
                    f32.div
                    f32x4.splat
                    local.set 72
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 90
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 21
                          br 1 (;@10;)
                        end
                        i32.const 0
                        local.set 21
                        local.get 94
                        local.set 33
                        loop  ;; label = @11
                          local.get 17
                          local.get 21
                          i32.add
                          local.tee 48
                          local.get 72
                          local.get 51
                          local.get 21
                          i32.add
                          local.tee 14
                          v128.load align=1
                          f32x4.mul
                          local.get 49
                          local.get 21
                          i32.add
                          local.tee 50
                          v128.load align=1
                          f32x4.mul
                          v128.store align=1
                          local.get 48
                          i32.const 16
                          i32.add
                          local.get 72
                          local.get 14
                          i32.const 16
                          i32.add
                          v128.load align=1
                          f32x4.mul
                          local.get 50
                          i32.const 16
                          i32.add
                          v128.load align=1
                          f32x4.mul
                          v128.store align=1
                          local.get 21
                          i32.const 32
                          i32.add
                          local.set 21
                          local.get 33
                          i32.const -2
                          i32.add
                          local.tee 33
                          br_if 0 (;@11;)
                        end
                        local.get 95
                        local.set 21
                        local.get 83
                        br_if 1 (;@9;)
                      end
                      local.get 99
                      local.get 25
                      local.get 19
                      i32.mul
                      i32.const 2
                      i32.shl
                      local.tee 33
                      i32.add
                      local.get 21
                      i32.const 2
                      i32.shl
                      local.tee 21
                      i32.add
                      local.get 72
                      local.get 37
                      local.get 33
                      i32.add
                      local.get 21
                      i32.add
                      v128.load align=1
                      f32x4.mul
                      local.get 49
                      local.get 21
                      i32.add
                      v128.load align=1
                      f32x4.mul
                      v128.store align=1
                    end
                    local.get 17
                    local.get 28
                    i32.add
                    local.set 17
                    local.get 51
                    local.get 28
                    i32.add
                    local.set 51
                    local.get 25
                    i32.const 1
                    i32.add
                    local.tee 25
                    local.get 22
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 0
                  i32.load offset=52
                  local.set 99
                end
                local.get 0
                i32.load offset=44
                local.set 50
                local.get 98
                i32.load offset=4
                local.set 39
                local.get 0
                i32.load offset=56
                local.set 37
                i32.const 0
                local.set 35
                local.get 23
                br_if 1 (;@5;)
                i32.const 4
                local.set 21
                i32.const 0
                local.set 33
                local.get 37
                local.set 100
                local.get 37
                local.get 70
                i32.add
                local.tee 20
                local.set 101
                local.get 37
                local.get 38
                i32.add
                local.tee 26
                local.set 102
                local.get 37
                local.get 42
                i32.add
                local.tee 47
                local.set 103
                local.get 99
                local.set 25
                i32.const 0
                local.set 35
                loop  ;; label = @7
                  local.get 35
                  local.set 104
                  local.get 21
                  local.set 35
                  local.get 33
                  local.set 24
                  i32.const 0
                  local.set 14
                  block  ;; label = @8
                    local.get 18
                    i32.const 8
                    i32.lt_s
                    br_if 0 (;@8;)
                    local.get 32
                    local.get 24
                    i32.mul
                    local.set 43
                    i32.const 16
                    local.set 51
                    i32.const 0
                    local.set 17
                    local.get 39
                    local.set 49
                    loop  ;; label = @9
                      local.get 17
                      i32.const 6
                      i32.shl
                      local.tee 21
                      local.get 43
                      i32.add
                      local.set 14
                      local.get 50
                      local.get 21
                      i32.add
                      local.tee 21
                      v128.load align=1
                      local.tee 55
                      local.set 56
                      local.get 21
                      v128.load offset=16 align=1
                      local.tee 57
                      local.set 58
                      local.get 21
                      v128.load offset=32 align=1
                      local.tee 59
                      local.set 60
                      local.get 21
                      v128.load offset=48 align=1
                      local.tee 54
                      local.set 61
                      local.get 55
                      local.set 62
                      local.get 57
                      local.set 63
                      local.get 59
                      local.set 64
                      local.get 54
                      local.set 65
                      local.get 55
                      local.set 66
                      local.get 57
                      local.set 67
                      local.get 59
                      local.set 68
                      local.get 54
                      local.set 105
                      local.get 49
                      local.set 21
                      local.get 25
                      local.set 33
                      local.get 19
                      local.set 48
                      block  ;; label = @10
                        local.get 16
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          local.get 21
                          v128.load align=1
                          local.tee 72
                          local.get 33
                          v128.load32_splat align=1
                          local.tee 73
                          local.get 55
                          f32x4.relaxed_madd
                          local.set 55
                          local.get 21
                          i32.const 48
                          i32.add
                          v128.load align=1
                          local.tee 74
                          local.get 33
                          local.get 29
                          i32.add
                          v128.load32_splat align=1
                          local.tee 75
                          local.get 105
                          f32x4.relaxed_madd
                          local.set 105
                          local.get 21
                          i32.const 32
                          i32.add
                          v128.load align=1
                          local.tee 76
                          local.get 75
                          local.get 68
                          f32x4.relaxed_madd
                          local.set 68
                          local.get 21
                          i32.const 16
                          i32.add
                          v128.load align=1
                          local.tee 77
                          local.get 75
                          local.get 67
                          f32x4.relaxed_madd
                          local.set 67
                          local.get 74
                          local.get 33
                          local.get 30
                          i32.add
                          v128.load32_splat align=1
                          local.tee 78
                          local.get 65
                          f32x4.relaxed_madd
                          local.set 65
                          local.get 76
                          local.get 78
                          local.get 64
                          f32x4.relaxed_madd
                          local.set 64
                          local.get 77
                          local.get 78
                          local.get 63
                          f32x4.relaxed_madd
                          local.set 63
                          local.get 74
                          local.get 33
                          local.get 28
                          i32.add
                          v128.load32_splat align=1
                          local.tee 53
                          local.get 61
                          f32x4.relaxed_madd
                          local.set 61
                          local.get 76
                          local.get 53
                          local.get 60
                          f32x4.relaxed_madd
                          local.set 60
                          local.get 77
                          local.get 53
                          local.get 58
                          f32x4.relaxed_madd
                          local.set 58
                          local.get 72
                          local.get 75
                          local.get 66
                          f32x4.relaxed_madd
                          local.set 66
                          local.get 72
                          local.get 78
                          local.get 62
                          f32x4.relaxed_madd
                          local.set 62
                          local.get 72
                          local.get 53
                          local.get 56
                          f32x4.relaxed_madd
                          local.set 56
                          local.get 74
                          local.get 73
                          local.get 54
                          f32x4.relaxed_madd
                          local.set 54
                          local.get 76
                          local.get 73
                          local.get 59
                          f32x4.relaxed_madd
                          local.set 59
                          local.get 77
                          local.get 73
                          local.get 57
                          f32x4.relaxed_madd
                          local.set 57
                          local.get 21
                          i32.const 64
                          i32.add
                          local.set 21
                          local.get 33
                          i32.const 4
                          i32.add
                          local.set 33
                          local.get 48
                          i32.const -1
                          i32.add
                          local.tee 48
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 37
                      local.get 14
                      i32.add
                      local.tee 21
                      local.get 54
                      v128.store offset=48 align=1
                      local.get 21
                      local.get 59
                      v128.store offset=32 align=1
                      local.get 21
                      local.get 57
                      v128.store offset=16 align=1
                      local.get 21
                      local.get 55
                      v128.store align=1
                      local.get 20
                      local.get 14
                      i32.add
                      local.tee 21
                      local.get 61
                      v128.store offset=48 align=1
                      local.get 21
                      local.get 60
                      v128.store offset=32 align=1
                      local.get 21
                      local.get 58
                      v128.store offset=16 align=1
                      local.get 21
                      local.get 56
                      v128.store align=1
                      local.get 26
                      local.get 14
                      i32.add
                      local.tee 21
                      local.get 65
                      v128.store offset=48 align=1
                      local.get 21
                      local.get 64
                      v128.store offset=32 align=1
                      local.get 21
                      local.get 63
                      v128.store offset=16 align=1
                      local.get 21
                      local.get 62
                      v128.store align=1
                      local.get 47
                      local.get 14
                      i32.add
                      local.tee 21
                      local.get 105
                      v128.store offset=48 align=1
                      local.get 21
                      local.get 68
                      v128.store offset=32 align=1
                      local.get 21
                      local.get 67
                      v128.store offset=16 align=1
                      local.get 21
                      local.get 66
                      v128.store align=1
                      local.get 49
                      local.get 41
                      i32.add
                      local.set 49
                      local.get 17
                      i32.const 1
                      i32.add
                      local.set 17
                      local.get 51
                      local.set 14
                      local.get 51
                      i32.const 16
                      i32.add
                      local.tee 21
                      local.set 51
                      local.get 21
                      local.get 15
                      i32.le_s
                      br_if 0 (;@9;)
                    end
                  end
                  block  ;; label = @8
                    local.get 14
                    local.get 15
                    i32.ge_s
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 19
                      i32.const 0
                      i32.gt_s
                      br_if 0 (;@9;)
                      local.get 14
                      i32.const 2
                      i32.shl
                      local.set 21
                      local.get 50
                      local.set 33
                      local.get 100
                      local.set 48
                      local.get 101
                      local.set 51
                      local.get 102
                      local.set 17
                      local.get 103
                      local.set 49
                      loop  ;; label = @10
                        local.get 48
                        local.get 21
                        i32.add
                        local.get 33
                        local.get 21
                        i32.add
                        v128.load align=1
                        local.tee 72
                        v128.store align=1
                        local.get 51
                        local.get 21
                        i32.add
                        local.get 72
                        v128.store align=1
                        local.get 17
                        local.get 21
                        i32.add
                        local.get 72
                        v128.store align=1
                        local.get 49
                        local.get 21
                        i32.add
                        local.get 72
                        v128.store align=1
                        local.get 33
                        i32.const 16
                        i32.add
                        local.set 33
                        local.get 48
                        i32.const 16
                        i32.add
                        local.set 48
                        local.get 51
                        i32.const 16
                        i32.add
                        local.set 51
                        local.get 17
                        i32.const 16
                        i32.add
                        local.set 17
                        local.get 49
                        i32.const 16
                        i32.add
                        local.set 49
                        local.get 14
                        i32.const 4
                        i32.add
                        local.tee 14
                        local.get 15
                        i32.lt_s
                        br_if 0 (;@10;)
                        br 2 (;@8;)
                      end
                    end
                    local.get 37
                    local.get 104
                    local.get 15
                    i32.mul
                    i32.const 2
                    i32.shl
                    i32.add
                    local.set 49
                    local.get 39
                    local.get 28
                    local.get 14
                    i32.mul
                    i32.add
                    local.set 51
                    loop  ;; label = @9
                      local.get 51
                      local.set 33
                      local.get 25
                      local.set 21
                      local.get 19
                      local.set 48
                      local.get 50
                      local.get 14
                      i32.const 2
                      i32.shl
                      local.tee 17
                      i32.add
                      v128.load align=1
                      local.tee 73
                      local.set 74
                      local.get 73
                      local.set 75
                      local.get 73
                      local.set 76
                      loop  ;; label = @10
                        local.get 33
                        v128.load align=1
                        local.tee 72
                        local.get 21
                        v128.load32_splat align=1
                        local.get 76
                        f32x4.relaxed_madd
                        local.set 76
                        local.get 72
                        local.get 21
                        local.get 29
                        i32.add
                        v128.load32_splat align=1
                        local.get 73
                        f32x4.relaxed_madd
                        local.set 73
                        local.get 72
                        local.get 21
                        local.get 30
                        i32.add
                        v128.load32_splat align=1
                        local.get 74
                        f32x4.relaxed_madd
                        local.set 74
                        local.get 72
                        local.get 21
                        local.get 28
                        i32.add
                        v128.load32_splat align=1
                        local.get 75
                        f32x4.relaxed_madd
                        local.set 75
                        local.get 33
                        i32.const 16
                        i32.add
                        local.set 33
                        local.get 21
                        i32.const 4
                        i32.add
                        local.set 21
                        local.get 48
                        i32.const -1
                        i32.add
                        local.tee 48
                        br_if 0 (;@10;)
                      end
                      local.get 49
                      local.get 17
                      i32.add
                      local.tee 21
                      local.get 76
                      v128.store align=1
                      local.get 21
                      local.get 15
                      i32.const 2
                      i32.shl
                      i32.add
                      local.get 75
                      v128.store align=1
                      local.get 21
                      local.get 38
                      i32.add
                      local.get 74
                      v128.store align=1
                      local.get 21
                      local.get 42
                      i32.add
                      local.get 73
                      v128.store align=1
                      local.get 51
                      local.get 44
                      i32.add
                      local.set 51
                      local.get 14
                      i32.const 4
                      i32.add
                      local.tee 14
                      local.get 15
                      i32.lt_s
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 100
                  local.get 32
                  i32.add
                  local.set 100
                  local.get 101
                  local.get 32
                  i32.add
                  local.set 101
                  local.get 102
                  local.get 32
                  i32.add
                  local.set 102
                  local.get 103
                  local.get 32
                  i32.add
                  local.set 103
                  local.get 25
                  local.get 44
                  i32.add
                  local.set 25
                  local.get 24
                  i32.const 1
                  i32.add
                  local.set 33
                  local.get 35
                  i32.const 4
                  i32.add
                  local.set 21
                  local.get 24
                  local.get 84
                  i32.ne
                  br_if 0 (;@7;)
                  br 2 (;@5;)
                end
              end
              local.get 0
              i32.load offset=44
              local.set 50
              local.get 98
              i32.load offset=4
              local.set 39
              local.get 0
              i32.load offset=56
              local.set 37
              i32.const 0
              local.set 35
            end
            block  ;; label = @5
              local.get 22
              local.get 35
              i32.le_s
              br_if 0 (;@5;)
              local.get 22
              local.get 35
              i32.sub
              local.set 47
              local.get 99
              local.get 28
              local.get 35
              i32.mul
              i32.add
              local.set 25
              local.get 37
              local.get 70
              local.get 35
              i32.mul
              i32.add
              local.set 16
              i32.const 0
              local.set 26
              local.get 35
              local.set 20
              loop  ;; label = @6
                i32.const 0
                local.set 14
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 18
                      i32.const 8
                      i32.lt_s
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        local.get 19
                        i32.const 0
                        i32.gt_s
                        br_if 0 (;@10;)
                        i32.const 16
                        local.set 48
                        local.get 16
                        local.set 21
                        local.get 50
                        local.set 33
                        loop  ;; label = @11
                          local.get 33
                          i32.const 16
                          i32.add
                          v128.load align=1
                          local.set 72
                          local.get 33
                          i32.const 32
                          i32.add
                          v128.load align=1
                          local.set 73
                          local.get 33
                          v128.load align=1
                          local.set 74
                          local.get 21
                          i32.const 48
                          i32.add
                          local.get 33
                          i32.const 48
                          i32.add
                          v128.load align=1
                          v128.store align=1
                          local.get 21
                          i32.const 32
                          i32.add
                          local.get 73
                          v128.store align=1
                          local.get 21
                          i32.const 16
                          i32.add
                          local.get 72
                          v128.store align=1
                          local.get 21
                          local.get 74
                          v128.store align=1
                          local.get 21
                          i32.const 64
                          i32.add
                          local.set 21
                          local.get 33
                          i32.const 64
                          i32.add
                          local.set 33
                          local.get 48
                          i32.const 16
                          i32.add
                          local.tee 48
                          local.get 15
                          i32.le_s
                          br_if 0 (;@11;)
                        end
                        local.get 48
                        i32.const -16
                        i32.add
                        local.tee 14
                        local.get 15
                        i32.ge_s
                        br_if 3 (;@7;)
                        br 2 (;@8;)
                      end
                      local.get 37
                      local.get 26
                      local.get 35
                      i32.add
                      local.get 70
                      i32.mul
                      i32.add
                      local.set 43
                      i32.const 16
                      local.set 21
                      i32.const 0
                      local.set 51
                      local.get 39
                      local.set 17
                      loop  ;; label = @10
                        local.get 21
                        local.set 14
                        local.get 50
                        local.get 51
                        i32.const 6
                        i32.shl
                        local.tee 49
                        i32.add
                        local.tee 21
                        v128.load offset=48 align=1
                        local.set 73
                        local.get 21
                        v128.load offset=32 align=1
                        local.set 74
                        local.get 21
                        v128.load offset=16 align=1
                        local.set 75
                        local.get 21
                        v128.load align=1
                        local.set 76
                        local.get 17
                        local.set 21
                        local.get 25
                        local.set 33
                        local.get 19
                        local.set 48
                        loop  ;; label = @11
                          local.get 21
                          v128.load align=1
                          local.get 33
                          v128.load32_splat align=1
                          local.tee 72
                          local.get 76
                          f32x4.relaxed_madd
                          local.set 76
                          local.get 21
                          i32.const 48
                          i32.add
                          v128.load align=1
                          local.get 72
                          local.get 73
                          f32x4.relaxed_madd
                          local.set 73
                          local.get 21
                          i32.const 32
                          i32.add
                          v128.load align=1
                          local.get 72
                          local.get 74
                          f32x4.relaxed_madd
                          local.set 74
                          local.get 21
                          i32.const 16
                          i32.add
                          v128.load align=1
                          local.get 72
                          local.get 75
                          f32x4.relaxed_madd
                          local.set 75
                          local.get 21
                          i32.const 64
                          i32.add
                          local.set 21
                          local.get 33
                          i32.const 4
                          i32.add
                          local.set 33
                          local.get 48
                          i32.const -1
                          i32.add
                          local.tee 48
                          br_if 0 (;@11;)
                        end
                        local.get 43
                        local.get 49
                        i32.add
                        local.tee 21
                        local.get 73
                        v128.store offset=48 align=1
                        local.get 21
                        local.get 74
                        v128.store offset=32 align=1
                        local.get 21
                        local.get 75
                        v128.store offset=16 align=1
                        local.get 21
                        local.get 76
                        v128.store align=1
                        local.get 17
                        local.get 41
                        i32.add
                        local.set 17
                        local.get 51
                        i32.const 1
                        i32.add
                        local.set 51
                        local.get 14
                        i32.const 16
                        i32.add
                        local.tee 21
                        local.get 15
                        i32.le_s
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 14
                    local.get 15
                    i32.ge_s
                    br_if 1 (;@7;)
                    local.get 19
                    i32.const 1
                    i32.lt_s
                    br_if 0 (;@8;)
                    local.get 99
                    local.get 20
                    local.get 19
                    i32.mul
                    i32.const 2
                    i32.shl
                    i32.add
                    local.set 43
                    local.get 37
                    local.get 20
                    local.get 15
                    i32.mul
                    i32.const 2
                    i32.shl
                    i32.add
                    local.set 49
                    local.get 39
                    local.get 28
                    local.get 14
                    i32.mul
                    i32.add
                    local.set 51
                    loop  ;; label = @9
                      local.get 50
                      local.get 14
                      i32.const 2
                      i32.shl
                      local.tee 17
                      i32.add
                      v128.load align=1
                      local.set 72
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 36
                            br_if 0 (;@12;)
                            i32.const 0
                            local.set 21
                            br 1 (;@11;)
                          end
                          i32.const 0
                          local.set 48
                          local.get 25
                          local.set 21
                          local.get 51
                          local.set 33
                          loop  ;; label = @12
                            local.get 33
                            i32.const 16
                            i32.add
                            v128.load align=1
                            local.get 21
                            i32.const 4
                            i32.add
                            v128.load32_splat align=1
                            local.get 33
                            v128.load align=1
                            local.get 21
                            v128.load32_splat align=1
                            local.get 72
                            f32x4.relaxed_madd
                            f32x4.relaxed_madd
                            local.set 72
                            local.get 21
                            i32.const 8
                            i32.add
                            local.set 21
                            local.get 33
                            i32.const 32
                            i32.add
                            local.set 33
                            local.get 31
                            local.get 48
                            i32.const -2
                            i32.add
                            local.tee 48
                            i32.ne
                            br_if 0 (;@12;)
                          end
                          local.get 45
                          i32.eqz
                          br_if 1 (;@10;)
                          i32.const 0
                          local.get 48
                          i32.sub
                          local.set 21
                        end
                        local.get 39
                        local.get 14
                        local.get 19
                        i32.mul
                        i32.const 2
                        i32.shl
                        i32.add
                        local.get 21
                        i32.const 4
                        i32.shl
                        i32.add
                        v128.load align=1
                        local.get 43
                        local.get 21
                        i32.const 2
                        i32.shl
                        i32.add
                        v128.load32_splat align=1
                        local.get 72
                        f32x4.relaxed_madd
                        local.set 72
                      end
                      local.get 49
                      local.get 17
                      i32.add
                      local.get 72
                      v128.store align=1
                      local.get 51
                      local.get 44
                      i32.add
                      local.set 51
                      local.get 14
                      i32.const 4
                      i32.add
                      local.tee 14
                      local.get 15
                      i32.lt_s
                      br_if 0 (;@9;)
                      br 2 (;@7;)
                    end
                  end
                  local.get 14
                  i32.const 2
                  i32.shl
                  local.set 21
                  loop  ;; label = @8
                    local.get 16
                    local.get 21
                    i32.add
                    local.get 50
                    local.get 21
                    i32.add
                    v128.load align=1
                    v128.store align=1
                    local.get 21
                    i32.const 16
                    i32.add
                    local.set 21
                    local.get 14
                    i32.const 4
                    i32.add
                    local.tee 14
                    local.get 15
                    i32.lt_s
                    br_if 0 (;@8;)
                  end
                end
                local.get 25
                local.get 28
                i32.add
                local.set 25
                local.get 16
                local.get 70
                i32.add
                local.set 16
                local.get 20
                i32.const 1
                i32.add
                local.set 20
                local.get 26
                i32.const 1
                i32.add
                local.tee 26
                local.get 47
                i32.ne
                br_if 0 (;@6;)
              end
            end
            block  ;; label = @5
              local.get 81
              br_if 0 (;@5;)
              i32.const 0
              local.set 14
              i32.const 0
              local.set 50
              i32.const 0
              local.set 51
              loop  ;; label = @6
                local.get 0
                i32.load offset=56
                local.get 50
                i32.add
                local.set 21
                local.get 14
                local.set 33
                i32.const 0
                local.set 48
                loop  ;; label = @7
                  local.get 0
                  i32.load offset=60
                  local.get 33
                  i32.add
                  local.get 21
                  local.get 69
                  i32.add
                  v128.load align=1
                  local.get 21
                  v128.load align=1
                  local.tee 72
                  v128.const i32x4 0x3ab60b61 0x3ab60b61 0x3ab60b61 0x3ab60b61
                  local.get 72
                  f32x4.neg
                  v128.const i32x4 0x42b20000 0x42b20000 0x42b20000 0x42b20000
                  f32x4.pmin
                  v128.const i32x4 0xc2d20000 0xc2d20000 0xc2d20000 0xc2d20000
                  f32x4.pmax
                  local.tee 72
                  local.get 72
                  v128.const i32x4 0x3fb8aa3b 0x3fb8aa3b 0x3fb8aa3b 0x3fb8aa3b
                  f32x4.mul
                  f32x4.nearest
                  local.tee 73
                  v128.const i32x4 0xbf317200 0xbf317200 0xbf317200 0xbf317200
                  f32x4.mul
                  f32x4.add
                  local.get 73
                  v128.const i32x4 0xb5bfbe8e 0xb5bfbe8e 0xb5bfbe8e 0xb5bfbe8e
                  f32x4.mul
                  f32x4.add
                  local.tee 72
                  v128.const i32x4 0x3c088889 0x3c088889 0x3c088889 0x3c088889
                  f32x4.relaxed_madd
                  local.get 72
                  v128.const i32x4 0x3d2aaaab 0x3d2aaaab 0x3d2aaaab 0x3d2aaaab
                  f32x4.relaxed_madd
                  local.get 72
                  v128.const i32x4 0x3e2aaaab 0x3e2aaaab 0x3e2aaaab 0x3e2aaaab
                  f32x4.relaxed_madd
                  local.get 72
                  v128.const i32x4 0x3f000000 0x3f000000 0x3f000000 0x3f000000
                  f32x4.relaxed_madd
                  local.get 72
                  v128.const i32x4 0x3f800000 0x3f800000 0x3f800000 0x3f800000
                  local.tee 74
                  f32x4.relaxed_madd
                  local.get 72
                  local.get 74
                  f32x4.relaxed_madd
                  local.get 73
                  i32x4.trunc_sat_f32x4_s
                  local.tee 72
                  i32.const 1
                  i32x4.shr_s
                  local.tee 73
                  i32.const 23
                  i32x4.shl
                  v128.const i32x4 0x3f800000 0x3f800000 0x3f800000 0x3f800000
                  local.tee 75
                  i32x4.add
                  f32x4.mul
                  local.get 72
                  local.get 73
                  i32x4.sub
                  i32.const 23
                  i32x4.shl
                  local.get 75
                  i32x4.add
                  f32x4.mul
                  local.get 74
                  f32x4.add
                  f32x4.div
                  f32x4.mul
                  v128.store align=1
                  local.get 21
                  i32.const 16
                  i32.add
                  local.set 21
                  local.get 33
                  i32.const 16
                  i32.add
                  local.set 33
                  local.get 48
                  i32.const 4
                  i32.add
                  local.tee 48
                  local.get 18
                  i32.lt_s
                  br_if 0 (;@7;)
                end
                local.get 50
                local.get 70
                i32.add
                local.set 50
                local.get 14
                local.get 69
                i32.add
                local.set 14
                local.get 51
                i32.const 1
                i32.add
                local.tee 51
                local.get 22
                i32.ne
                br_if 0 (;@6;)
              end
            end
            local.get 0
            i32.load offset=44
            local.set 51
            local.get 98
            i32.load offset=8
            local.set 26
            local.get 0
            i32.load offset=60
            local.set 103
            local.get 0
            i32.load offset=64
            local.set 37
            i32.const 0
            local.set 47
            block  ;; label = @5
              local.get 23
              br_if 0 (;@5;)
              i32.const 4
              local.set 21
              i32.const 0
              local.set 33
              local.get 37
              local.set 35
              local.get 37
              local.get 28
              i32.add
              local.tee 43
              local.set 24
              local.get 37
              local.get 30
              i32.add
              local.tee 16
              local.set 100
              local.get 37
              local.get 29
              i32.add
              local.tee 20
              local.set 101
              local.get 103
              local.set 49
              i32.const 0
              local.set 47
              loop  ;; label = @6
                local.get 47
                local.set 102
                local.get 21
                local.set 47
                local.get 33
                local.set 39
                i32.const 0
                local.set 14
                block  ;; label = @7
                  local.get 19
                  i32.const 16
                  i32.lt_s
                  br_if 0 (;@7;)
                  local.get 44
                  local.get 39
                  i32.mul
                  local.set 25
                  i32.const 0
                  local.set 50
                  local.get 26
                  local.set 17
                  loop  ;; label = @8
                    local.get 50
                    i32.const 6
                    i32.shl
                    local.tee 21
                    local.get 25
                    i32.add
                    local.set 14
                    local.get 51
                    local.get 21
                    i32.add
                    local.tee 21
                    v128.load offset=48 align=1
                    local.tee 55
                    local.set 56
                    local.get 21
                    v128.load offset=32 align=1
                    local.tee 57
                    local.set 58
                    local.get 21
                    v128.load offset=16 align=1
                    local.tee 59
                    local.set 60
                    local.get 21
                    v128.load align=1
                    local.tee 54
                    local.set 61
                    local.get 55
                    local.set 62
                    local.get 57
                    local.set 63
                    local.get 59
                    local.set 64
                    local.get 54
                    local.set 65
                    local.get 55
                    local.set 66
                    local.get 57
                    local.set 67
                    local.get 59
                    local.set 68
                    local.get 54
                    local.set 105
                    local.get 17
                    local.set 21
                    local.get 49
                    local.set 33
                    local.get 18
                    local.set 48
                    block  ;; label = @9
                      local.get 40
                      br_if 0 (;@9;)
                      loop  ;; label = @10
                        local.get 21
                        v128.load align=1
                        local.tee 72
                        local.get 33
                        v128.load32_splat align=1
                        local.tee 73
                        local.get 105
                        f32x4.relaxed_madd
                        local.set 105
                        local.get 21
                        i32.const 48
                        i32.add
                        v128.load align=1
                        local.tee 74
                        local.get 33
                        local.get 71
                        i32.add
                        v128.load32_splat align=1
                        local.tee 75
                        local.get 55
                        f32x4.relaxed_madd
                        local.set 55
                        local.get 21
                        i32.const 32
                        i32.add
                        v128.load align=1
                        local.tee 76
                        local.get 75
                        local.get 57
                        f32x4.relaxed_madd
                        local.set 57
                        local.get 21
                        i32.const 16
                        i32.add
                        v128.load align=1
                        local.tee 77
                        local.get 75
                        local.get 59
                        f32x4.relaxed_madd
                        local.set 59
                        local.get 74
                        local.get 33
                        local.get 70
                        i32.add
                        v128.load32_splat align=1
                        local.tee 78
                        local.get 56
                        f32x4.relaxed_madd
                        local.set 56
                        local.get 76
                        local.get 78
                        local.get 58
                        f32x4.relaxed_madd
                        local.set 58
                        local.get 77
                        local.get 78
                        local.get 60
                        f32x4.relaxed_madd
                        local.set 60
                        local.get 74
                        local.get 33
                        local.get 69
                        i32.add
                        v128.load32_splat align=1
                        local.tee 53
                        local.get 62
                        f32x4.relaxed_madd
                        local.set 62
                        local.get 76
                        local.get 53
                        local.get 63
                        f32x4.relaxed_madd
                        local.set 63
                        local.get 77
                        local.get 53
                        local.get 64
                        f32x4.relaxed_madd
                        local.set 64
                        local.get 72
                        local.get 75
                        local.get 54
                        f32x4.relaxed_madd
                        local.set 54
                        local.get 72
                        local.get 78
                        local.get 61
                        f32x4.relaxed_madd
                        local.set 61
                        local.get 72
                        local.get 53
                        local.get 65
                        f32x4.relaxed_madd
                        local.set 65
                        local.get 74
                        local.get 73
                        local.get 66
                        f32x4.relaxed_madd
                        local.set 66
                        local.get 76
                        local.get 73
                        local.get 67
                        f32x4.relaxed_madd
                        local.set 67
                        local.get 77
                        local.get 73
                        local.get 68
                        f32x4.relaxed_madd
                        local.set 68
                        local.get 21
                        i32.const 64
                        i32.add
                        local.set 21
                        local.get 33
                        i32.const 4
                        i32.add
                        local.set 33
                        local.get 48
                        i32.const -1
                        i32.add
                        local.tee 48
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 37
                    local.get 14
                    i32.add
                    local.tee 21
                    local.get 66
                    v128.store offset=48 align=1
                    local.get 21
                    local.get 67
                    v128.store offset=32 align=1
                    local.get 21
                    local.get 68
                    v128.store offset=16 align=1
                    local.get 21
                    local.get 105
                    v128.store align=1
                    local.get 43
                    local.get 14
                    i32.add
                    local.tee 21
                    local.get 62
                    v128.store offset=48 align=1
                    local.get 21
                    local.get 63
                    v128.store offset=32 align=1
                    local.get 21
                    local.get 64
                    v128.store offset=16 align=1
                    local.get 21
                    local.get 65
                    v128.store align=1
                    local.get 16
                    local.get 14
                    i32.add
                    local.tee 21
                    local.get 56
                    v128.store offset=48 align=1
                    local.get 21
                    local.get 58
                    v128.store offset=32 align=1
                    local.get 21
                    local.get 60
                    v128.store offset=16 align=1
                    local.get 21
                    local.get 61
                    v128.store align=1
                    local.get 20
                    local.get 14
                    i32.add
                    local.tee 21
                    local.get 55
                    v128.store offset=48 align=1
                    local.get 21
                    local.get 57
                    v128.store offset=32 align=1
                    local.get 21
                    local.get 59
                    v128.store offset=16 align=1
                    local.get 21
                    local.get 54
                    v128.store align=1
                    local.get 17
                    local.get 27
                    i32.add
                    local.set 17
                    local.get 50
                    local.get 34
                    i32.eq
                    local.set 21
                    local.get 50
                    i32.const 1
                    i32.add
                    local.set 50
                    local.get 21
                    i32.eqz
                    br_if 0 (;@8;)
                  end
                  local.get 89
                  local.set 14
                end
                block  ;; label = @7
                  local.get 14
                  local.get 19
                  i32.ge_s
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 18
                    i32.const 0
                    i32.gt_s
                    br_if 0 (;@8;)
                    local.get 14
                    i32.const 2
                    i32.shl
                    local.set 21
                    local.get 51
                    local.set 33
                    local.get 35
                    local.set 48
                    local.get 24
                    local.set 50
                    local.get 100
                    local.set 17
                    local.get 101
                    local.set 25
                    loop  ;; label = @9
                      local.get 48
                      local.get 21
                      i32.add
                      local.get 33
                      local.get 21
                      i32.add
                      v128.load align=1
                      local.tee 72
                      v128.store align=1
                      local.get 50
                      local.get 21
                      i32.add
                      local.get 72
                      v128.store align=1
                      local.get 17
                      local.get 21
                      i32.add
                      local.get 72
                      v128.store align=1
                      local.get 25
                      local.get 21
                      i32.add
                      local.get 72
                      v128.store align=1
                      local.get 33
                      i32.const 16
                      i32.add
                      local.set 33
                      local.get 48
                      i32.const 16
                      i32.add
                      local.set 48
                      local.get 50
                      i32.const 16
                      i32.add
                      local.set 50
                      local.get 17
                      i32.const 16
                      i32.add
                      local.set 17
                      local.get 25
                      i32.const 16
                      i32.add
                      local.set 25
                      local.get 14
                      i32.const 4
                      i32.add
                      local.tee 14
                      local.get 19
                      i32.lt_s
                      br_if 0 (;@9;)
                      br 2 (;@7;)
                    end
                  end
                  local.get 37
                  local.get 102
                  local.get 19
                  i32.mul
                  i32.const 2
                  i32.shl
                  i32.add
                  local.set 25
                  local.get 26
                  local.get 69
                  local.get 14
                  i32.mul
                  i32.add
                  local.set 50
                  loop  ;; label = @8
                    local.get 50
                    local.set 33
                    local.get 49
                    local.set 21
                    local.get 18
                    local.set 48
                    local.get 51
                    local.get 14
                    i32.const 2
                    i32.shl
                    local.tee 17
                    i32.add
                    v128.load align=1
                    local.tee 73
                    local.set 74
                    local.get 73
                    local.set 75
                    local.get 73
                    local.set 76
                    loop  ;; label = @9
                      local.get 33
                      v128.load align=1
                      local.tee 72
                      local.get 21
                      v128.load32_splat align=1
                      local.get 76
                      f32x4.relaxed_madd
                      local.set 76
                      local.get 72
                      local.get 21
                      local.get 71
                      i32.add
                      v128.load32_splat align=1
                      local.get 73
                      f32x4.relaxed_madd
                      local.set 73
                      local.get 72
                      local.get 21
                      local.get 70
                      i32.add
                      v128.load32_splat align=1
                      local.get 74
                      f32x4.relaxed_madd
                      local.set 74
                      local.get 72
                      local.get 21
                      local.get 69
                      i32.add
                      v128.load32_splat align=1
                      local.get 75
                      f32x4.relaxed_madd
                      local.set 75
                      local.get 33
                      i32.const 16
                      i32.add
                      local.set 33
                      local.get 21
                      i32.const 4
                      i32.add
                      local.set 21
                      local.get 48
                      i32.const -1
                      i32.add
                      local.tee 48
                      br_if 0 (;@9;)
                    end
                    local.get 25
                    local.get 17
                    i32.add
                    local.tee 21
                    local.get 76
                    v128.store align=1
                    local.get 21
                    local.get 28
                    i32.add
                    local.get 75
                    v128.store align=1
                    local.get 21
                    local.get 30
                    i32.add
                    local.get 74
                    v128.store align=1
                    local.get 21
                    local.get 29
                    i32.add
                    local.get 73
                    v128.store align=1
                    local.get 50
                    local.get 38
                    i32.add
                    local.set 50
                    local.get 14
                    i32.const 4
                    i32.add
                    local.tee 14
                    local.get 19
                    i32.lt_s
                    br_if 0 (;@8;)
                  end
                end
                local.get 35
                local.get 44
                i32.add
                local.set 35
                local.get 24
                local.get 44
                i32.add
                local.set 24
                local.get 100
                local.get 44
                i32.add
                local.set 100
                local.get 101
                local.get 44
                i32.add
                local.set 101
                local.get 49
                local.get 38
                i32.add
                local.set 49
                local.get 39
                i32.const 1
                i32.add
                local.set 33
                local.get 47
                i32.const 4
                i32.add
                local.set 21
                local.get 39
                local.get 84
                i32.ne
                br_if 0 (;@6;)
              end
            end
            block  ;; label = @5
              local.get 22
              local.get 47
              i32.le_s
              br_if 0 (;@5;)
              local.get 22
              local.get 47
              i32.sub
              local.set 35
              local.get 103
              local.get 69
              local.get 47
              i32.mul
              i32.add
              local.set 49
              local.get 37
              local.get 28
              local.get 47
              i32.mul
              i32.add
              local.set 25
              i32.const 0
              local.set 39
              local.get 47
              local.set 20
              loop  ;; label = @6
                i32.const 0
                local.set 14
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 19
                        i32.const 16
                        i32.lt_s
                        br_if 0 (;@10;)
                        local.get 25
                        local.set 21
                        local.get 51
                        local.set 33
                        local.get 85
                        local.set 48
                        local.get 18
                        i32.const 0
                        i32.le_s
                        br_if 1 (;@9;)
                        local.get 37
                        local.get 39
                        local.get 47
                        i32.add
                        local.get 28
                        i32.mul
                        i32.add
                        local.set 43
                        i32.const 0
                        local.set 14
                        local.get 26
                        local.set 50
                        loop  ;; label = @11
                          local.get 51
                          local.get 14
                          i32.const 6
                          i32.shl
                          local.tee 17
                          i32.add
                          local.tee 21
                          v128.load offset=48 align=1
                          local.set 73
                          local.get 21
                          v128.load offset=32 align=1
                          local.set 74
                          local.get 21
                          v128.load offset=16 align=1
                          local.set 75
                          local.get 21
                          v128.load align=1
                          local.set 76
                          local.get 50
                          local.set 21
                          local.get 49
                          local.set 33
                          local.get 18
                          local.set 48
                          loop  ;; label = @12
                            local.get 21
                            v128.load align=1
                            local.get 33
                            v128.load32_splat align=1
                            local.tee 72
                            local.get 76
                            f32x4.relaxed_madd
                            local.set 76
                            local.get 21
                            i32.const 48
                            i32.add
                            v128.load align=1
                            local.get 72
                            local.get 73
                            f32x4.relaxed_madd
                            local.set 73
                            local.get 21
                            i32.const 32
                            i32.add
                            v128.load align=1
                            local.get 72
                            local.get 74
                            f32x4.relaxed_madd
                            local.set 74
                            local.get 21
                            i32.const 16
                            i32.add
                            v128.load align=1
                            local.get 72
                            local.get 75
                            f32x4.relaxed_madd
                            local.set 75
                            local.get 21
                            i32.const 64
                            i32.add
                            local.set 21
                            local.get 33
                            i32.const 4
                            i32.add
                            local.set 33
                            local.get 48
                            i32.const -1
                            i32.add
                            local.tee 48
                            br_if 0 (;@12;)
                          end
                          local.get 43
                          local.get 17
                          i32.add
                          local.tee 21
                          local.get 73
                          v128.store offset=48 align=1
                          local.get 21
                          local.get 74
                          v128.store offset=32 align=1
                          local.get 21
                          local.get 75
                          v128.store offset=16 align=1
                          local.get 21
                          local.get 76
                          v128.store align=1
                          local.get 50
                          local.get 27
                          i32.add
                          local.set 50
                          local.get 14
                          local.get 34
                          i32.ne
                          local.set 21
                          local.get 14
                          i32.const 1
                          i32.add
                          local.set 14
                          local.get 21
                          br_if 0 (;@11;)
                        end
                        local.get 89
                        local.set 14
                      end
                      local.get 14
                      local.get 19
                      i32.ge_s
                      br_if 2 (;@7;)
                      local.get 40
                      br_if 1 (;@8;)
                      local.get 103
                      local.get 20
                      local.get 18
                      i32.mul
                      i32.const 2
                      i32.shl
                      i32.add
                      local.set 16
                      local.get 37
                      local.get 20
                      local.get 19
                      i32.mul
                      i32.const 2
                      i32.shl
                      i32.add
                      local.set 43
                      local.get 26
                      local.get 69
                      local.get 14
                      i32.mul
                      i32.add
                      local.set 50
                      loop  ;; label = @10
                        local.get 51
                        local.get 14
                        i32.const 2
                        i32.shl
                        local.tee 17
                        i32.add
                        v128.load align=1
                        local.set 72
                        i32.const 0
                        local.set 21
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 18
                            i32.const 1
                            i32.eq
                            br_if 0 (;@12;)
                            i32.const 0
                            local.set 48
                            local.get 49
                            local.set 21
                            local.get 50
                            local.set 33
                            loop  ;; label = @13
                              local.get 33
                              i32.const 16
                              i32.add
                              v128.load align=1
                              local.get 21
                              i32.const 4
                              i32.add
                              v128.load32_splat align=1
                              local.get 33
                              v128.load align=1
                              local.get 21
                              v128.load32_splat align=1
                              local.get 72
                              f32x4.relaxed_madd
                              f32x4.relaxed_madd
                              local.set 72
                              local.get 21
                              i32.const 8
                              i32.add
                              local.set 21
                              local.get 33
                              i32.const 32
                              i32.add
                              local.set 33
                              local.get 52
                              local.get 48
                              i32.const -2
                              i32.add
                              local.tee 48
                              i32.ne
                              br_if 0 (;@13;)
                            end
                            local.get 46
                            i32.eqz
                            br_if 1 (;@11;)
                            i32.const 0
                            local.get 48
                            i32.sub
                            local.set 21
                          end
                          local.get 26
                          local.get 14
                          local.get 18
                          i32.mul
                          i32.const 2
                          i32.shl
                          i32.add
                          local.get 21
                          i32.const 4
                          i32.shl
                          i32.add
                          v128.load align=1
                          local.get 16
                          local.get 21
                          i32.const 2
                          i32.shl
                          i32.add
                          v128.load32_splat align=1
                          local.get 72
                          f32x4.relaxed_madd
                          local.set 72
                        end
                        local.get 43
                        local.get 17
                        i32.add
                        local.get 72
                        v128.store align=1
                        local.get 50
                        local.get 38
                        i32.add
                        local.set 50
                        local.get 14
                        i32.const 4
                        i32.add
                        local.tee 14
                        local.get 19
                        i32.lt_s
                        br_if 0 (;@10;)
                        br 3 (;@7;)
                      end
                    end
                    loop  ;; label = @9
                      local.get 33
                      i32.const 16
                      i32.add
                      v128.load align=1
                      local.set 72
                      local.get 33
                      i32.const 32
                      i32.add
                      v128.load align=1
                      local.set 73
                      local.get 33
                      v128.load align=1
                      local.set 74
                      local.get 21
                      i32.const 48
                      i32.add
                      local.get 33
                      i32.const 48
                      i32.add
                      v128.load align=1
                      v128.store align=1
                      local.get 21
                      i32.const 32
                      i32.add
                      local.get 73
                      v128.store align=1
                      local.get 21
                      i32.const 16
                      i32.add
                      local.get 72
                      v128.store align=1
                      local.get 21
                      local.get 74
                      v128.store align=1
                      local.get 21
                      i32.const 64
                      i32.add
                      local.set 21
                      local.get 33
                      i32.const 64
                      i32.add
                      local.set 33
                      local.get 48
                      i32.const -1
                      i32.add
                      local.tee 48
                      br_if 0 (;@9;)
                    end
                    local.get 89
                    local.set 14
                    local.get 89
                    local.get 19
                    i32.ge_s
                    br_if 1 (;@7;)
                  end
                  local.get 14
                  i32.const 2
                  i32.shl
                  local.set 21
                  loop  ;; label = @8
                    local.get 25
                    local.get 21
                    i32.add
                    local.get 51
                    local.get 21
                    i32.add
                    v128.load align=1
                    v128.store align=1
                    local.get 21
                    i32.const 16
                    i32.add
                    local.set 21
                    local.get 14
                    i32.const 4
                    i32.add
                    local.tee 14
                    local.get 19
                    i32.lt_s
                    br_if 0 (;@8;)
                  end
                end
                local.get 49
                local.get 69
                i32.add
                local.set 49
                local.get 25
                local.get 28
                i32.add
                local.set 25
                local.get 20
                i32.const 1
                i32.add
                local.set 20
                local.get 39
                i32.const 1
                i32.add
                local.tee 39
                local.get 35
                i32.ne
                br_if 0 (;@6;)
              end
            end
            block  ;; label = @5
              local.get 86
              i32.const 1
              i32.lt_s
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 88
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 21
                  br 1 (;@6;)
                end
                i32.const 16
                local.set 21
                local.get 93
                local.set 33
                loop  ;; label = @7
                  local.get 0
                  i32.load offset=48
                  local.get 21
                  i32.add
                  i32.const -16
                  i32.add
                  local.tee 48
                  local.get 48
                  v128.load align=1
                  local.get 0
                  i32.load offset=64
                  local.get 21
                  i32.add
                  i32.const -16
                  i32.add
                  v128.load align=1
                  f32x4.add
                  v128.store align=1
                  local.get 0
                  i32.load offset=48
                  local.get 21
                  i32.add
                  local.tee 48
                  local.get 48
                  v128.load align=1
                  local.get 0
                  i32.load offset=64
                  local.get 21
                  i32.add
                  v128.load align=1
                  f32x4.add
                  v128.store align=1
                  local.get 21
                  i32.const 32
                  i32.add
                  local.set 21
                  local.get 33
                  i32.const -2
                  i32.add
                  local.tee 33
                  br_if 0 (;@7;)
                end
                local.get 96
                local.set 21
                local.get 87
                br_if 1 (;@5;)
              end
              local.get 0
              i32.load offset=48
              local.get 21
              i32.const 2
              i32.shl
              local.tee 21
              i32.add
              local.tee 33
              local.get 33
              v128.load align=1
              local.get 0
              i32.load offset=64
              local.get 21
              i32.add
              v128.load align=1
              f32x4.add
              v128.store align=1
            end
            local.get 82
            i32.const 1
            i32.add
            local.tee 82
            local.get 0
            i32.load offset=20
            i32.lt_s
            br_if 0 (;@4;)
          end
        end
        local.get 0
        i32.load offset=52
        local.set 39
        block  ;; label = @3
          block  ;; label = @4
            local.get 22
            i32.const 0
            i32.gt_s
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=16
            local.set 52
            local.get 0
            i32.load offset=40
            local.set 29
            local.get 0
            i32.load offset=36
            local.set 38
            local.get 0
            i32.load offset=68
            local.set 50
            i32.const 0
            local.set 40
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 19
            i32.const 1
            i32.lt_s
            local.tee 15
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=32
            local.set 29
            local.get 19
            f32.convert_i32_s
            local.set 97
            local.get 19
            i32.const 2
            i32.shl
            local.set 31
            local.get 19
            i32.const -1
            i32.add
            local.tee 18
            i32.const 4
            i32.and
            local.set 51
            local.get 18
            i32.const 2
            i32.shr_u
            local.tee 14
            i32.const 1
            i32.add
            local.tee 21
            i32.const 2147483644
            i32.and
            local.set 27
            local.get 21
            i32.const 3
            i32.and
            local.set 52
            local.get 21
            i32.const 2147483646
            i32.and
            local.tee 17
            i32.const 2
            i32.shl
            local.set 49
            i32.const 0
            local.set 30
            local.get 39
            local.set 28
            local.get 0
            i32.load offset=48
            local.tee 50
            local.set 71
            loop  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 18
                    i32.const 12
                    i32.ge_u
                    br_if 0 (;@8;)
                    v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
                    local.set 72
                    i32.const 0
                    local.set 33
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.set 33
                  v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
                  local.set 72
                  local.get 27
                  local.set 69
                  local.get 71
                  local.set 21
                  loop  ;; label = @8
                    local.get 21
                    i32.const 48
                    i32.add
                    v128.load align=1
                    local.tee 73
                    local.get 73
                    local.get 21
                    i32.const 32
                    i32.add
                    v128.load align=1
                    local.tee 74
                    local.get 74
                    local.get 21
                    i32.const 16
                    i32.add
                    v128.load align=1
                    local.tee 75
                    local.get 75
                    local.get 21
                    v128.load align=1
                    local.tee 76
                    local.get 76
                    local.get 72
                    f32x4.relaxed_madd
                    f32x4.relaxed_madd
                    f32x4.relaxed_madd
                    f32x4.relaxed_madd
                    local.set 72
                    local.get 21
                    i32.const 64
                    i32.add
                    local.set 21
                    local.get 33
                    i32.const 16
                    i32.add
                    local.set 33
                    local.get 69
                    i32.const -4
                    i32.add
                    local.tee 69
                    br_if 0 (;@8;)
                  end
                  local.get 52
                  i32.eqz
                  br_if 1 (;@6;)
                end
                local.get 71
                local.get 33
                i32.const 2
                i32.shl
                i32.add
                local.set 21
                local.get 52
                local.set 33
                loop  ;; label = @7
                  local.get 21
                  v128.load align=1
                  local.tee 73
                  local.get 73
                  local.get 72
                  f32x4.relaxed_madd
                  local.set 72
                  local.get 21
                  i32.const 16
                  i32.add
                  local.set 21
                  local.get 33
                  i32.const -1
                  i32.add
                  local.tee 33
                  br_if 0 (;@7;)
                end
              end
              f32.const 0x1p+0 (;=1;)
              local.get 72
              f32x4.extract_lane 3
              local.get 72
              f32x4.extract_lane 2
              local.get 72
              f32x4.extract_lane 0
              local.get 72
              f32x4.extract_lane 1
              f32.add
              f32.add
              f32.add
              local.get 97
              f32.div
              f32.const 0x1p-23 (;=1.19209e-07;)
              f32.add
              f32.sqrt
              f32.div
              f32x4.splat
              local.set 72
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 14
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 21
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.set 21
                  local.get 17
                  local.set 33
                  loop  ;; label = @8
                    local.get 28
                    local.get 21
                    i32.add
                    local.tee 69
                    local.get 72
                    local.get 71
                    local.get 21
                    i32.add
                    local.tee 48
                    v128.load align=1
                    f32x4.mul
                    local.get 29
                    local.get 21
                    i32.add
                    local.tee 70
                    v128.load align=1
                    f32x4.mul
                    v128.store align=1
                    local.get 69
                    i32.const 16
                    i32.add
                    local.get 72
                    local.get 48
                    i32.const 16
                    i32.add
                    v128.load align=1
                    f32x4.mul
                    local.get 70
                    i32.const 16
                    i32.add
                    v128.load align=1
                    f32x4.mul
                    v128.store align=1
                    local.get 21
                    i32.const 32
                    i32.add
                    local.set 21
                    local.get 33
                    i32.const -2
                    i32.add
                    local.tee 33
                    br_if 0 (;@8;)
                  end
                  local.get 49
                  local.set 21
                  local.get 51
                  br_if 1 (;@6;)
                end
                local.get 39
                local.get 30
                local.get 19
                i32.mul
                i32.const 2
                i32.shl
                local.tee 33
                i32.add
                local.get 21
                i32.const 2
                i32.shl
                local.tee 21
                i32.add
                local.get 72
                local.get 50
                local.get 33
                i32.add
                local.get 21
                i32.add
                v128.load align=1
                f32x4.mul
                local.get 29
                local.get 21
                i32.add
                v128.load align=1
                f32x4.mul
                v128.store align=1
              end
              local.get 28
              local.get 31
              i32.add
              local.set 28
              local.get 71
              local.get 31
              i32.add
              local.set 71
              local.get 30
              i32.const 1
              i32.add
              local.tee 30
              local.get 22
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 0
            i32.load offset=52
            local.set 39
          end
          local.get 0
          i32.load offset=16
          local.set 52
          local.get 0
          i32.load offset=40
          local.set 29
          local.get 0
          i32.load offset=36
          local.set 38
          local.get 0
          i32.load offset=68
          local.set 50
          i32.const 0
          local.set 40
          local.get 23
          br_if 0 (;@3;)
          local.get 19
          i32.const 2
          i32.shl
          local.set 48
          i32.const 4
          local.set 21
          local.get 19
          i32.const 4
          i32.shl
          local.set 41
          local.get 19
          i32.const 12
          i32.mul
          local.set 70
          local.get 19
          i32.const 3
          i32.shl
          local.set 71
          local.get 52
          i32.const 4
          i32.shl
          local.set 43
          local.get 19
          i32.const 6
          i32.shl
          local.set 51
          local.get 22
          i32.const -4
          i32.add
          i32.const 2
          i32.shr_u
          local.set 45
          local.get 52
          i32.const -16
          i32.add
          local.tee 33
          i32.const 4
          i32.shr_u
          local.set 17
          local.get 33
          i32.const -16
          i32.and
          i32.const 16
          i32.add
          local.set 46
          i32.const 0
          local.set 33
          local.get 50
          local.set 20
          local.get 50
          local.get 52
          i32.const 2
          i32.shl
          local.tee 44
          i32.add
          local.tee 49
          local.set 26
          local.get 50
          local.get 52
          i32.const 3
          i32.shl
          local.tee 25
          i32.add
          local.tee 27
          local.set 47
          local.get 50
          local.get 52
          i32.const 12
          i32.mul
          local.tee 37
          i32.add
          local.tee 34
          local.set 36
          local.get 39
          local.set 18
          i32.const 0
          local.set 40
          loop  ;; label = @4
            local.get 40
            local.set 42
            local.get 21
            local.set 40
            local.get 33
            local.set 16
            i32.const 0
            local.set 28
            block  ;; label = @5
              local.get 52
              i32.const 16
              i32.lt_s
              br_if 0 (;@5;)
              local.get 43
              local.get 16
              i32.mul
              local.set 14
              i32.const 0
              local.set 30
              local.get 38
              local.set 31
              loop  ;; label = @6
                local.get 30
                i32.const 6
                i32.shl
                local.tee 21
                local.get 14
                i32.add
                local.set 28
                local.get 29
                local.get 21
                i32.add
                local.tee 21
                v128.load offset=48 align=1
                local.tee 55
                local.set 56
                local.get 21
                v128.load offset=32 align=1
                local.tee 57
                local.set 58
                local.get 21
                v128.load offset=16 align=1
                local.tee 59
                local.set 60
                local.get 21
                v128.load align=1
                local.tee 54
                local.set 61
                local.get 55
                local.set 62
                local.get 57
                local.set 63
                local.get 59
                local.set 64
                local.get 54
                local.set 65
                local.get 55
                local.set 66
                local.get 57
                local.set 67
                local.get 59
                local.set 68
                local.get 54
                local.set 105
                local.get 31
                local.set 21
                local.get 18
                local.set 33
                local.get 19
                local.set 69
                block  ;; label = @7
                  local.get 15
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    local.get 21
                    v128.load align=1
                    local.tee 72
                    local.get 33
                    v128.load32_splat align=1
                    local.tee 73
                    local.get 105
                    f32x4.relaxed_madd
                    local.set 105
                    local.get 21
                    i32.const 48
                    i32.add
                    v128.load align=1
                    local.tee 74
                    local.get 33
                    local.get 70
                    i32.add
                    v128.load32_splat align=1
                    local.tee 75
                    local.get 55
                    f32x4.relaxed_madd
                    local.set 55
                    local.get 21
                    i32.const 32
                    i32.add
                    v128.load align=1
                    local.tee 76
                    local.get 75
                    local.get 57
                    f32x4.relaxed_madd
                    local.set 57
                    local.get 21
                    i32.const 16
                    i32.add
                    v128.load align=1
                    local.tee 77
                    local.get 75
                    local.get 59
                    f32x4.relaxed_madd
                    local.set 59
                    local.get 74
                    local.get 33
                    local.get 71
                    i32.add
                    v128.load32_splat align=1
                    local.tee 78
                    local.get 56
                    f32x4.relaxed_madd
                    local.set 56
                    local.get 76
                    local.get 78
                    local.get 58
                    f32x4.relaxed_madd
                    local.set 58
                    local.get 77
                    local.get 78
                    local.get 60
                    f32x4.relaxed_madd
                    local.set 60
                    local.get 74
                    local.get 33
                    local.get 48
                    i32.add
                    v128.load32_splat align=1
                    local.tee 53
                    local.get 62
                    f32x4.relaxed_madd
                    local.set 62
                    local.get 76
                    local.get 53
                    local.get 63
                    f32x4.relaxed_madd
                    local.set 63
                    local.get 77
                    local.get 53
                    local.get 64
                    f32x4.relaxed_madd
                    local.set 64
                    local.get 72
                    local.get 75
                    local.get 54
                    f32x4.relaxed_madd
                    local.set 54
                    local.get 72
                    local.get 78
                    local.get 61
                    f32x4.relaxed_madd
                    local.set 61
                    local.get 72
                    local.get 53
                    local.get 65
                    f32x4.relaxed_madd
                    local.set 65
                    local.get 74
                    local.get 73
                    local.get 66
                    f32x4.relaxed_madd
                    local.set 66
                    local.get 76
                    local.get 73
                    local.get 67
                    f32x4.relaxed_madd
                    local.set 67
                    local.get 77
                    local.get 73
                    local.get 68
                    f32x4.relaxed_madd
                    local.set 68
                    local.get 21
                    i32.const 64
                    i32.add
                    local.set 21
                    local.get 33
                    i32.const 4
                    i32.add
                    local.set 33
                    local.get 69
                    i32.const -1
                    i32.add
                    local.tee 69
                    br_if 0 (;@8;)
                  end
                end
                local.get 50
                local.get 28
                i32.add
                local.tee 21
                local.get 66
                v128.store offset=48 align=1
                local.get 21
                local.get 67
                v128.store offset=32 align=1
                local.get 21
                local.get 68
                v128.store offset=16 align=1
                local.get 21
                local.get 105
                v128.store align=1
                local.get 49
                local.get 28
                i32.add
                local.tee 21
                local.get 62
                v128.store offset=48 align=1
                local.get 21
                local.get 63
                v128.store offset=32 align=1
                local.get 21
                local.get 64
                v128.store offset=16 align=1
                local.get 21
                local.get 65
                v128.store align=1
                local.get 27
                local.get 28
                i32.add
                local.tee 21
                local.get 56
                v128.store offset=48 align=1
                local.get 21
                local.get 58
                v128.store offset=32 align=1
                local.get 21
                local.get 60
                v128.store offset=16 align=1
                local.get 21
                local.get 61
                v128.store align=1
                local.get 34
                local.get 28
                i32.add
                local.tee 21
                local.get 55
                v128.store offset=48 align=1
                local.get 21
                local.get 57
                v128.store offset=32 align=1
                local.get 21
                local.get 59
                v128.store offset=16 align=1
                local.get 21
                local.get 54
                v128.store align=1
                local.get 31
                local.get 51
                i32.add
                local.set 31
                local.get 30
                local.get 17
                i32.eq
                local.set 21
                local.get 30
                i32.const 1
                i32.add
                local.set 30
                local.get 21
                i32.eqz
                br_if 0 (;@6;)
              end
              local.get 46
              local.set 28
            end
            block  ;; label = @5
              local.get 28
              local.get 52
              i32.ge_s
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 19
                i32.const 0
                i32.gt_s
                br_if 0 (;@6;)
                local.get 28
                i32.const 2
                i32.shl
                local.set 21
                local.get 29
                local.set 33
                local.get 20
                local.set 69
                local.get 26
                local.set 30
                local.get 47
                local.set 31
                local.get 36
                local.set 14
                loop  ;; label = @7
                  local.get 69
                  local.get 21
                  i32.add
                  local.get 33
                  local.get 21
                  i32.add
                  v128.load align=1
                  local.tee 72
                  v128.store align=1
                  local.get 30
                  local.get 21
                  i32.add
                  local.get 72
                  v128.store align=1
                  local.get 31
                  local.get 21
                  i32.add
                  local.get 72
                  v128.store align=1
                  local.get 14
                  local.get 21
                  i32.add
                  local.get 72
                  v128.store align=1
                  local.get 33
                  i32.const 16
                  i32.add
                  local.set 33
                  local.get 69
                  i32.const 16
                  i32.add
                  local.set 69
                  local.get 30
                  i32.const 16
                  i32.add
                  local.set 30
                  local.get 31
                  i32.const 16
                  i32.add
                  local.set 31
                  local.get 14
                  i32.const 16
                  i32.add
                  local.set 14
                  local.get 28
                  i32.const 4
                  i32.add
                  local.tee 28
                  local.get 52
                  i32.lt_s
                  br_if 0 (;@7;)
                  br 2 (;@5;)
                end
              end
              local.get 50
              local.get 42
              local.get 52
              i32.mul
              i32.const 2
              i32.shl
              i32.add
              local.set 14
              local.get 38
              local.get 48
              local.get 28
              i32.mul
              i32.add
              local.set 30
              loop  ;; label = @6
                local.get 30
                local.set 33
                local.get 18
                local.set 21
                local.get 19
                local.set 69
                local.get 29
                local.get 28
                i32.const 2
                i32.shl
                local.tee 31
                i32.add
                v128.load align=1
                local.tee 73
                local.set 74
                local.get 73
                local.set 75
                local.get 73
                local.set 76
                loop  ;; label = @7
                  local.get 33
                  v128.load align=1
                  local.tee 72
                  local.get 21
                  v128.load32_splat align=1
                  local.get 76
                  f32x4.relaxed_madd
                  local.set 76
                  local.get 72
                  local.get 21
                  local.get 70
                  i32.add
                  v128.load32_splat align=1
                  local.get 73
                  f32x4.relaxed_madd
                  local.set 73
                  local.get 72
                  local.get 21
                  local.get 71
                  i32.add
                  v128.load32_splat align=1
                  local.get 74
                  f32x4.relaxed_madd
                  local.set 74
                  local.get 72
                  local.get 21
                  local.get 48
                  i32.add
                  v128.load32_splat align=1
                  local.get 75
                  f32x4.relaxed_madd
                  local.set 75
                  local.get 33
                  i32.const 16
                  i32.add
                  local.set 33
                  local.get 21
                  i32.const 4
                  i32.add
                  local.set 21
                  local.get 69
                  i32.const -1
                  i32.add
                  local.tee 69
                  br_if 0 (;@7;)
                end
                local.get 14
                local.get 31
                i32.add
                local.tee 21
                local.get 76
                v128.store align=1
                local.get 21
                local.get 44
                i32.add
                local.get 75
                v128.store align=1
                local.get 21
                local.get 25
                i32.add
                local.get 74
                v128.store align=1
                local.get 21
                local.get 37
                i32.add
                local.get 73
                v128.store align=1
                local.get 30
                local.get 41
                i32.add
                local.set 30
                local.get 28
                i32.const 4
                i32.add
                local.tee 28
                local.get 52
                i32.lt_s
                br_if 0 (;@6;)
              end
            end
            local.get 20
            local.get 43
            i32.add
            local.set 20
            local.get 26
            local.get 43
            i32.add
            local.set 26
            local.get 47
            local.get 43
            i32.add
            local.set 47
            local.get 36
            local.get 43
            i32.add
            local.set 36
            local.get 18
            local.get 41
            i32.add
            local.set 18
            local.get 16
            i32.const 1
            i32.add
            local.set 33
            local.get 40
            i32.const 4
            i32.add
            local.set 21
            local.get 16
            local.get 45
            i32.ne
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 22
          local.get 40
          i32.le_s
          br_if 0 (;@3;)
          local.get 19
          i32.const 4
          i32.shl
          local.set 51
          local.get 19
          i32.const 2
          i32.shl
          local.set 41
          local.get 19
          i32.const 1
          i32.and
          local.set 49
          local.get 22
          local.get 40
          i32.sub
          local.set 44
          local.get 19
          i32.const 6
          i32.shl
          local.set 14
          i32.const 0
          local.set 27
          i32.const 0
          local.get 19
          i32.const 2147483646
          i32.and
          i32.sub
          local.set 48
          local.get 39
          local.get 40
          local.get 19
          i32.mul
          i32.const 2
          i32.shl
          i32.add
          local.set 30
          local.get 52
          i32.const -16
          i32.add
          local.tee 21
          i32.const 4
          i32.shr_u
          local.tee 15
          i32.const 1
          i32.add
          local.set 37
          local.get 21
          i32.const -16
          i32.and
          i32.const 16
          i32.add
          local.set 25
          local.get 50
          local.get 52
          i32.const 2
          i32.shl
          local.tee 34
          local.get 40
          i32.mul
          i32.add
          local.tee 43
          local.set 31
          loop  ;; label = @4
            i32.const 0
            local.set 70
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 52
                    i32.const 16
                    i32.lt_s
                    br_if 0 (;@8;)
                    local.get 31
                    local.set 21
                    local.get 29
                    local.set 33
                    local.get 37
                    local.set 69
                    local.get 19
                    i32.const 0
                    i32.le_s
                    br_if 1 (;@7;)
                    local.get 43
                    local.get 34
                    local.get 27
                    i32.mul
                    i32.add
                    local.set 18
                    i32.const 0
                    local.set 70
                    local.get 38
                    local.set 71
                    loop  ;; label = @9
                      local.get 29
                      local.get 70
                      i32.const 6
                      i32.shl
                      local.tee 28
                      i32.add
                      local.tee 21
                      v128.load offset=48 align=1
                      local.set 73
                      local.get 21
                      v128.load offset=32 align=1
                      local.set 74
                      local.get 21
                      v128.load offset=16 align=1
                      local.set 75
                      local.get 21
                      v128.load align=1
                      local.set 76
                      local.get 71
                      local.set 21
                      local.get 30
                      local.set 33
                      local.get 19
                      local.set 69
                      loop  ;; label = @10
                        local.get 21
                        v128.load align=1
                        local.get 33
                        v128.load32_splat align=1
                        local.tee 72
                        local.get 76
                        f32x4.relaxed_madd
                        local.set 76
                        local.get 21
                        i32.const 48
                        i32.add
                        v128.load align=1
                        local.get 72
                        local.get 73
                        f32x4.relaxed_madd
                        local.set 73
                        local.get 21
                        i32.const 32
                        i32.add
                        v128.load align=1
                        local.get 72
                        local.get 74
                        f32x4.relaxed_madd
                        local.set 74
                        local.get 21
                        i32.const 16
                        i32.add
                        v128.load align=1
                        local.get 72
                        local.get 75
                        f32x4.relaxed_madd
                        local.set 75
                        local.get 21
                        i32.const 64
                        i32.add
                        local.set 21
                        local.get 33
                        i32.const 4
                        i32.add
                        local.set 33
                        local.get 69
                        i32.const -1
                        i32.add
                        local.tee 69
                        br_if 0 (;@10;)
                      end
                      local.get 18
                      local.get 28
                      i32.add
                      local.tee 21
                      local.get 73
                      v128.store offset=48 align=1
                      local.get 21
                      local.get 74
                      v128.store offset=32 align=1
                      local.get 21
                      local.get 75
                      v128.store offset=16 align=1
                      local.get 21
                      local.get 76
                      v128.store align=1
                      local.get 71
                      local.get 14
                      i32.add
                      local.set 71
                      local.get 70
                      local.get 15
                      i32.ne
                      local.set 21
                      local.get 70
                      i32.const 1
                      i32.add
                      local.set 70
                      local.get 21
                      br_if 0 (;@9;)
                    end
                    local.get 25
                    local.set 70
                  end
                  local.get 70
                  local.get 52
                  i32.ge_s
                  br_if 2 (;@5;)
                  local.get 19
                  i32.const 1
                  i32.lt_s
                  br_if 1 (;@6;)
                  local.get 39
                  local.get 40
                  local.get 19
                  i32.mul
                  i32.const 2
                  i32.shl
                  i32.add
                  local.set 17
                  local.get 50
                  local.get 40
                  local.get 52
                  i32.mul
                  i32.const 2
                  i32.shl
                  i32.add
                  local.set 18
                  local.get 38
                  local.get 41
                  local.get 70
                  i32.mul
                  i32.add
                  local.set 71
                  loop  ;; label = @8
                    local.get 29
                    local.get 70
                    i32.const 2
                    i32.shl
                    local.tee 28
                    i32.add
                    v128.load align=1
                    local.set 72
                    i32.const 0
                    local.set 21
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 19
                        i32.const 1
                        i32.eq
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 69
                        local.get 30
                        local.set 21
                        local.get 71
                        local.set 33
                        loop  ;; label = @11
                          local.get 33
                          i32.const 16
                          i32.add
                          v128.load align=1
                          local.get 21
                          i32.const 4
                          i32.add
                          v128.load32_splat align=1
                          local.get 33
                          v128.load align=1
                          local.get 21
                          v128.load32_splat align=1
                          local.get 72
                          f32x4.relaxed_madd
                          f32x4.relaxed_madd
                          local.set 72
                          local.get 21
                          i32.const 8
                          i32.add
                          local.set 21
                          local.get 33
                          i32.const 32
                          i32.add
                          local.set 33
                          local.get 48
                          local.get 69
                          i32.const -2
                          i32.add
                          local.tee 69
                          i32.ne
                          br_if 0 (;@11;)
                        end
                        local.get 49
                        i32.eqz
                        br_if 1 (;@9;)
                        i32.const 0
                        local.get 69
                        i32.sub
                        local.set 21
                      end
                      local.get 38
                      local.get 70
                      local.get 19
                      i32.mul
                      i32.const 2
                      i32.shl
                      i32.add
                      local.get 21
                      i32.const 4
                      i32.shl
                      i32.add
                      v128.load align=1
                      local.get 17
                      local.get 21
                      i32.const 2
                      i32.shl
                      i32.add
                      v128.load32_splat align=1
                      local.get 72
                      f32x4.relaxed_madd
                      local.set 72
                    end
                    local.get 18
                    local.get 28
                    i32.add
                    local.get 72
                    v128.store align=1
                    local.get 71
                    local.get 51
                    i32.add
                    local.set 71
                    local.get 70
                    i32.const 4
                    i32.add
                    local.tee 70
                    local.get 52
                    i32.lt_s
                    br_if 0 (;@8;)
                    br 3 (;@5;)
                  end
                end
                loop  ;; label = @7
                  local.get 33
                  i32.const 16
                  i32.add
                  v128.load align=1
                  local.set 72
                  local.get 33
                  i32.const 32
                  i32.add
                  v128.load align=1
                  local.set 73
                  local.get 33
                  v128.load align=1
                  local.set 74
                  local.get 21
                  i32.const 48
                  i32.add
                  local.get 33
                  i32.const 48
                  i32.add
                  v128.load align=1
                  v128.store align=1
                  local.get 21
                  i32.const 32
                  i32.add
                  local.get 73
                  v128.store align=1
                  local.get 21
                  i32.const 16
                  i32.add
                  local.get 72
                  v128.store align=1
                  local.get 21
                  local.get 74
                  v128.store align=1
                  local.get 21
                  i32.const 64
                  i32.add
                  local.set 21
                  local.get 33
                  i32.const 64
                  i32.add
                  local.set 33
                  local.get 69
                  i32.const -1
                  i32.add
                  local.tee 69
                  br_if 0 (;@7;)
                end
                local.get 25
                local.set 70
                local.get 25
                local.get 52
                i32.ge_s
                br_if 1 (;@5;)
              end
              local.get 70
              i32.const 2
              i32.shl
              local.set 21
              loop  ;; label = @6
                local.get 31
                local.get 21
                i32.add
                local.get 29
                local.get 21
                i32.add
                v128.load align=1
                v128.store align=1
                local.get 21
                i32.const 16
                i32.add
                local.set 21
                local.get 70
                i32.const 4
                i32.add
                local.tee 70
                local.get 52
                i32.lt_s
                br_if 0 (;@6;)
              end
            end
            local.get 30
            local.get 41
            i32.add
            local.set 30
            local.get 31
            local.get 34
            i32.add
            local.set 31
            local.get 40
            i32.const 1
            i32.add
            local.set 40
            local.get 27
            i32.const 1
            i32.add
            local.tee 27
            local.get 44
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 0
        i32.load offset=12
        local.tee 70
        i32.const 3
        i32.add
        i32.const 4
        i32.div_s
        local.set 21
        block  ;; label = @3
          local.get 22
          i32.const 1
          i32.lt_s
          br_if 0 (;@3;)
          local.get 5
          local.get 11
          i32.mul
          local.tee 51
          local.get 79
          i32.const 2
          i32.shl
          i32.add
          local.set 17
          local.get 79
          i32.const -1
          i32.add
          local.set 49
          local.get 0
          i32.load offset=68
          local.tee 52
          i32.const 16
          i32.add
          local.set 29
          local.get 0
          i32.load offset=16
          local.tee 18
          i32.const 2
          i32.shl
          local.set 71
          i32.const 0
          local.set 28
          i32.const 0
          local.get 21
          i32.const 2
          i32.shl
          local.tee 33
          i32.sub
          local.set 50
          local.get 52
          local.get 70
          i32.const 2
          i32.shl
          i32.add
          local.set 30
          local.get 70
          local.get 33
          local.get 70
          i32.sub
          local.tee 14
          i32.const -4
          i32.and
          local.tee 19
          i32.add
          local.set 15
          local.get 52
          local.set 48
          loop  ;; label = @4
            local.get 52
            local.get 28
            local.get 18
            i32.mul
            i32.const 2
            i32.shl
            i32.add
            local.set 31
            block  ;; label = @5
              local.get 33
              local.get 70
              i32.le_s
              br_if 0 (;@5;)
              local.get 70
              local.set 21
              block  ;; label = @6
                local.get 14
                i32.const 4
                i32.lt_u
                br_if 0 (;@6;)
                local.get 19
                local.set 69
                local.get 30
                local.set 21
                loop  ;; label = @7
                  local.get 21
                  v128.const i32x4 0xff800000 0xff800000 0xff800000 0xff800000
                  v128.store align=4
                  local.get 21
                  i32.const 16
                  i32.add
                  local.set 21
                  local.get 69
                  i32.const -4
                  i32.add
                  local.tee 69
                  br_if 0 (;@7;)
                end
                local.get 15
                local.set 21
                local.get 14
                local.get 19
                i32.eq
                br_if 1 (;@5;)
              end
              local.get 50
              local.get 21
              i32.add
              local.set 69
              local.get 48
              local.get 21
              i32.const 2
              i32.shl
              i32.add
              local.set 21
              loop  ;; label = @6
                local.get 21
                i32.const -8388608
                i32.store
                local.get 21
                i32.const 4
                i32.add
                local.set 21
                local.get 69
                i32.const 1
                i32.add
                local.tee 69
                br_if 0 (;@6;)
              end
            end
            local.get 31
            v128.load align=1
            local.set 72
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 70
                  i32.const 5
                  i32.lt_s
                  br_if 0 (;@7;)
                  i32.const 4
                  local.set 69
                  local.get 29
                  local.set 21
                  loop  ;; label = @8
                    local.get 72
                    local.get 21
                    v128.load align=1
                    f32x4.pmax
                    local.set 72
                    local.get 21
                    i32.const 16
                    i32.add
                    local.set 21
                    local.get 69
                    i32.const 4
                    i32.add
                    local.tee 69
                    local.get 33
                    i32.lt_s
                    br_if 0 (;@8;)
                  end
                  local.get 72
                  local.get 72
                  local.get 72
                  i8x16.shuffle 8 9 10 11 12 13 14 15 0 1 2 3 4 5 6 7
                  f32x4.pmax
                  local.tee 72
                  local.get 72
                  local.get 72
                  i8x16.shuffle 4 5 6 7 0 1 2 3 12 13 14 15 8 9 10 11
                  f32x4.pmax
                  local.set 76
                  br 1 (;@6;)
                end
                local.get 70
                i32.const 1
                i32.lt_s
                br_if 1 (;@5;)
                local.get 72
                local.get 72
                local.get 72
                i8x16.shuffle 8 9 10 11 12 13 14 15 0 1 2 3 4 5 6 7
                f32x4.pmax
                local.tee 72
                local.get 72
                local.get 72
                i8x16.shuffle 4 5 6 7 0 1 2 3 12 13 14 15 8 9 10 11
                f32x4.pmax
                local.set 76
              end
              v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
              local.set 74
              i32.const 0
              local.set 69
              local.get 48
              local.set 21
              loop  ;; label = @6
                local.get 21
                v128.const i32x4 0x3ab60b61 0x3ab60b61 0x3ab60b61 0x3ab60b61
                local.get 21
                v128.load align=1
                local.get 76
                f32x4.sub
                v128.const i32x4 0x42b20000 0x42b20000 0x42b20000 0x42b20000
                f32x4.pmin
                v128.const i32x4 0xc2d20000 0xc2d20000 0xc2d20000 0xc2d20000
                f32x4.pmax
                local.tee 72
                local.get 72
                v128.const i32x4 0x3fb8aa3b 0x3fb8aa3b 0x3fb8aa3b 0x3fb8aa3b
                f32x4.mul
                f32x4.nearest
                local.tee 73
                v128.const i32x4 0xbf317200 0xbf317200 0xbf317200 0xbf317200
                f32x4.mul
                f32x4.add
                local.get 73
                v128.const i32x4 0xb5bfbe8e 0xb5bfbe8e 0xb5bfbe8e 0xb5bfbe8e
                f32x4.mul
                f32x4.add
                local.tee 72
                v128.const i32x4 0x3c088889 0x3c088889 0x3c088889 0x3c088889
                f32x4.relaxed_madd
                local.get 72
                v128.const i32x4 0x3d2aaaab 0x3d2aaaab 0x3d2aaaab 0x3d2aaaab
                f32x4.relaxed_madd
                local.get 72
                v128.const i32x4 0x3e2aaaab 0x3e2aaaab 0x3e2aaaab 0x3e2aaaab
                f32x4.relaxed_madd
                local.get 72
                v128.const i32x4 0x3f000000 0x3f000000 0x3f000000 0x3f000000
                f32x4.relaxed_madd
                local.get 72
                v128.const i32x4 0x3f800000 0x3f800000 0x3f800000 0x3f800000
                local.tee 75
                f32x4.relaxed_madd
                local.get 72
                local.get 75
                f32x4.relaxed_madd
                local.get 73
                i32x4.trunc_sat_f32x4_s
                local.tee 72
                i32.const 1
                i32x4.shr_s
                local.tee 73
                i32.const 23
                i32x4.shl
                v128.const i32x4 0x3f800000 0x3f800000 0x3f800000 0x3f800000
                local.tee 75
                i32x4.add
                f32x4.mul
                local.get 72
                local.get 73
                i32x4.sub
                i32.const 23
                i32x4.shl
                local.get 75
                i32x4.add
                f32x4.mul
                local.tee 72
                v128.store align=1
                local.get 74
                local.get 72
                f32x4.add
                local.set 74
                local.get 21
                i32.const 16
                i32.add
                local.set 21
                local.get 69
                i32.const 4
                i32.add
                local.tee 69
                local.get 33
                i32.lt_s
                br_if 0 (;@6;)
              end
              f32.const 0x1p+0 (;=1;)
              local.get 74
              f32x4.extract_lane 3
              local.get 74
              f32x4.extract_lane 2
              local.get 74
              f32x4.extract_lane 0
              local.get 74
              f32x4.extract_lane 1
              f32.add
              f32.add
              f32.add
              f32.div
              f32x4.splat
              local.set 72
              i32.const 0
              local.set 69
              local.get 48
              local.set 21
              loop  ;; label = @6
                local.get 21
                local.get 72
                local.get 21
                v128.load align=1
                f32x4.mul
                v128.store align=1
                local.get 21
                i32.const 16
                i32.add
                local.set 21
                local.get 69
                i32.const 4
                i32.add
                local.tee 69
                local.get 33
                i32.lt_s
                br_if 0 (;@6;)
              end
            end
            local.get 29
            local.get 71
            i32.add
            local.set 29
            local.get 48
            local.get 71
            i32.add
            local.set 48
            local.get 30
            local.get 71
            i32.add
            local.set 30
            local.get 28
            i32.const 1
            i32.add
            local.tee 28
            local.get 22
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 0
          i32.load offset=12
          local.tee 28
          i32.const 1
          i32.lt_s
          br_if 0 (;@3;)
          i32.const 0
          local.set 29
          local.get 2
          local.get 28
          local.get 51
          i32.mul
          i32.add
          local.get 0
          i32.load offset=68
          local.tee 48
          local.get 0
          i32.load offset=16
          i32.const 2
          i32.shl
          local.tee 52
          local.get 49
          i32.mul
          i32.add
          local.get 28
          i32.const 2
          i32.shl
          local.tee 18
          i32.add
          i32.lt_u
          local.get 48
          local.get 2
          local.get 28
          local.get 17
          i32.mul
          i32.add
          i32.lt_u
          i32.and
          local.get 52
          local.get 18
          i32.or
          i32.const 0
          i32.lt_s
          i32.or
          local.set 14
          local.get 28
          i32.const 3
          i32.and
          local.set 30
          local.get 28
          i32.const 2147483644
          i32.and
          local.set 31
          local.get 2
          local.get 28
          local.get 7
          i32.mul
          i32.add
          local.set 70
          loop  ;; label = @4
            i32.const 0
            local.set 69
            block  ;; label = @5
              block  ;; label = @6
                local.get 28
                i32.const 8
                i32.lt_u
                local.get 14
                i32.or
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                local.get 48
                local.set 21
                local.get 70
                local.set 33
                local.get 31
                local.set 69
                loop  ;; label = @7
                  local.get 33
                  local.get 21
                  v128.load align=4
                  v128.store align=4
                  local.get 21
                  i32.const 16
                  i32.add
                  local.set 21
                  local.get 33
                  i32.const 16
                  i32.add
                  local.set 33
                  local.get 69
                  i32.const -4
                  i32.add
                  local.tee 69
                  br_if 0 (;@7;)
                end
                local.get 31
                local.set 69
                local.get 28
                local.get 31
                i32.eq
                br_if 1 (;@5;)
              end
              local.get 69
              local.set 71
              block  ;; label = @6
                local.get 30
                i32.eqz
                br_if 0 (;@6;)
                local.get 30
                local.get 69
                i32.add
                local.set 71
                local.get 69
                i32.const 2
                i32.shl
                local.set 21
                local.get 30
                local.set 33
                loop  ;; label = @7
                  local.get 70
                  local.get 21
                  i32.add
                  local.get 48
                  local.get 21
                  i32.add
                  f32.load
                  f32.store
                  local.get 21
                  i32.const 4
                  i32.add
                  local.set 21
                  local.get 33
                  i32.const -1
                  i32.add
                  local.tee 33
                  br_if 0 (;@7;)
                end
              end
              local.get 69
              local.get 28
              i32.sub
              i32.const -4
              i32.gt_u
              br_if 0 (;@5;)
              local.get 71
              i32.const 2
              i32.shl
              local.set 21
              local.get 28
              local.get 71
              i32.sub
              local.set 71
              loop  ;; label = @6
                local.get 70
                local.get 21
                i32.add
                local.tee 33
                local.get 48
                local.get 21
                i32.add
                local.tee 69
                f32.load
                f32.store
                local.get 33
                i32.const 4
                i32.add
                local.get 69
                i32.const 4
                i32.add
                f32.load
                f32.store
                local.get 33
                i32.const 8
                i32.add
                local.get 69
                i32.const 8
                i32.add
                f32.load
                f32.store
                local.get 33
                i32.const 12
                i32.add
                local.get 69
                i32.const 12
                i32.add
                f32.load
                f32.store
                local.get 21
                i32.const 16
                i32.add
                local.set 21
                local.get 71
                i32.const -4
                i32.add
                local.tee 71
                br_if 0 (;@6;)
              end
            end
            local.get 48
            local.get 52
            i32.add
            local.set 48
            local.get 70
            local.get 18
            i32.add
            local.set 70
            local.get 29
            i32.const 1
            i32.add
            local.tee 29
            local.get 79
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 7
        local.get 5
        i32.add
        local.set 7
        local.get 8
        local.get 5
        i32.add
        local.set 8
        local.get 9
        local.get 5
        i32.add
        local.set 9
        local.get 10
        local.get 5
        i32.add
        local.set 10
        local.get 11
        i32.const 1
        i32.add
        local.set 11
        local.get 12
        local.get 4
        i32.sub
        local.set 12
        local.get 13
        local.get 4
        i32.add
        local.tee 13
        local.get 3
        i32.lt_s
        br_if 0 (;@2;)
      end
    end)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 1)
  (global (;0;) i32 (i32.const 65536))
  (export "memory" (memory 0))
  (export "forward_batch" (func $forward_batch))
  (export "__heap_base" (global 0))
  (@custom "name" "\00\0d\0cforward.wasm\01\10\01\00\0dforward_batch")
  (@custom "producers" "\01\0cprocessed-by\01\0eHomebrew clang\0623.1.5")
  (@custom "target_features" "\0a+\0bbulk-memory+\0fbulk-memory-opt+\16call-indirect-overlong+\0amultivalue+\0fmutable-globals+\13nontrapping-fptoint+\0freference-types+\0crelaxed-simd+\08sign-ext+\07simd128"))
