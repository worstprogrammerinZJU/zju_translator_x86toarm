	.text
	.globl	cttest_unix_auto_removal        // -- Begin function cttest_unix_auto_removal
	.p2align	2
	.type	cttest_unix_auto_removal,@function
cttest_unix_auto_removal:               // @cttest_unix_auto_removal
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	bl	SERVER_UNIX
	bl	kill_srvpid
	bl	SERVER_UNIX
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	cttest_unix_auto_removal, .Lfunc_end0-cttest_unix_auto_removal
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER_UNIX
	.addrsig_sym kill_srvpid