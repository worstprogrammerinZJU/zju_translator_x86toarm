	.text
	.p2align	2                               // -- Begin function rehash
	.type	rehash,@function
rehash:                                 // @rehash
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	w0, [x29, #-4]
	adrp	x8, all_jobs
	ldr	x8, [x8, :lo12:all_jobs]
	stur	x8, [x29, #-16]
	adrp	x8, all_jobs_cap
	ldr	x8, [x8, :lo12:all_jobs_cap]
	stur	x8, [x29, #-24]
	adrp	x8, all_jobs_used
	ldr	x8, [x8, :lo12:all_jobs_used]
	str	x8, [sp, #32]
	adrp	x8, cur_prime
	ldr	w9, [x8, :lo12:cur_prime]
	str	w9, [sp, #20]
	ldur	w10, [x29, #-4]
	mov	w9, #-1
	subs	w10, w10, #0
	csinc	w9, w9, wzr, eq
	str	w9, [sp, #16]
	ldr	w8, [x8, :lo12:cur_prime]
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	adrp	x9, NUM_PRIMES
	ldr	w9, [x9, :lo12:NUM_PRIMES]
	subs	w8, w8, w9
	b.lt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_18
.LBB0_2:
	adrp	x8, cur_prime
	ldr	w8, [x8, :lo12:cur_prime]
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	subs	w8, w8, #0
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_18
.LBB0_4:
	ldur	w8, [x29, #-4]
	cbz	w8, .LBB0_7
	b	.LBB0_5
.LBB0_5:
	adrp	x8, hash_table_was_oom
	ldr	w8, [x8, :lo12:hash_table_was_oom]
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_18
.LBB0_7:
	ldr	w10, [sp, #16]
	adrp	x9, cur_prime
	ldr	w8, [x9, :lo12:cur_prime]
	add	w8, w8, w10
	str	w8, [x9, :lo12:cur_prime]
	adrp	x8, primes
	ldr	x8, [x8, :lo12:primes]
	ldrsw	x9, [x9, :lo12:cur_prime]
	ldr	x9, [x8, x9, lsl #3]
	adrp	x8, all_jobs_cap
	str	x9, [x8, :lo12:all_jobs_cap]
	ldr	x0, [x8, :lo12:all_jobs_cap]
	mov	w1, #8
	bl	calloc
	adrp	x8, all_jobs
	str	x0, [x8, :lo12:all_jobs]
	ldr	x8, [x8, :lo12:all_jobs]
	cbnz	x8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	adrp	x8, all_jobs_cap
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x1, [x8, :lo12:all_jobs_cap]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarnx
	ldr	x9, [sp]                        // 8-byte Folded Reload
	adrp	x10, hash_table_was_oom
	mov	w8, #1
	str	w8, [x10, :lo12:hash_table_was_oom]
	ldr	w8, [sp, #20]
	adrp	x10, cur_prime
	str	w8, [x10, :lo12:cur_prime]
	ldur	x8, [x29, #-16]
	adrp	x10, all_jobs
	str	x8, [x10, :lo12:all_jobs]
	ldur	x8, [x29, #-24]
	str	x8, [x9, :lo12:all_jobs_cap]
	ldr	x8, [sp, #32]
	adrp	x9, all_jobs_used
	str	x8, [x9, :lo12:all_jobs_used]
	b	.LBB0_18
.LBB0_9:
	adrp	x8, all_jobs_used
	str	xzr, [x8, :lo12:all_jobs_used]
	adrp	x8, hash_table_was_oom
	str	wzr, [x8, :lo12:hash_table_was_oom]
	str	xzr, [sp, #24]
	b	.LBB0_10
.LBB0_10:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_12 Depth 2
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.hs	.LBB0_16
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   Parent Loop BB0_10 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	ldr	x8, [x8, x9, lsl #3]
	cbz	x8, .LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_12 Depth=2
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x10, [sp, #24]
	str	x8, [x9, x10, lsl #3]
	ldr	x8, [sp, #8]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8]
	ldr	x0, [sp, #8]
	bl	store_job
	b	.LBB0_12
.LBB0_14:                               //   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB0_10
.LBB0_16:
	ldur	x8, [x29, #-16]
	adrp	x9, all_jobs_init
	ldr	x9, [x9, :lo12:all_jobs_init]
	subs	x8, x8, x9
	b.eq	.LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldur	x0, [x29, #-16]
	bl	free
	b	.LBB0_18
.LBB0_18:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	rehash, .Lfunc_end0-rehash
                                        // -- End function
	.type	all_jobs,@object                // @all_jobs
	.bss
	.globl	all_jobs
	.p2align	3
all_jobs:
	.xword	0
	.size	all_jobs, 8
	.type	all_jobs_cap,@object            // @all_jobs_cap
	.globl	all_jobs_cap
	.p2align	3
all_jobs_cap:
	.xword	0                               // 0x0
	.size	all_jobs_cap, 8
	.type	all_jobs_used,@object           // @all_jobs_used
	.globl	all_jobs_used
	.p2align	3
all_jobs_used:
	.xword	0                               // 0x0
	.size	all_jobs_used, 8
	.type	cur_prime,@object               // @cur_prime
	.globl	cur_prime
	.p2align	2
cur_prime:
	.word	0                               // 0x0
	.size	cur_prime, 4
	.type	NUM_PRIMES,@object              // @NUM_PRIMES
	.globl	NUM_PRIMES
	.p2align	2
NUM_PRIMES:
	.word	0                               // 0x0
	.size	NUM_PRIMES, 4
	.type	hash_table_was_oom,@object      // @hash_table_was_oom
	.globl	hash_table_was_oom
	.p2align	2
hash_table_was_oom:
	.word	0                               // 0x0
	.size	hash_table_was_oom, 4
	.type	primes,@object                  // @primes
	.globl	primes
	.p2align	3
primes:
	.xword	0
	.size	primes, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Failed to allocate %zu new hash buckets"
	.size	.L.str, 40
	.type	all_jobs_init,@object           // @all_jobs_init
	.bss
	.globl	all_jobs_init
	.p2align	3
all_jobs_init:
	.xword	0
	.size	all_jobs_init, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rehash
	.addrsig_sym calloc
	.addrsig_sym twarnx
	.addrsig_sym store_job
	.addrsig_sym free
	.addrsig_sym all_jobs
	.addrsig_sym all_jobs_cap
	.addrsig_sym all_jobs_used
	.addrsig_sym cur_prime
	.addrsig_sym NUM_PRIMES
	.addrsig_sym hash_table_was_oom
	.addrsig_sym primes
	.addrsig_sym all_jobs_init