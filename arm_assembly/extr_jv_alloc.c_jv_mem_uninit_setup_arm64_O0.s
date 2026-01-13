	.text
	.globl	jv_mem_uninit_setup             // -- Begin function jv_mem_uninit_setup
	.p2align	2
	.type	jv_mem_uninit_setup,@function
jv_mem_uninit_setup:                    // @jv_mem_uninit_setup
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #1
	bl	malloc
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	adrp	x9, jv_mem_uninitialised
	strb	w8, [x9, :lo12:jv_mem_uninitialised]
	ldr	x0, [sp, #8]
	bl	free
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_mem_uninit_setup, .Lfunc_end0-jv_mem_uninit_setup
                                        // -- End function
	.type	jv_mem_uninitialised,@object    // @jv_mem_uninitialised
	.bss
	.globl	jv_mem_uninitialised
jv_mem_uninitialised:
	.byte	0                               // 0x0
	.size	jv_mem_uninitialised, 1
	.section	.init_array,"aw",@init_array
	.p2align	3
	.xword	jv_mem_uninit_setup
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_mem_uninit_setup
	.addrsig_sym malloc
	.addrsig_sym free
	.addrsig_sym jv_mem_uninitialised