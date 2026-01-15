	.text
	.p2align	2                               // -- Begin function push
	.type	push,@function
push:                                   // @push
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x1, [sp, #8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	adrp	x9, stackpos
	ldr	w8, [x9, :lo12:stackpos]
	add	w8, w8, #8
	str	w8, [x9, :lo12:stackpos]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	push, .Lfunc_end0-push
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
	.asciz	"push #%s"
	.size	.L.str, 9
	.type	stackpos,@object                // @stackpos
	.bss
	.globl	stackpos
	.p2align	2
stackpos:
	.word	0                               // 0x0
	.size	stackpos, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym push
	.addrsig_sym emit
	.addrsig_sym SAVE
	.addrsig_sym stackpos