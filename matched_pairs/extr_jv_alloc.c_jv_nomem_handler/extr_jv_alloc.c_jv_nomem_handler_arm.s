	.text
	.globl	jv_nomem_handler                // -- Begin function jv_nomem_handler
	.p2align	2
	.type	jv_nomem_handler,@function
jv_nomem_handler:                       // @jv_nomem_handler
// %bb.0:
	sub	sp, sp, #16
	adrp	x9, nomem_handler
	adrp	x10, nomem_handler
	add	x10, x10, :lo12:nomem_handler
	str	w0, [sp, #12]
	str	x1, [sp]
	ldr	w8, [sp, #12]
	str	w8, [x10, #8]
	ldr	x8, [sp]
	str	x8, [x9, :lo12:nomem_handler]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	jv_nomem_handler, .Lfunc_end0-jv_nomem_handler
                                        // -- End function
	.type	nomem_handler,@object           // @nomem_handler
	.bss
	.globl	nomem_handler
	.p2align	3
nomem_handler:
	.zero	16
	.size	nomem_handler, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nomem_handler