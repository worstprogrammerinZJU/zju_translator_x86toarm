	.text
	.p2align	2                               // -- Begin function emit_to_bool
	.type	emit_to_bool,@function
emit_to_bool:                           // @emit_to_bool
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	is_flotype
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w0, #1
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	bl	push_xmm
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	ldr	x8, [sp, #8]
	ldr	x10, [x8]
	adrp	x8, KIND_FLOAT
	ldr	x11, [x8, :lo12:KIND_FLOAT]
	adrp	x9, .L.str.3
	add	x9, x9, :lo12:.L.str.3
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	subs	x10, x10, x11
	csel	x1, x8, x9, eq
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	emit
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	pop_xmm
	b	.LBB0_3
.LBB0_2:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	emit
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	emit
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	emit
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_to_bool, .Lfunc_end0-emit_to_bool
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"xorpd #xmm1, #xmm1"
	.size	.L.str, 19
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%s #xmm1, #xmm0"
	.size	.L.str.1, 16
	.type	KIND_FLOAT,@object              // @KIND_FLOAT
	.bss
	.globl	KIND_FLOAT
	.p2align	3
KIND_FLOAT:
	.xword	0                               // 0x0
	.size	KIND_FLOAT, 8
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"ucomiss"
	.size	.L.str.2, 8
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"ucomisd"
	.size	.L.str.3, 8
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"setne #al"
	.size	.L.str.4, 10
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"cmp $0, #rax"
	.size	.L.str.5, 13
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"movzb #al, #eax"
	.size	.L.str.6, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_to_bool
	.addrsig_sym is_flotype
	.addrsig_sym push_xmm
	.addrsig_sym emit
	.addrsig_sym pop_xmm
	.addrsig_sym SAVE
	.addrsig_sym KIND_FLOAT