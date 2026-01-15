	.text
	.globl	sigmaDeltaAttachPin             // -- Begin function sigmaDeltaAttachPin
	.p2align	2
	.type	sigmaDeltaAttachPin,@function
sigmaDeltaAttachPin:                    // @sigmaDeltaAttachPin
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #7
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_3
.LBB0_2:
	ldur	w0, [x29, #-4]
	adrp	x8, OUTPUT
	ldr	w1, [x8, :lo12:OUTPUT]
	bl	pinMode
	ldur	w0, [x29, #-4]
	adrp	x8, GPIO_SD0_OUT_IDX
	ldr	x8, [x8, :lo12:GPIO_SD0_OUT_IDX]
	ldrsw	x9, [sp, #8]
	add	x1, x8, x9
	mov	w3, wzr
	mov	w2, w3
	bl	pinMatrixOutAttach
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	sigmaDeltaAttachPin, .Lfunc_end0-sigmaDeltaAttachPin
                                        // -- End function
	.type	OUTPUT,@object                  // @OUTPUT
	.bss
	.globl	OUTPUT
	.p2align	2
OUTPUT:
	.word	0                               // 0x0
	.size	OUTPUT, 4
	.type	GPIO_SD0_OUT_IDX,@object        // @GPIO_SD0_OUT_IDX
	.globl	GPIO_SD0_OUT_IDX
	.p2align	3
GPIO_SD0_OUT_IDX:
	.xword	0                               // 0x0
	.size	GPIO_SD0_OUT_IDX, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pinMode
	.addrsig_sym pinMatrixOutAttach
	.addrsig_sym OUTPUT
	.addrsig_sym GPIO_SD0_OUT_IDX