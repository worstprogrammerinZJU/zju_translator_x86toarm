	.text
	.globl	make_route_layer                // -- Begin function make_route_layer
	.p2align	2
	.type	make_route_layer,@function
make_route_layer:                       // @make_route_layer
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	x2, [x29, #-16]
	str	x3, [sp, #24]
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	mov	w1, wzr
	mov	x2, #88
	bl	memset
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	adrp	x8, ROUTE
	ldr	w8, [x8, :lo12:ROUTE]
	str	w8, [x9, #80]
	ldur	w8, [x29, #-4]
	str	w8, [x9]
	ldur	w8, [x29, #-8]
	str	w8, [x9, #4]
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldr	x8, [sp, #24]
	str	x8, [x9, #16]
	str	wzr, [sp, #16]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #20]
	ldr	w2, [x8, x9, lsl #2]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	fprintf
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	ldr	w9, [x8, x9, lsl #2]
	ldr	w8, [sp, #16]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_4:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	fprintf
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #16]
	str	w8, [x9, #24]
	ldr	w8, [sp, #16]
	str	w8, [x9, #28]
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	mov	w1, #4
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8, #48]
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	bl	calloc
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x9, #32]
	adrp	x8, forward_route_layer
	ldr	w8, [x8, :lo12:forward_route_layer]
	str	w8, [x9, #76]
	adrp	x8, backward_route_layer
	ldr	w8, [x8, :lo12:backward_route_layer]
	str	w8, [x9, #72]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	make_route_layer, .Lfunc_end0-make_route_layer
                                        // -- End function
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"route "
	.size	.L.str, 7
	.type	ROUTE,@object                   // @ROUTE
	.bss
	.globl	ROUTE
	.p2align	2
ROUTE:
	.word	0                               // 0x0
	.size	ROUTE, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	" %d"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\n"
	.size	.L.str.2, 2
	.type	forward_route_layer,@object     // @forward_route_layer
	.bss
	.globl	forward_route_layer
	.p2align	2
forward_route_layer:
	.word	0                               // 0x0
	.size	forward_route_layer, 4
	.type	backward_route_layer,@object    // @backward_route_layer
	.globl	backward_route_layer
	.p2align	2
backward_route_layer:
	.word	0                               // 0x0
	.size	backward_route_layer, 4
	.type	backward_route_layer_gpu,@object // @backward_route_layer_gpu
	.globl	backward_route_layer_gpu
	.p2align	2
backward_route_layer_gpu:
	.word	0                               // 0x0
	.size	backward_route_layer_gpu, 4
	.type	forward_route_layer_gpu,@object // @forward_route_layer_gpu
	.globl	forward_route_layer_gpu
	.p2align	2
forward_route_layer_gpu:
	.word	0                               // 0x0
	.size	forward_route_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym stderr
	.addrsig_sym ROUTE
	.addrsig_sym forward_route_layer
	.addrsig_sym backward_route_layer