	.text
	.p2align	2                               // -- Begin function f_halt_error
	.type	f_halt_error,@function
f_halt_error:                           // @f_halt_error
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	str	w2, [sp, #8]
	ldr	w0, [sp, #8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NUMBER
	ldr	x8, [x8, :lo12:JV_KIND_NUMBER]
	subs	x8, x0, x8
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w0, [sp, #8]
	bl	jv_free
	ldr	w0, [sp, #12]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	type_error
	stur	w0, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #8]
	ldr	w2, [sp, #12]
	bl	jq_halt
	bl	jv_true
	stur	w0, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	f_halt_error, .Lfunc_end0-f_halt_error
                                        // -- End function
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.xword	0                               // 0x0
	.size	JV_KIND_NUMBER, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"halt_error/1: number required"
	.size	.L.str, 30
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_halt_error
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_free
	.addrsig_sym type_error
	.addrsig_sym jq_halt
	.addrsig_sym jv_true
	.addrsig_sym JV_KIND_NUMBER