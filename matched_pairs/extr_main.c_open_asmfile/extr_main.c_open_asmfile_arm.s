	.text
	.p2align	2                               // -- Begin function open_asmfile
	.type	open_asmfile,@function
open_asmfile:                           // @open_asmfile
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, dumpasm
	ldr	x8, [x8, :lo12:dumpasm]
	cbz	x8, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	adrp	x8, outfile
	ldr	x8, [x8, :lo12:outfile]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x8, outfile
	ldr	x0, [x8, :lo12:outfile]
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_4
.LBB0_3:
	adrp	x8, infile
	ldr	w0, [x8, :lo12:infile]
	bl	base
	mov	w1, #115
	bl	replace_suffix
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	adrp	x9, asmfile
	str	x8, [x9, :lo12:asmfile]
	b	.LBB0_8
.LBB0_5:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	format
	adrp	x8, asmfile
	str	x0, [x8, :lo12:asmfile]
	ldr	x0, [x8, :lo12:asmfile]
	mov	w1, #2
	bl	mkstemps
	cbnz	w0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	perror
	b	.LBB0_7
.LBB0_7:
	adrp	x8, tmpfiles
	ldr	w0, [x8, :lo12:tmpfiles]
	adrp	x8, asmfile
	ldr	x1, [x8, :lo12:asmfile]
	bl	vec_push
	b	.LBB0_8
.LBB0_8:
	adrp	x8, asmfile
	ldr	x0, [x8, :lo12:asmfile]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	strcmp
	cbnz	w0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, stdout
	ldr	x8, [x8, :lo12:stdout]
	stur	x8, [x29, #-8]
	b	.LBB0_13
.LBB0_10:
	adrp	x8, asmfile
	ldr	x0, [x8, :lo12:asmfile]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	fopen
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	perror
	b	.LBB0_12
.LBB0_12:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_13
.LBB0_13:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	open_asmfile, .Lfunc_end0-open_asmfile
                                        // -- End function
	.type	dumpasm,@object                 // @dumpasm
	.bss
	.globl	dumpasm
	.p2align	3
dumpasm:
	.xword	0                               // 0x0
	.size	dumpasm, 8
	.type	outfile,@object                 // @outfile
	.globl	outfile
	.p2align	3
outfile:
	.xword	0                               // 0x0
	.size	outfile, 8
	.type	infile,@object                  // @infile
	.globl	infile
	.p2align	2
infile:
	.word	0                               // 0x0
	.size	infile, 4
	.type	asmfile,@object                 // @asmfile
	.globl	asmfile
	.p2align	3
asmfile:
	.xword	0                               // 0x0
	.size	asmfile, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/tmp/8ccXXXXXX.s"
	.size	.L.str, 17
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"mkstemps"
	.size	.L.str.1, 9
	.type	tmpfiles,@object                // @tmpfiles
	.bss
	.globl	tmpfiles
	.p2align	2
tmpfiles:
	.word	0                               // 0x0
	.size	tmpfiles, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"-"
	.size	.L.str.2, 2
	.type	stdout,@object                  // @stdout
	.bss
	.globl	stdout
	.p2align	3
stdout:
	.xword	0
	.size	stdout, 8
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"w"
	.size	.L.str.3, 2
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"fopen"
	.size	.L.str.4, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym open_asmfile
	.addrsig_sym replace_suffix
	.addrsig_sym base
	.addrsig_sym format
	.addrsig_sym mkstemps
	.addrsig_sym perror
	.addrsig_sym vec_push
	.addrsig_sym strcmp
	.addrsig_sym fopen
	.addrsig_sym dumpasm
	.addrsig_sym outfile
	.addrsig_sym infile
	.addrsig_sym asmfile
	.addrsig_sym tmpfiles
	.addrsig_sym stdout