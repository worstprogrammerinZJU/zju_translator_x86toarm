	.text
	.p2align	2                               // -- Begin function capture_aux
	.type	capture_aux,@function
capture_aux:                            // @capture_aux
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	sub	x2, x29, #20
	bl	getpatt
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	mov	w1, wzr
	sub	x2, x29, #24
	bl	skipchecks
	stur	w0, [x29, #-36]
	ldur	w8, [x29, #-36]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	ldur	w8, [x29, #-20]
	mov	w9, #1
	str	w9, [sp, #36]                   // 4-byte Folded Spill
	add	w1, w8, #1
	bl	newpatt
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-16]
	bl	getlabel
	ldr	w2, [sp, #36]                   // 4-byte Folded Reload
	stur	w0, [x29, #-52]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-48]
	bl	addpatt
	ldur	x8, [x29, #-48]
	add	x8, x8, w0, sxtw #2
	stur	x8, [x29, #-48]
	ldur	x0, [x29, #-48]
	adrp	x8, IFullCapture
	ldr	w1, [x8, :lo12:IFullCapture]
	ldur	w2, [x29, #-52]
	ldur	w3, [x29, #-12]
	ldur	w4, [x29, #-24]
	bl	setinstcap
	b	.LBB0_3
.LBB0_2:
	ldur	x0, [x29, #-8]
	ldur	w8, [x29, #-20]
	mov	w9, #1
	str	w9, [sp, #28]                   // 4-byte Folded Spill
	add	w8, w8, #1
	add	w1, w8, #1
	bl	newpatt
	str	x0, [sp, #48]
	ldr	x8, [sp, #48]
	str	x8, [sp, #40]
	ldr	x8, [sp, #40]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	add	x8, x8, #4
	str	x8, [sp, #40]
	adrp	x8, IOpenCapture
	ldr	w8, [x8, :lo12:IOpenCapture]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-16]
	bl	getlabel
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldur	w3, [x29, #-12]
	mov	w4, wzr
	str	w4, [sp, #32]                   // 4-byte Folded Spill
	bl	setinstcap
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #40]
	bl	addpatt
	ldr	w4, [sp, #32]                   // 4-byte Folded Reload
	ldr	x8, [sp, #40]
	add	x8, x8, w0, sxtw #2
	str	x8, [sp, #40]
	ldr	x0, [sp, #40]
	adrp	x8, ICloseCapture
	ldr	w1, [x8, :lo12:ICloseCapture]
	adrp	x8, Cclose
	ldr	w3, [x8, :lo12:Cclose]
	mov	w2, w4
	bl	setinstcap
	ldr	x0, [sp, #48]
	bl	optimizecaptures
	b	.LBB0_3
.LBB0_3:
	mov	w0, #1
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	capture_aux, .Lfunc_end0-capture_aux
                                        // -- End function
	.type	IFullCapture,@object            // @IFullCapture
	.bss
	.globl	IFullCapture
	.p2align	2
IFullCapture:
	.word	0                               // 0x0
	.size	IFullCapture, 4
	.type	IOpenCapture,@object            // @IOpenCapture
	.globl	IOpenCapture
	.p2align	2
IOpenCapture:
	.word	0                               // 0x0
	.size	IOpenCapture, 4
	.type	ICloseCapture,@object           // @ICloseCapture
	.globl	ICloseCapture
	.p2align	2
ICloseCapture:
	.word	0                               // 0x0
	.size	ICloseCapture, 4
	.type	Cclose,@object                  // @Cclose
	.globl	Cclose
	.p2align	2
Cclose:
	.word	0                               // 0x0
	.size	Cclose, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym capture_aux
	.addrsig_sym getpatt
	.addrsig_sym skipchecks
	.addrsig_sym newpatt
	.addrsig_sym getlabel
	.addrsig_sym addpatt
	.addrsig_sym setinstcap
	.addrsig_sym optimizecaptures
	.addrsig_sym IFullCapture
	.addrsig_sym IOpenCapture
	.addrsig_sym ICloseCapture
	.addrsig_sym Cclose