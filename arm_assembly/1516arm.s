	.text
	.p2align	2                               // -- Begin function default_search
	.type	default_search,@function
default_search:                         // @default_search
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	w0, [sp, #12]
	bl	jv_is_valid
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w0, [sp, #12]
	bl	jv_free
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	bl	JV_ARRAY
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	jq_get_lib_dirs
	mov	w1, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	jv_array_concat
	stur	w0, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	ldr	w0, [sp, #12]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #12]
	bl	JV_ARRAY
	stur	w0, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	default_search, .Lfunc_end0-default_search
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"."
	.size	.L.str, 2
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.xword	0                               // 0x0
	.size	JV_KIND_ARRAY, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym default_search
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_free
	.addrsig_sym jv_array_concat
	.addrsig_sym JV_ARRAY
	.addrsig_sym jv_string
	.addrsig_sym jq_get_lib_dirs
	.addrsig_sym jv_get_kind
	.addrsig_sym JV_KIND_ARRAY