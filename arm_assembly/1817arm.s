	.text
	.p2align	2                               // -- Begin function ensure_assignable
	.type	ensure_assignable,@function
ensure_assignable:                      // @ensure_assignable
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	is_arithtype
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	adrp	x9, KIND_PTR
	ldr	x9, [x9, :lo12:KIND_PTR]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #16]
	bl	is_arithtype
	cbnz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, KIND_PTR
	ldr	x9, [x9, :lo12:KIND_PTR]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_8
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	is_same_struct
	cbz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_8
.LBB0_7:
	ldur	x0, [x29, #-8]
	bl	ty2s
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	ty2s
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	mov	x2, x0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_8
.LBB0_8:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	ensure_assignable, .Lfunc_end0-ensure_assignable
                                        // -- End function
	.type	KIND_PTR,@object                // @KIND_PTR
	.bss
	.globl	KIND_PTR
	.p2align	3
KIND_PTR:
	.xword	0                               // 0x0
	.size	KIND_PTR, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"incompatible kind: <%s> <%s>"
	.size	.L.str, 29
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ensure_assignable
	.addrsig_sym is_arithtype
	.addrsig_sym is_same_struct
	.addrsig_sym error
	.addrsig_sym ty2s
	.addrsig_sym KIND_PTR