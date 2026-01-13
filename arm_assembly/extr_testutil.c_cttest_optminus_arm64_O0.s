	.text
	.globl	cttest_optminus                 // -- Begin function cttest_optminus
	.p2align	2
	.type	cttest_optminus,@function
cttest_optminus:                        // @cttest_optminus
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, .L__const.cttest_optminus.args
	add	x8, x8, :lo12:.L__const.cttest_optminus.args
	ldr	q0, [x8]
	add	x8, sp, #16
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	str	q0, [sp, #16]
	adrp	x8, success
	ldr	w0, [x8, :lo12:success]
	bl	atexit
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	adrp	x0, srv
	add	x0, x0, :lo12:srv
	bl	optparse
	mov	w0, wzr
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	assertf
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	cttest_optminus, .Lfunc_end0-cttest_optminus
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-"
	.size	.L.str, 2
	.type	.L__const.cttest_optminus.args,@object // @__const.cttest_optminus.args
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
.L__const.cttest_optminus.args:
	.xword	.L.str
	.xword	0
	.size	.L__const.cttest_optminus.args, 16
	.type	success,@object                 // @success
	.bss
	.globl	success
	.p2align	2
success:
	.word	0                               // 0x0
	.size	success, 4
	.type	srv,@object                     // @srv
	.globl	srv
	.p2align	2
srv:
	.word	0                               // 0x0
	.size	srv, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"optparse failed to call exit"
	.size	.L.str.1, 29
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym atexit
	.addrsig_sym optparse
	.addrsig_sym assertf
	.addrsig_sym success
	.addrsig_sym srv