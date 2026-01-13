	.text
	.p2align	2                               // -- Begin function argcap_l
	.type	argcap_l,@function
argcap_l:                               // @argcap_l
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, Carg
	ldr	w1, [x8, :lo12:Carg]
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	emptycap_aux
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	argcap_l, .Lfunc_end0-argcap_l
                                        // -- End function
	.type	Carg,@object                    // @Carg
	.bss
	.globl	Carg
	.p2align	2
Carg:
	.word	0                               // 0x0
	.size	Carg, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid argument index"
	.size	.L.str, 23
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym argcap_l
	.addrsig_sym emptycap_aux
	.addrsig_sym Carg