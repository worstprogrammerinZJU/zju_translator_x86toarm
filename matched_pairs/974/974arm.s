	.text
	.p2align	2                               // -- Begin function emit_builtin_va_start
	.type	emit_builtin_va_start,@function
emit_builtin_va_start:                  // @emit_builtin_va_start
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	vec_len
	subs	w8, w0, #1
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	vec_head
	bl	emit_expr
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	str	x0, [sp]                        // 8-byte Folded Spill
	bl	push
	adrp	x8, numgp
	ldr	w8, [x8, :lo12:numgp]
	lsl	w1, w8, #3
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	adrp	x8, numfp
	ldr	w8, [x8, :lo12:numfp]
	lsl	w8, w8, #4
	add	w1, w8, #48
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	adrp	x8, REGAREA_SIZE
	ldr	w9, [x8, :lo12:REGAREA_SIZE]
	mov	w8, wzr
	subs	w1, w8, w9
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	emit
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	emit
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	pop
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_builtin_va_start, .Lfunc_end0-emit_builtin_va_start
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
	.asciz	"rcx"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"movl $%d, (#rax)"
	.size	.L.str.1, 17
	.type	numgp,@object                   // @numgp
	.bss
	.globl	numgp
	.p2align	2
numgp:
	.word	0                               // 0x0
	.size	numgp, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"movl $%d, 4(#rax)"
	.size	.L.str.2, 18
	.type	numfp,@object                   // @numfp
	.bss
	.globl	numfp
	.p2align	2
numfp:
	.word	0                               // 0x0
	.size	numfp, 4
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"lea %d(#rbp), #rcx"
	.size	.L.str.3, 19
	.type	REGAREA_SIZE,@object            // @REGAREA_SIZE
	.bss
	.globl	REGAREA_SIZE
	.p2align	2
REGAREA_SIZE:
	.word	0                               // 0x0
	.size	REGAREA_SIZE, 4
	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"mov #rcx, 16(#rax)"
	.size	.L.str.4, 19
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_builtin_va_start
	.addrsig_sym assert
	.addrsig_sym vec_len
	.addrsig_sym emit_expr
	.addrsig_sym vec_head
	.addrsig_sym push
	.addrsig_sym emit
	.addrsig_sym pop
	.addrsig_sym SAVE
	.addrsig_sym numgp
	.addrsig_sym numfp
	.addrsig_sym REGAREA_SIZE