	.text
	.globl	configTime                      // -- Begin function configTime
	.p2align	2
	.type	configTime,@function
configTime:                             // @configTime
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	str	x4, [sp, #8]
	bl	tcpip_adapter_init
	bl	sntp_enabled
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	sntp_stop
	b	.LBB0_2
.LBB0_2:
	adrp	x8, SNTP_OPMODE_POLL
	ldr	w0, [x8, :lo12:SNTP_OPMODE_POLL]
	bl	sntp_setoperatingmode
	ldr	x1, [sp, #24]
	mov	w0, wzr
	bl	sntp_setservername
	ldr	x1, [sp, #16]
	mov	w0, #1
	bl	sntp_setservername
	ldr	x1, [sp, #8]
	mov	w0, #2
	bl	sntp_setservername
	bl	sntp_init
	ldur	x9, [x29, #-8]
	mov	x8, xzr
	subs	x0, x8, x9
	ldur	w1, [x29, #-12]
	bl	setTimeZone
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	configTime, .Lfunc_end0-configTime
                                        // -- End function
	.type	SNTP_OPMODE_POLL,@object        // @SNTP_OPMODE_POLL
	.bss
	.globl	SNTP_OPMODE_POLL
	.p2align	2
SNTP_OPMODE_POLL:
	.word	0                               // 0x0
	.size	SNTP_OPMODE_POLL, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tcpip_adapter_init
	.addrsig_sym sntp_enabled
	.addrsig_sym sntp_stop
	.addrsig_sym sntp_setoperatingmode
	.addrsig_sym sntp_setservername
	.addrsig_sym sntp_init
	.addrsig_sym setTimeZone
	.addrsig_sym SNTP_OPMODE_POLL