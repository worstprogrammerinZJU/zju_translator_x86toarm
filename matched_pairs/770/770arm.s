	.text
	.globl	ledcWriteNote                   // -- Begin function ledcWriteNote
	.p2align	2
	.type	ledcWriteNote,@function
ledcWriteNote:                          // @ledcWriteNote
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	w0, [x29, #-12]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	add	x0, sp, #20
	adrp	x1, .L__const.ledcWriteNote.noteFrequencyBase
	add	x1, x1, :lo12:.L__const.ledcWriteNote.noteFrequencyBase
	mov	x2, #48
	bl	memcpy
	ldur	w8, [x29, #-28]
	subs	w8, w8, #8
	b.gt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-24]
	adrp	x9, NOTE_MAX
	ldr	x9, [x9, :lo12:NOTE_MAX]
	subs	x8, x8, x9
	b.lo	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	movi	d0, #0000000000000000
	stur	d0, [x29, #-8]
	b	.LBB0_4
.LBB0_3:
	ldur	x9, [x29, #-24]
	add	x8, sp, #20
	ldr	s1, [x8, x9, lsl #2]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldur	w9, [x29, #-28]
	mov	w8, #8
	subs	w9, w8, w9
	mov	w8, #1
	lsl	w8, w8, w9
	scvtf	d1, w8
	fdiv	d0, d0, d1
	str	d0, [sp, #8]
	ldur	w0, [x29, #-12]
	ldr	d0, [sp, #8]
	bl	ledcWriteTone
	stur	d0, [x29, #-8]
	b	.LBB0_4
.LBB0_4:
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	ledcWriteNote, .Lfunc_end0-ledcWriteNote
                                        // -- End function
	.type	.L__const.ledcWriteNote.noteFrequencyBase,@object // @__const.ledcWriteNote.noteFrequencyBase
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.ledcWriteNote.noteFrequencyBase:
	.word	4186                            // 0x105a
	.word	4435                            // 0x1153
	.word	4699                            // 0x125b
	.word	4978                            // 0x1372
	.word	5274                            // 0x149a
	.word	5588                            // 0x15d4
	.word	5920                            // 0x1720
	.word	6272                            // 0x1880
	.word	6645                            // 0x19f5
	.word	7040                            // 0x1b80
	.word	7459                            // 0x1d23
	.word	7902                            // 0x1ede
	.size	.L__const.ledcWriteNote.noteFrequencyBase, 48
	.type	NOTE_MAX,@object                // @NOTE_MAX
	.bss
	.globl	NOTE_MAX
	.p2align	3
NOTE_MAX:
	.xword	0                               // 0x0
	.size	NOTE_MAX, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ledcWriteTone
	.addrsig_sym NOTE_MAX