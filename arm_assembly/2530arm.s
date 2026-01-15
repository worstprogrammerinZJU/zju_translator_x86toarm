	.text
	.globl	get_home                        // -- Begin function get_home
	.p2align	2
	.type	get_home,@function
get_home:                               // @get_home
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	getenv
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	bl	getuid
	bl	getpwuid
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	jv_string
	stur	w0, [x29, #-4]
	b	.LBB0_4
.LBB0_3:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	jv_string
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-4]
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_6
.LBB0_5:
	ldr	x0, [sp, #16]
	bl	jv_string
	stur	w0, [x29, #-4]
	b	.LBB0_6
.LBB0_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	get_home, .Lfunc_end0-get_home
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"HOME"
	.size	.L.str, 5
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Could not find home directory."
	.size	.L.str.1, 31
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym getenv
	.addrsig_sym getpwuid
	.addrsig_sym getuid
	.addrsig_sym jv_string
	.addrsig_sym jv_invalid_with_msg