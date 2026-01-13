	.text
	.p2align	2                               // -- Begin function emit_ret
	.type	emit_ret,@function
emit_ret:                               // @emit_ret
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	emit_ret, .Lfunc_end0-emit_ret
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
	.asciz	"leave"
	.size	.L.str, 6
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"ret"
	.size	.L.str.1, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_ret
	.addrsig_sym emit
	.addrsig_sym SAVE