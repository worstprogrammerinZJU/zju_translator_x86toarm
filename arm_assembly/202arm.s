	.text
	.p2align	2                               // -- Begin function my_mktime
	.type	my_mktime,@function
my_mktime:                              // @my_mktime
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	getenv
	str	x0, [sp, #16]
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	strdup
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	mov	x8, xzr
	str	x8, [sp]                        // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, #1
	bl	setenv
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	bl	mktime
	str	x0, [sp, #8]
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x1, [sp, #16]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	mov	w2, #1
	bl	setenv
	b	.LBB0_7
.LBB0_7:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	my_mktime, .Lfunc_end0-my_mktime
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"TZ"
	.size	.L.str, 3
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym my_mktime
	.addrsig_sym getenv
	.addrsig_sym strdup
	.addrsig_sym setenv
	.addrsig_sym mktime