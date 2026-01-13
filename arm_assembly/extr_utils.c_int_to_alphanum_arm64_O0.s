	.text
	.globl	int_to_alphanum                 // -- Begin function int_to_alphanum
	.p2align	2
	.type	int_to_alphanum,@function
int_to_alphanum:                        // @int_to_alphanum
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #36
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #46
	strb	w8, [sp, #15]
	b	.LBB0_6
.LBB0_2:
	ldr	w8, [sp, #8]
	subs	w8, w8, #10
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #8]
	add	w8, w8, #48
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_4:
	ldr	w8, [sp, #8]
	add	w8, w8, #87
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	strb	w8, [sp, #15]
	b	.LBB0_6
.LBB0_6:
	ldrb	w0, [sp, #15]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	int_to_alphanum, .Lfunc_end0-int_to_alphanum
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig