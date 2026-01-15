	.text
	.p2align	2                               // -- Begin function emit_intcast
	.type	emit_intcast,@function
emit_intcast:                           // @emit_intcast
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp]                        // 8-byte Folded Spill
	subs	x8, x8, #5
	b.hi	.LBB0_15
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
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #4]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	b	.LBB0_5
.LBB0_4:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_15
.LBB0_6:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #4]
	cbz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	b	.LBB0_9
.LBB0_8:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	emit
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_15
.LBB0_10:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #4]
	cbz	w8, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	emit
	b	.LBB0_13
.LBB0_12:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	emit
	b	.LBB0_13
.LBB0_13:
	b	.LBB0_15
.LBB0_14:
	b	.LBB0_15
.LBB0_15:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_intcast, .Lfunc_end0-emit_intcast
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_10-.Ltmp0
	.word	.LBB0_2-.Ltmp0
	.word	.LBB0_2-.Ltmp0
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"movzbq #al, #rax"
	.size	.L.str, 17
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"movsbq #al, #rax"
	.size	.L.str.1, 17
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"movzwq #ax, #rax"
	.size	.L.str.2, 17
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"movswq #ax, #rax"
	.size	.L.str.3, 17
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"mov #eax, #eax"
	.size	.L.str.4, 15
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"cltq"
	.size	.L.str.5, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_intcast
	.addrsig_sym emit