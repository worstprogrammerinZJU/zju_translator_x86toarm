	.text
	.globl	load_data_in_thread             // -- Begin function load_data_in_thread
	.p2align	2
	.type	load_data_in_thread,@function
load_data_in_thread:                    // @load_data_in_thread
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w8, w0
	stur	w8, [x29, #-4]
	mov	w0, #1
	mov	w1, #4
	bl	calloc
	str	x0, [sp]
	ldr	x9, [sp]
	ldur	w8, [x29, #-4]
	str	w8, [x9]
	adrp	x8, load_thread
	ldr	w2, [x8, :lo12:load_thread]
	ldr	x3, [sp]
	add	x0, sp, #8
	mov	w1, wzr
	bl	pthread_create
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_2
.LBB0_2:
	ldr	w0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	load_data_in_thread, .Lfunc_end0-load_data_in_thread
                                        // -- End function
	.type	load_thread,@object             // @load_thread
	.bss
	.globl	load_thread
	.p2align	2
load_thread:
	.word	0                               // 0x0
	.size	load_thread, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Thread creation failed"
	.size	.L.str, 23
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym pthread_create
	.addrsig_sym error
	.addrsig_sym load_thread