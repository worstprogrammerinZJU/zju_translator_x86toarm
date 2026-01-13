	.text
	.p2align	2                               // -- Begin function check_object_key
	.type	check_object_key,@function
check_object_key:                       // @check_object_key
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-8]
	ldur	w0, [x29, #-8]
	bl	block_is_const
	cbz	x0, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-8]
	bl	block_const_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	w0, [x29, #-8]
	bl	block_const_kind
	bl	jv_kind_name
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	block_const
	add	x1, sp, #9
	mov	w2, #15
	bl	jv_dump_string_trunc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w2, w0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string_fmt
	stur	w0, [x29, #-4]
	b	.LBB0_4
.LBB0_3:
	bl	jv_invalid
	stur	w0, [x29, #-4]
	b	.LBB0_4
.LBB0_4:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	check_object_key, .Lfunc_end0-check_object_key
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
	.asciz	"Cannot use %s (%s) as object key"
	.size	.L.str, 33
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym check_object_key
	.addrsig_sym block_is_const
	.addrsig_sym block_const_kind
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_kind_name
	.addrsig_sym jv_dump_string_trunc
	.addrsig_sym block_const
	.addrsig_sym jv_invalid
	.addrsig_sym JV_KIND_STRING