	.text
	.p2align	2                               // -- Begin function skip_parentheses
	.type	skip_parentheses,@function
skip_parentheses:                       // @skip_parentheses
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	get
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, TEOF
	ldr	x9, [x9, :lo12:TEOF]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	vec_push
	ldr	x0, [sp]
	mov	w1, #41
	bl	is_keyword
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp]
	mov	w1, #40
	bl	is_keyword
	cbz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	bl	skip_parentheses
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.Lfunc_end0:
	.size	skip_parentheses, .Lfunc_end0-skip_parentheses
                                        // -- End function
	.type	TEOF,@object                    // @TEOF
	.bss
	.globl	TEOF
	.p2align	3
TEOF:
	.xword	0                               // 0x0
	.size	TEOF, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"premature end of input"
	.size	.L.str, 23
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym skip_parentheses
	.addrsig_sym get
	.addrsig_sym error
	.addrsig_sym vec_push
	.addrsig_sym is_keyword
	.addrsig_sym TEOF