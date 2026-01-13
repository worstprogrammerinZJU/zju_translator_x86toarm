	.text
	.p2align	2                               // -- Begin function f_string_split
	.type	f_string_split,@function
f_string_split:                         // @f_string_split
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	str	w2, [sp, #8]
	ldr	w0, [sp, #12]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w0, [sp, #8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #12]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldr	w8, [sp, #8]
	str	w8, [sp]                        // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	ldr	w1, [sp]                        // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	ret_error2
	stur	w0, [x29, #-4]
	b	.LBB0_4
.LBB0_3:
	ldr	w0, [sp, #12]
	ldr	w1, [sp, #8]
	bl	jv_string_split
	stur	w0, [x29, #-4]
	b	.LBB0_4
.LBB0_4:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	f_string_split, .Lfunc_end0-f_string_split
                                        // -- End function
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.bss
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.xword	0                               // 0x0
	.size	JV_KIND_STRING, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"split input and separator must be strings"
	.size	.L.str, 42
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_string_split
	.addrsig_sym jv_get_kind
	.addrsig_sym ret_error2
	.addrsig_sym jv_string
	.addrsig_sym jv_string_split
	.addrsig_sym JV_KIND_STRING