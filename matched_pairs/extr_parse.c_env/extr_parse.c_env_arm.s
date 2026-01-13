	.text
	.p2align	2                               // -- Begin function env
	.type	env,@function
env:                                    // @env
// %bb.0:
	sub	sp, sp, #16
	adrp	x8, localenv
	ldr	x8, [x8, :lo12:localenv]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, localenv
	ldr	x8, [x8, :lo12:localenv]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	adrp	x8, globalenv
	ldr	x8, [x8, :lo12:globalenv]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	env, .Lfunc_end0-env
                                        // -- End function
	.type	localenv,@object                // @localenv
	.bss
	.globl	localenv
	.p2align	3
localenv:
	.xword	0
	.size	localenv, 8
	.type	globalenv,@object               // @globalenv
	.globl	globalenv
	.p2align	3
globalenv:
	.xword	0
	.size	globalenv, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym env
	.addrsig_sym localenv
	.addrsig_sym globalenv