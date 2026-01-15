	.text
	.p2align	2                               // -- Begin function conn_set_soonestjob
	.type	conn_set_soonestjob,@function
conn_set_soonestjob:                    // @conn_set_soonestjob
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.ge	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	b	.LBB0_3
.LBB0_3:
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	conn_set_soonestjob, .Lfunc_end0-conn_set_soonestjob
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym conn_set_soonestjob