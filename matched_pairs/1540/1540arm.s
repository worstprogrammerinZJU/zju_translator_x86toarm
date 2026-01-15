	.text
	.globl	make_local_layer                // -- Begin function make_local_layer
	.p2align	2
	.type	make_local_layer,@function
make_local_layer:                       // @make_local_layer
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #512
	str	x8, [sp, #56]                   // 8-byte Folded Spill
	mov	w9, w0
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	ldr	w8, [x29, #32]
	stur	w9, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	stur	w4, [x29, #-20]
	stur	w5, [x29, #-24]
	stur	w6, [x29, #-28]
	stur	w7, [x29, #-32]
	stur	w8, [x29, #-36]
	mov	w1, wzr
	mov	x2, #192
	str	x2, [sp, #32]                   // 8-byte Folded Spill
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldr	x1, [sp, #56]                   // 8-byte Folded Reload
	adrp	x8, LOCAL
	ldr	w8, [x8, :lo12:LOCAL]
	str	w8, [x1, #184]
	ldur	w8, [x29, #-8]
	str	w8, [x1]
	ldur	w8, [x29, #-12]
	str	w8, [x1, #4]
	ldur	w8, [x29, #-16]
	str	w8, [x1, #8]
	ldur	w8, [x29, #-20]
	str	w8, [x1, #12]
	ldur	w8, [x29, #-4]
	str	w8, [x1, #16]
	ldur	w8, [x29, #-28]
	str	w8, [x1, #20]
	ldur	w8, [x29, #-24]
	str	w8, [x1, #24]
	ldur	w8, [x29, #-32]
	str	w8, [x1, #28]
	sub	x0, x29, #240
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	local_out_height
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldr	x1, [sp, #56]                   // 8-byte Folded Reload
	stur	w0, [x29, #-44]
	add	x0, sp, #72
	str	x0, [sp, #40]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	bl	local_out_width
	ldr	x9, [sp, #56]                   // 8-byte Folded Reload
	stur	w0, [x29, #-244]
	ldur	w8, [x29, #-44]
	ldur	w10, [x29, #-244]
	mul	w8, w8, w10
	str	w8, [sp, #68]
	ldur	w8, [x29, #-44]
	str	w8, [x9, #32]
	ldur	w8, [x29, #-244]
	str	w8, [x9, #36]
	ldur	w8, [x29, #-20]
	str	w8, [x9, #40]
	ldr	w8, [x9, #32]
	ldr	w10, [x9, #36]
	mul	w8, w8, w10
	ldr	w10, [x9, #40]
	mul	w8, w8, w10
	str	w8, [x9, #44]
	ldr	w8, [x9, #4]
	ldr	w10, [x9]
	mul	w8, w8, w10
	ldr	w10, [x9, #8]
	mul	w8, w8, w10
	str	w8, [x9, #48]
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-20]
	mul	w8, w8, w9
	ldur	w9, [x29, #-24]
	mul	w8, w8, w9
	ldur	w9, [x29, #-24]
	mul	w8, w8, w9
	ldr	w9, [sp, #68]
	mul	w0, w8, w9
	mov	w1, #4
	str	w1, [sp, #52]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #52]                   // 4-byte Folded Reload
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	str	x0, [x8, #56]
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-20]
	mul	w8, w8, w9
	ldur	w9, [x29, #-24]
	mul	w8, w8, w9
	ldur	w9, [x29, #-24]
	mul	w8, w8, w9
	ldr	w9, [sp, #68]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #52]                   // 4-byte Folded Reload
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	str	x0, [x8, #64]
	ldr	w0, [x8, #44]
	bl	calloc
	ldr	w1, [sp, #52]                   // 4-byte Folded Reload
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	str	x0, [x8, #72]
	ldr	w0, [x8, #44]
	bl	calloc
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	str	x0, [x8, #80]
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-24]
	mul	w8, w8, w9
	ldur	w9, [x29, #-16]
	mul	w8, w8, w9
	scvtf	d1, w8
	fmov	d0, #2.00000000
	fdiv	d0, d0, d1
	fcvtzs	w0, d0
	bl	sqrt
	str	s0, [sp, #64]
	stur	wzr, [x29, #-40]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-40]
	ldur	w9, [x29, #-16]
	ldur	w10, [x29, #-20]
	mul	w9, w9, w10
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	s0, [sp, #64]
	str	s0, [sp, #20]                   // 4-byte Folded Spill
	mov	w0, #-1
	mov	w1, #1
	bl	rand_uniform
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	fmov	s1, s0
	ldr	s0, [sp, #20]                   // 4-byte Folded Reload
	fmul	s0, s0, s1
	ldr	x8, [x8, #56]
	ldursw	x9, [x29, #-40]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-40]
	add	w8, w8, #1
	stur	w8, [x29, #-40]
	b	.LBB0_1
.LBB0_4:
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	w8, [x8, #16]
	ldur	w9, [x29, #-44]
	mul	w8, w8, w9
	ldur	w9, [x29, #-244]
	mul	w8, w8, w9
	ldur	w9, [x29, #-20]
	mul	w0, w8, w9
	mov	w1, #4
	str	w1, [sp, #16]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	str	x0, [x8, #88]
	ldr	w8, [x8, #16]
	ldur	w9, [x29, #-44]
	mul	w8, w8, w9
	ldur	w9, [x29, #-244]
	mul	w8, w8, w9
	ldur	w9, [x29, #-20]
	mul	w0, w8, w9
	bl	calloc
	ldr	x9, [sp, #56]                   // 8-byte Folded Reload
	str	x0, [x9, #96]
	ldur	w8, [x29, #-44]
	ldur	w10, [x29, #-244]
	mul	w8, w8, w10
	ldur	w10, [x29, #-24]
	mul	w8, w8, w10
	ldur	w10, [x29, #-24]
	mul	w8, w8, w10
	ldur	w10, [x29, #-16]
	mul	w8, w8, w10
	str	w8, [x9, #104]
	adrp	x8, forward_local_layer
	ldr	w8, [x8, :lo12:forward_local_layer]
	str	w8, [x9, #180]
	adrp	x8, backward_local_layer
	ldr	w8, [x8, :lo12:backward_local_layer]
	str	w8, [x9, #176]
	adrp	x8, update_local_layer
	ldr	w8, [x8, :lo12:update_local_layer]
	str	w8, [x9, #172]
	ldur	w8, [x29, #-36]
	str	w8, [x9, #108]
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	w2, [x29, #-8]
	ldur	w3, [x29, #-12]
	ldur	w4, [x29, #-16]
	ldur	w5, [x29, #-20]
	ldur	w6, [x29, #-44]
	ldur	w7, [x29, #-244]
	ldur	w8, [x29, #-20]
	mov	x9, sp
	str	w8, [x9]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	add	sp, sp, #512
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	make_local_layer, .Lfunc_end0-make_local_layer
                                        // -- End function
	.type	LOCAL,@object                   // @LOCAL
	.bss
	.globl	LOCAL
	.p2align	2
LOCAL:
	.word	0                               // 0x0
	.size	LOCAL, 4
	.type	forward_local_layer,@object     // @forward_local_layer
	.globl	forward_local_layer
	.p2align	2
forward_local_layer:
	.word	0                               // 0x0
	.size	forward_local_layer, 4
	.type	backward_local_layer,@object    // @backward_local_layer
	.globl	backward_local_layer
	.p2align	2
backward_local_layer:
	.word	0                               // 0x0
	.size	backward_local_layer, 4
	.type	update_local_layer,@object      // @update_local_layer
	.globl	update_local_layer
	.p2align	2
update_local_layer:
	.word	0                               // 0x0
	.size	update_local_layer, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Local Layer: %d x %d x %d image, %d filters -> %d x %d x %d image\n"
	.size	.L.str, 67
	.type	backward_local_layer_gpu,@object // @backward_local_layer_gpu
	.bss
	.globl	backward_local_layer_gpu
	.p2align	2
backward_local_layer_gpu:
	.word	0                               // 0x0
	.size	backward_local_layer_gpu, 4
	.type	forward_local_layer_gpu,@object // @forward_local_layer_gpu
	.globl	forward_local_layer_gpu
	.p2align	2
forward_local_layer_gpu:
	.word	0                               // 0x0
	.size	forward_local_layer_gpu, 4
	.type	update_local_layer_gpu,@object  // @update_local_layer_gpu
	.globl	update_local_layer_gpu
	.p2align	2
update_local_layer_gpu:
	.word	0                               // 0x0
	.size	update_local_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym local_out_height
	.addrsig_sym local_out_width
	.addrsig_sym calloc
	.addrsig_sym sqrt
	.addrsig_sym rand_uniform
	.addrsig_sym fprintf
	.addrsig_sym LOCAL
	.addrsig_sym forward_local_layer
	.addrsig_sym backward_local_layer
	.addrsig_sym update_local_layer
	.addrsig_sym stderr