	.text
	.globl	input_position                  // -- Begin function input_position
	.p2align	2
	.type	input_position,@function
input_position:                         // @input_position
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, files
	ldr	w0, [x8, :lo12:files]
	bl	vec_len
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	str	x8, [sp, #8]
	b	.LBB0_3
.LBB0_2:
	adrp	x8, files
	ldr	w0, [x8, :lo12:files]
	bl	vec_tail
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	w1, [x8, #8]
	ldr	x8, [sp]
	ldr	w2, [x8, #4]
	ldr	x8, [sp]
	ldr	w3, [x8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	format
	str	x0, [sp, #8]
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	input_position, .Lfunc_end0-input_position
                                        // -- End function
	.type	files,@object                   // @files
	.bss
	.globl	files
	.p2align	2
files:
	.word	0                               // 0x0
	.size	files, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(unknown)"
	.size	.L.str, 10
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%s:%d:%d"
	.size	.L.str.1, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_len
	.addrsig_sym vec_tail
	.addrsig_sym format
	.addrsig_sym files