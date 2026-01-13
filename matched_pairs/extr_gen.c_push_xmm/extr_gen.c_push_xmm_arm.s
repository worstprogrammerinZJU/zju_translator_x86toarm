	.text
	.p2align	2                               // -- Begin function push_xmm
	.type	push_xmm,@function
push_xmm:                               // @push_xmm
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	ldur	w1, [x29, #-4]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	adrp	x9, stackpos
	ldr	w8, [x9, :lo12:stackpos]
	add	w8, w8, #8
	str	w8, [x9, :lo12:stackpos]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	push_xmm, .Lfunc_end0-push_xmm
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
	.asciz	"sub $8, #rsp"
	.size	.L.str, 13
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"movsd #xmm%d, (#rsp)"
	.size	.L.str.1, 21
	.type	stackpos,@object                // @stackpos
	.bss
	.globl	stackpos
	.p2align	2
stackpos:
	.word	0                               // 0x0
	.size	stackpos, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym push_xmm
	.addrsig_sym emit
	.addrsig_sym SAVE
	.addrsig_sym stackpos