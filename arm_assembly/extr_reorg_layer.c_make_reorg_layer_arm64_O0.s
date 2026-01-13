	.text
	.globl	make_reorg_layer                // -- Begin function make_reorg_layer
	.p2align	2
	.type	make_reorg_layer,@function
make_reorg_layer:                       // @make_reorg_layer
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	mov	w8, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	stur	w8, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	stur	w4, [x29, #-20]
	stur	w5, [x29, #-24]
	stur	w6, [x29, #-28]
	str	w7, [sp, #32]
	mov	w1, wzr
	mov	x2, #112
	bl	memset
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	adrp	x8, REORG
	ldr	w8, [x8, :lo12:REORG]
	str	w8, [x9, #104]
	ldur	w8, [x29, #-4]
	str	w8, [x9]
	ldur	w8, [x29, #-20]
	str	w8, [x9, #4]
	ldr	w8, [sp, #32]
	str	w8, [x9, #8]
	ldur	w8, [x29, #-12]
	str	w8, [x9, #12]
	ldur	w8, [x29, #-8]
	str	w8, [x9, #16]
	ldur	w8, [x29, #-16]
	str	w8, [x9, #20]
	ldur	w8, [x29, #-28]
	str	w8, [x9, #24]
	ldur	w8, [x29, #-24]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-8]
	ldur	w10, [x29, #-20]
	mul	w8, w8, w10
	str	w8, [x9, #28]
	ldur	w8, [x29, #-12]
	ldur	w10, [x29, #-20]
	mul	w8, w8, w10
	str	w8, [x9, #32]
	ldur	w8, [x29, #-16]
	ldur	w10, [x29, #-20]
	ldur	w11, [x29, #-20]
	mul	w10, w10, w11
	sdiv	w8, w8, w10
	str	w8, [x9, #36]
	b	.LBB0_3
.LBB0_2:
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-8]
	ldur	w10, [x29, #-20]
	sdiv	w8, w8, w10
	str	w8, [x9, #28]
	ldur	w8, [x29, #-12]
	ldur	w10, [x29, #-20]
	sdiv	w8, w8, w10
	str	w8, [x9, #32]
	ldur	w8, [x29, #-16]
	ldur	w10, [x29, #-20]
	ldur	w11, [x29, #-20]
	mul	w10, w10, w11
	mul	w8, w8, w10
	str	w8, [x9, #36]
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldur	w9, [x29, #-24]
	str	w9, [x8, #40]
	ldr	w9, [x8, #32]
	ldr	w10, [x8, #28]
	mul	w9, w9, w10
	ldr	w10, [x8, #36]
	mul	w9, w9, w10
	str	w9, [x8, #44]
	ldur	w9, [x29, #-12]
	ldur	w10, [x29, #-8]
	mul	w9, w9, w10
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	str	w9, [x8, #48]
	ldr	w8, [x8, #8]
	cbz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	str	wzr, [x9, #36]
	str	wzr, [x9, #32]
	str	wzr, [x9, #28]
	ldr	w8, [x9, #48]
	ldr	w10, [x9, #8]
	add	w8, w8, w10
	str	w8, [x9, #44]
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #32]
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	adrp	x9, stderr
	ldr	w0, [x9, :lo12:stderr]
	ldr	w2, [x8, #48]
	ldr	w3, [x8, #44]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	b	.LBB0_8
.LBB0_7:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	adrp	x9, stderr
	ldr	w0, [x9, :lo12:stderr]
	ldur	w2, [x29, #-20]
	ldur	w3, [x29, #-8]
	ldur	w4, [x29, #-12]
	ldur	w5, [x29, #-16]
	ldr	w6, [x8, #28]
	ldr	w7, [x8, #32]
	ldr	w8, [x8, #36]
	mov	x9, sp
	str	w8, [x9]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	fprintf
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [x8, #44]
	ldur	w9, [x29, #-4]
	mul	w8, w8, w9
	str	w8, [sp, #28]
	ldr	w0, [sp, #28]
	mov	w1, #4
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #72]
	ldr	w0, [sp, #28]
	bl	calloc
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x9, #56]
	adrp	x8, forward_reorg_layer
	ldr	w8, [x8, :lo12:forward_reorg_layer]
	str	w8, [x9, #100]
	adrp	x8, backward_reorg_layer
	ldr	w8, [x8, :lo12:backward_reorg_layer]
	str	w8, [x9, #96]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	make_reorg_layer, .Lfunc_end0-make_reorg_layer
                                        // -- End function
	.type	REORG,@object                   // @REORG
	.bss
	.globl	REORG
	.p2align	2
REORG:
	.word	0                               // 0x0
	.size	REORG, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"reorg              %4d   ->  %4d\n"
	.size	.L.str, 34
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"reorg              /%2d  %4d x%4d x%4d   ->  %4d x%4d x%4d\n"
	.size	.L.str.1, 60
	.type	forward_reorg_layer,@object     // @forward_reorg_layer
	.bss
	.globl	forward_reorg_layer
	.p2align	2
forward_reorg_layer:
	.word	0                               // 0x0
	.size	forward_reorg_layer, 4
	.type	backward_reorg_layer,@object    // @backward_reorg_layer
	.globl	backward_reorg_layer
	.p2align	2
backward_reorg_layer:
	.word	0                               // 0x0
	.size	backward_reorg_layer, 4
	.type	backward_reorg_layer_gpu,@object // @backward_reorg_layer_gpu
	.globl	backward_reorg_layer_gpu
	.p2align	2
backward_reorg_layer_gpu:
	.word	0                               // 0x0
	.size	backward_reorg_layer_gpu, 4
	.type	forward_reorg_layer_gpu,@object // @forward_reorg_layer_gpu
	.globl	forward_reorg_layer_gpu
	.p2align	2
forward_reorg_layer_gpu:
	.word	0                               // 0x0
	.size	forward_reorg_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym REORG
	.addrsig_sym stderr
	.addrsig_sym forward_reorg_layer
	.addrsig_sym backward_reorg_layer