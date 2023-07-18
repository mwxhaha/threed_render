; ModuleID = 'E:/fpga/fpgacamp2023/threed_render/threed_render_hls/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_threed_render_hls_ir(float* noalias nocapture nonnull readonly %mesh_transmission, i8 zeroext %triangle_number, float* noalias nocapture nonnull %screen_transmission, i8 zeroext %screen_height, i8 zeroext %screen_width, float %rotation_x_theta, float %rotation_y_theta, float %rotation_z_theta, float %distance_transmission) local_unnamed_addr #0 {
entry:
  %mesh_transmission_copy = alloca [990 x float], align 512
  %malloccall = tail call i8* @malloc(i64 40000)
  %screen_transmission_copy = bitcast i8* %malloccall to [10000 x float]*
  %0 = bitcast float* %mesh_transmission to [990 x float]*
  %1 = bitcast float* %screen_transmission to [10000 x float]*
  call fastcc void @copy_in([990 x float]* nonnull %0, [990 x float]* nonnull align 512 %mesh_transmission_copy, [10000 x float]* nonnull %1, [10000 x float]* %screen_transmission_copy)
  %2 = getelementptr inbounds [990 x float], [990 x float]* %mesh_transmission_copy, i32 0, i32 0
  %3 = getelementptr inbounds [10000 x float], [10000 x float]* %screen_transmission_copy, i32 0, i32 0
  call void @apatb_threed_render_hls_hw(float* %2, i8 %triangle_number, float* %3, i8 %screen_height, i8 %screen_width, float %rotation_x_theta, float %rotation_y_theta, float %rotation_z_theta, float %distance_transmission)
  call void @copy_back([990 x float]* %0, [990 x float]* %mesh_transmission_copy, [10000 x float]* %1, [10000 x float]* %screen_transmission_copy)
  tail call void @free(i8* %malloccall)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([990 x float]* noalias readonly, [990 x float]* noalias align 512, [10000 x float]* noalias readonly, [10000 x float]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a990f32([990 x float]* align 512 %1, [990 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a10000f32([10000 x float]* %3, [10000 x float]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a990f32([990 x float]* noalias align 512, [990 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [990 x float]* %0, null
  %3 = icmp eq [990 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [990 x float], [990 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [990 x float], [990 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 990
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a10000f32([10000 x float]* noalias, [10000 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [10000 x float]* %0, null
  %3 = icmp eq [10000 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [10000 x float], [10000 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [10000 x float], [10000 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 10000
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([990 x float]* noalias, [990 x float]* noalias readonly align 512, [10000 x float]* noalias, [10000 x float]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a990f32([990 x float]* %0, [990 x float]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a10000f32([10000 x float]* %2, [10000 x float]* %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_threed_render_hls_hw(float*, i8, float*, i8, i8, float, float, float, float)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([990 x float]* noalias, [990 x float]* noalias readonly align 512, [10000 x float]* noalias, [10000 x float]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a10000f32([10000 x float]* %2, [10000 x float]* %3)
  ret void
}

define void @threed_render_hls_hw_stub_wrapper(float*, i8, float*, i8, i8, float, float, float, float) #4 {
entry:
  %9 = bitcast float* %0 to [990 x float]*
  %10 = bitcast float* %2 to [10000 x float]*
  call void @copy_out([990 x float]* null, [990 x float]* %9, [10000 x float]* null, [10000 x float]* %10)
  %11 = bitcast [990 x float]* %9 to float*
  %12 = bitcast [10000 x float]* %10 to float*
  call void @threed_render_hls_hw_stub(float* %11, i8 %1, float* %12, i8 %3, i8 %4, float %5, float %6, float %7, float %8)
  call void @copy_in([990 x float]* null, [990 x float]* %9, [10000 x float]* null, [10000 x float]* %10)
  ret void
}

declare void @threed_render_hls_hw_stub(float*, i8, float*, i8, i8, float, float, float, float)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
