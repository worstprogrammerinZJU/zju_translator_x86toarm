	.text
	.p2align	2                               // -- Begin function readc_string
	.type	readc_string,@function
readc_string:                           // @readc_string
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldrb	w8, [x8]
	cbnz	w8, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #8]
	subs	w8, w8, #10
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #8]
	adrp	x9, EOF
	ldrb	w9, [x9, :lo12:EOF]
	subs	w8, w8, w9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, EOF
	ldrb	w8, [x8, :lo12:EOF]
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_4:
	mov	w8, #10
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	str	w8, [sp, #4]
	b	.LBB0_12
.LBB0_6:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldrb	w8, [x8]
	subs	w8, w8, #13
	b.ne	.LBB0_10
	b	.LBB0_7
.LBB0_7:
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	add	x8, x8, #1
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldrb	w8, [x8]
	subs	w8, w8, #10
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	add	x8, x8, #1
	str	x8, [x9]
	b	.LBB0_9
.LBB0_9:
	mov	w8, #10
	str	w8, [sp, #4]
	b	.LBB0_11
.LBB0_10:
	ldr	x10, [sp, #8]
	ldr	x8, [x10]
	add	x9, x8, #1
	str	x9, [x10]
	ldrb	w8, [x8]
	str	w8, [sp, #4]
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	strb	w8, [x9, #8]
	ldr	w0, [sp, #4]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	readc_string, .Lfunc_end0-readc_string
                                        // -- End function
	.type	EOF,@object                     // @EOF
	.bss
	.globl	EOF
EOF:
	.byte	0                               // 0x0
	.size	EOF, 1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym readc_string
	.addrsig_sym EOF