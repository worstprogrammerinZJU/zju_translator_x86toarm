	.text
	.globl	sockwant                        // -- Begin function sockwant
	.p2align	2
	.type	sockwant,@function
sockwant:                               // @sockwant
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	mov	w1, wzr
	stur	wzr, [x29, #-16]
	add	x0, sp, #32
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	mov	x2, #80
	bl	memset
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x8, [sp, #24]
	str	xzr, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #24]
	str	w8, [x9, #28]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	adrp	x8, EV_DELETE
	ldr	w8, [x8, :lo12:EV_DELETE]
	ldr	x9, [sp, #24]
	str	w8, [x9, #16]
	ldr	x8, [sp, #24]
	add	x8, x8, #40
	str	x8, [sp, #24]
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-12]
	cbz	w8, .LBB0_9
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #24]
	str	w8, [x9, #28]
	ldur	w8, [x29, #-12]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	subs	w8, w8, #114
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #119
	b.eq	.LBB0_6
	b	.LBB0_7
.LBB0_5:
	adrp	x8, EVFILT_READ
	ldr	x8, [x8, :lo12:EVFILT_READ]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	b	.LBB0_8
.LBB0_6:
	adrp	x8, EVFILT_WRITE
	ldr	x8, [x8, :lo12:EVFILT_WRITE]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	b	.LBB0_8
.LBB0_7:
	adrp	x8, EVFILT_READ
	ldr	x8, [x8, :lo12:EVFILT_READ]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	adrp	x8, NOTE_LOWAT
	ldr	w8, [x8, :lo12:NOTE_LOWAT]
	ldr	x9, [sp, #24]
	str	w8, [x9, #24]
	adrp	x8, Infinity
	ldr	w8, [x8, :lo12:Infinity]
	ldr	x9, [sp, #24]
	str	w8, [x9, #20]
	b	.LBB0_8
.LBB0_8:
	adrp	x8, EV_ADD
	ldr	w8, [x8, :lo12:EV_ADD]
	ldr	x9, [sp, #24]
	str	w8, [x9, #16]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #24]
	str	x8, [x9, #8]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	str	x8, [x9]
	ldr	x8, [sp, #24]
	add	x8, x8, #40
	str	x8, [sp, #24]
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	.LBB0_9
.LBB0_9:
	adrp	x8, kq
	ldr	w0, [x8, :lo12:kq]
	ldur	w2, [x29, #-16]
	add	x1, sp, #32
	mov	x3, xzr
	mov	w4, wzr
	add	x5, sp, #16
	bl	kevent
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	sockwant, .Lfunc_end0-sockwant
                                        // -- End function
	.type	EV_DELETE,@object               // @EV_DELETE
	.bss
	.globl	EV_DELETE
	.p2align	2
EV_DELETE:
	.word	0                               // 0x0
	.size	EV_DELETE, 4
	.type	EVFILT_READ,@object             // @EVFILT_READ
	.globl	EVFILT_READ
	.p2align	3
EVFILT_READ:
	.xword	0
	.size	EVFILT_READ, 8
	.type	EVFILT_WRITE,@object            // @EVFILT_WRITE
	.globl	EVFILT_WRITE
	.p2align	3
EVFILT_WRITE:
	.xword	0
	.size	EVFILT_WRITE, 8
	.type	NOTE_LOWAT,@object              // @NOTE_LOWAT
	.globl	NOTE_LOWAT
	.p2align	2
NOTE_LOWAT:
	.word	0                               // 0x0
	.size	NOTE_LOWAT, 4
	.type	Infinity,@object                // @Infinity
	.globl	Infinity
	.p2align	2
Infinity:
	.word	0                               // 0x0
	.size	Infinity, 4
	.type	EV_ADD,@object                  // @EV_ADD
	.globl	EV_ADD
	.p2align	2
EV_ADD:
	.word	0                               // 0x0
	.size	EV_ADD, 4
	.type	kq,@object                      // @kq
	.globl	kq
	.p2align	2
kq:
	.word	0                               // 0x0
	.size	kq, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym kevent
	.addrsig_sym EV_DELETE
	.addrsig_sym EVFILT_READ
	.addrsig_sym EVFILT_WRITE
	.addrsig_sym NOTE_LOWAT
	.addrsig_sym Infinity
	.addrsig_sym EV_ADD
	.addrsig_sym kq