	.text
	.globl	jv_free                         // -- Begin function jv_free
	.p2align	2
	.type	jv_free,@function
jv_free:                                // @jv_free
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	JVP_KIND
	subs	w8, w0, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp]                        // 8-byte Folded Spill
	subs	x8, x8, #4
	b.hi	.LBB0_7
// %bb.1:
	ldr	x11, [sp]                       // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_2:
	ldur	w0, [x29, #-4]
	bl	jvp_array_free
	b	.LBB0_7
.LBB0_3:
	ldur	w0, [x29, #-4]
	bl	jvp_string_free
	b	.LBB0_7
.LBB0_4:
	ldur	w0, [x29, #-4]
	bl	jvp_object_free
	b	.LBB0_7
.LBB0_5:
	ldur	w0, [x29, #-4]
	bl	jvp_invalid_free
	b	.LBB0_7
.LBB0_6:
	ldur	w0, [x29, #-4]
	bl	jvp_number_free
	b	.LBB0_7
.LBB0_7:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_free, .Lfunc_end0-jv_free
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_2-.Ltmp0
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JVP_KIND
	.addrsig_sym jvp_array_free
	.addrsig_sym jvp_string_free
	.addrsig_sym jvp_object_free
	.addrsig_sym jvp_invalid_free
	.addrsig_sym jvp_number_free