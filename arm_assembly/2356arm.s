	.text
	.globl	sockwant                        // -- Begin function sockwant
	.p2align	2
	.type	sockwant,@function
sockwant:                               // @sockwant
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	wzr, [sp, #24]
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-20]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	subs	w8, w8, #114
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	subs	w8, w8, #119
	b.eq	.LBB0_4
	b	.LBB0_5
.LBB0_3:
	adrp	x8, POLLIN
	ldr	w9, [x8, :lo12:POLLIN]
	ldr	w8, [sp, #24]
	orr	w8, w8, w9
	str	w8, [sp, #24]
	b	.LBB0_5
.LBB0_4:
	adrp	x8, POLLOUT
	ldr	w9, [x8, :lo12:POLLOUT]
	ldr	w8, [sp, #24]
	orr	w8, w8, w9
	str	w8, [sp, #24]
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	adrp	x8, POLLPRI
	ldr	w9, [x8, :lo12:POLLPRI]
	ldr	w8, [sp, #24]
	orr	w8, w8, w9
	str	w8, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_9
	b	.LBB0_7
.LBB0_7:
	ldur	w8, [x29, #-20]
	cbnz	w8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	stur	wzr, [x29, #-4]
	b	.LBB0_15
.LBB0_9:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_12
	b	.LBB0_10
.LBB0_10:
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldur	x9, [x29, #-16]
	mov	w8, #1
	str	w8, [x9]
	adrp	x8, portfd
	ldr	w0, [x8, :lo12:portfd]
	adrp	x8, PORT_SOURCE_FD
	ldr	w1, [x8, :lo12:PORT_SOURCE_FD]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #4]
	ldr	w3, [sp, #24]
	ldur	x4, [x29, #-16]
	bl	port_associate
	stur	w0, [x29, #-4]
	b	.LBB0_15
.LBB0_12:
	ldur	w8, [x29, #-20]
	cbnz	w8, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	adrp	x8, portfd
	ldr	w0, [x8, :lo12:portfd]
	adrp	x8, PORT_SOURCE_FD
	ldr	w1, [x8, :lo12:PORT_SOURCE_FD]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #4]
	bl	port_dissociate
	stur	w0, [x29, #-4]
	b	.LBB0_15
.LBB0_14:
	adrp	x8, portfd
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:portfd]
	adrp	x8, PORT_SOURCE_FD
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w1, [x8, :lo12:PORT_SOURCE_FD]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #4]
	bl	port_dissociate
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x9, :lo12:portfd]
	ldr	w1, [x8, :lo12:PORT_SOURCE_FD]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #4]
	ldr	w3, [sp, #24]
	ldur	x4, [x29, #-16]
	bl	port_associate
	stur	w0, [x29, #-4]
	b	.LBB0_15
.LBB0_15:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	sockwant, .Lfunc_end0-sockwant
                                        // -- End function
	.type	POLLIN,@object                  // @POLLIN
	.bss
	.globl	POLLIN
	.p2align	2
POLLIN:
	.word	0                               // 0x0
	.size	POLLIN, 4
	.type	POLLOUT,@object                 // @POLLOUT
	.globl	POLLOUT
	.p2align	2
POLLOUT:
	.word	0                               // 0x0
	.size	POLLOUT, 4
	.type	POLLPRI,@object                 // @POLLPRI
	.globl	POLLPRI
	.p2align	2
POLLPRI:
	.word	0                               // 0x0
	.size	POLLPRI, 4
	.type	portfd,@object                  // @portfd
	.globl	portfd
	.p2align	2
portfd:
	.word	0                               // 0x0
	.size	portfd, 4
	.type	PORT_SOURCE_FD,@object          // @PORT_SOURCE_FD
	.globl	PORT_SOURCE_FD
	.p2align	2
PORT_SOURCE_FD:
	.word	0                               // 0x0
	.size	PORT_SOURCE_FD, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym port_associate
	.addrsig_sym port_dissociate
	.addrsig_sym POLLIN
	.addrsig_sym POLLOUT
	.addrsig_sym POLLPRI
	.addrsig_sym portfd
	.addrsig_sym PORT_SOURCE_FD