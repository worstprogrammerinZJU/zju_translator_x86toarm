	.text
	.globl	jv_kind_name                    // -- Begin function jv_kind_name
	.p2align	2
	.type	jv_kind_name,@function
jv_kind_name:                           // @jv_kind_name
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-12]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	subs	x8, x8, #7
	b.hi	.LBB0_10
// %bb.1:
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_2:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-8]
	b	.LBB0_11
.LBB0_3:
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	stur	x8, [x29, #-8]
	b	.LBB0_11
.LBB0_4:
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	stur	x8, [x29, #-8]
	b	.LBB0_11
.LBB0_5:
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	stur	x8, [x29, #-8]
	b	.LBB0_11
.LBB0_6:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	stur	x8, [x29, #-8]
	b	.LBB0_11
.LBB0_7:
	adrp	x8, .L.str.4
	add	x8, x8, :lo12:.L.str.4
	stur	x8, [x29, #-8]
	b	.LBB0_11
.LBB0_8:
	adrp	x8, .L.str.5
	add	x8, x8, :lo12:.L.str.5
	stur	x8, [x29, #-8]
	b	.LBB0_11
.LBB0_9:
	adrp	x8, .L.str.6
	add	x8, x8, :lo12:.L.str.6
	stur	x8, [x29, #-8]
	b	.LBB0_11
.LBB0_10:
	mov	w0, wzr
	bl	assert
	adrp	x8, .L.str.7
	add	x8, x8, :lo12:.L.str.7
	stur	x8, [x29, #-8]
	b	.LBB0_11
.LBB0_11:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_kind_name, .Lfunc_end0-jv_kind_name
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_7-.Ltmp0
	.word	.LBB0_9-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_2-.Ltmp0
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_8-.Ltmp0
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"<invalid>"
	.size	.L.str, 10
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"null"
	.size	.L.str.1, 5
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"boolean"
	.size	.L.str.2, 8
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"number"
	.size	.L.str.3, 7
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"string"
	.size	.L.str.4, 7
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"array"
	.size	.L.str.5, 6
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"object"
	.size	.L.str.6, 7
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"<unknown>"
	.size	.L.str.7, 10
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert