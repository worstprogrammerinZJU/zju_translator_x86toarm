	.text
	.globl	make_shortcut_layer             // -- Begin function make_shortcut_layer
	.p2align	2
	.type	make_shortcut_layer,@function
make_shortcut_layer:                    // @make_shortcut_layer
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	stur	w4, [x29, #-20]
	stur	w5, [x29, #-24]
	stur	w6, [x29, #-28]
	str	w7, [sp, #32]
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	w2, [x29, #-8]
	ldur	w3, [x29, #-24]
	ldur	w4, [x29, #-28]
	ldr	w5, [sp, #32]
	ldur	w6, [x29, #-12]
	ldur	w7, [x29, #-16]
	ldur	w8, [x29, #-20]
	mov	x9, sp
	str	w8, [x9]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	mov	w1, wzr
	mov	x2, #96
	bl	memset
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	adrp	x9, SHORTCUT
	ldr	w9, [x9, :lo12:SHORTCUT]
	str	w9, [x8, #88]
	ldur	w9, [x29, #-4]
	str	w9, [x8]
	ldur	w9, [x29, #-24]
	str	w9, [x8, #4]
	ldur	w9, [x29, #-28]
	str	w9, [x8, #8]
	ldr	w9, [sp, #32]
	str	w9, [x8, #12]
	ldur	w9, [x29, #-12]
	str	w9, [x8, #16]
	ldur	w9, [x29, #-16]
	str	w9, [x8, #20]
	ldur	w9, [x29, #-20]
	str	w9, [x8, #24]
	ldur	w9, [x29, #-12]
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	ldur	w10, [x29, #-20]
	mul	w9, w9, w10
	str	w9, [x8, #28]
	ldr	w9, [x8, #28]
	str	w9, [x8, #32]
	ldur	w9, [x29, #-8]
	str	w9, [x8, #36]
	ldr	w8, [x8, #28]
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	mov	w1, #4
	str	w1, [sp, #20]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #56]
	ldr	w8, [x8, #28]
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	bl	calloc
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x9, #40]
	adrp	x8, forward_shortcut_layer
	ldr	w8, [x8, :lo12:forward_shortcut_layer]
	str	w8, [x9, #84]
	adrp	x8, backward_shortcut_layer
	ldr	w8, [x8, :lo12:backward_shortcut_layer]
	str	w8, [x9, #80]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	make_shortcut_layer, .Lfunc_end0-make_shortcut_layer
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
	.asciz	"res  %3d                %4d x%4d x%4d   ->  %4d x%4d x%4d\n"
	.size	.L.str, 59
	.type	SHORTCUT,@object                // @SHORTCUT
	.bss
	.globl	SHORTCUT
	.p2align	2
SHORTCUT:
	.word	0                               // 0x0
	.size	SHORTCUT, 4
	.type	forward_shortcut_layer,@object  // @forward_shortcut_layer
	.globl	forward_shortcut_layer
	.p2align	2
forward_shortcut_layer:
	.word	0                               // 0x0
	.size	forward_shortcut_layer, 4
	.type	backward_shortcut_layer,@object // @backward_shortcut_layer
	.globl	backward_shortcut_layer
	.p2align	2
backward_shortcut_layer:
	.word	0                               // 0x0
	.size	backward_shortcut_layer, 4
	.type	backward_shortcut_layer_gpu,@object // @backward_shortcut_layer_gpu
	.globl	backward_shortcut_layer_gpu
	.p2align	2
backward_shortcut_layer_gpu:
	.word	0                               // 0x0
	.size	backward_shortcut_layer_gpu, 4
	.type	forward_shortcut_layer_gpu,@object // @forward_shortcut_layer_gpu
	.globl	forward_shortcut_layer_gpu
	.p2align	2
forward_shortcut_layer_gpu:
	.word	0                               // 0x0
	.size	forward_shortcut_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym stderr
	.addrsig_sym SHORTCUT
	.addrsig_sym forward_shortcut_layer
	.addrsig_sym backward_shortcut_layer