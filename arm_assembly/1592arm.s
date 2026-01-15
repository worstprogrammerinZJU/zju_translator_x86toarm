	.text
	.p2align	2                               // -- Begin function newpattfunc
	.type	newpattfunc,@function
newpattfunc:                            // @newpattfunc
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldr	x0, [sp, #16]
	bl	instsize
	add	w8, w0, #1
	str	w8, [sp, #12]
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #12]
	bl	newpatt
	str	x0, [sp]
	adrp	x8, IFunc
	ldr	w8, [x8, :lo12:IFunc]
	ldr	x9, [sp]
	str	w8, [x9, #12]
	ldr	w8, [sp, #12]
	ldr	x9, [sp]
	str	w8, [x9, #8]
	ldur	w8, [x29, #-12]
	ldr	x9, [sp]
	str	w8, [x9, #20]
	ldr	x8, [sp]
	ldr	w0, [x8, #32]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	bl	memcpy
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	newpattfunc, .Lfunc_end0-newpattfunc
                                        // -- End function
	.type	IFunc,@object                   // @IFunc
	.bss
	.globl	IFunc
	.p2align	2
IFunc:
	.word	0                               // 0x0
	.size	IFunc, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym newpattfunc
	.addrsig_sym instsize
	.addrsig_sym newpatt
	.addrsig_sym memcpy
	.addrsig_sym IFunc