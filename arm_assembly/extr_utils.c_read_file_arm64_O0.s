	.text
	.globl	read_file                       // -- Begin function read_file
	.p2align	2
	.type	read_file,@function
read_file:                              // @read_file
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fopen
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	adrp	x8, SEEK_END
	ldr	w2, [x8, :lo12:SEEK_END]
	mov	w1, wzr
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	bl	fseek
	ldur	x0, [x29, #-16]
	bl	ftell
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	str	x0, [sp, #24]
	ldur	x0, [x29, #-16]
	adrp	x8, SEEK_SET
	ldr	w2, [x8, :lo12:SEEK_SET]
	bl	fseek
	ldr	x8, [sp, #24]
	add	x0, x8, #1
	mov	w1, #1
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	ldur	x3, [x29, #-16]
	bl	fread
	ldur	x0, [x29, #-16]
	bl	fclose
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_file, .Lfunc_end0-read_file
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rb"
	.size	.L.str, 3
	.type	SEEK_END,@object                // @SEEK_END
	.bss
	.globl	SEEK_END
	.p2align	2
SEEK_END:
	.word	0                               // 0x0
	.size	SEEK_END, 4
	.type	SEEK_SET,@object                // @SEEK_SET
	.globl	SEEK_SET
	.p2align	2
SEEK_SET:
	.word	0                               // 0x0
	.size	SEEK_SET, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fopen
	.addrsig_sym fseek
	.addrsig_sym ftell
	.addrsig_sym calloc
	.addrsig_sym fread
	.addrsig_sym fclose
	.addrsig_sym SEEK_END
	.addrsig_sym SEEK_SET