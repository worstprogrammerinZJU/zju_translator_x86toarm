	.text
	.p2align	2                               // -- Begin function lua_proto_get_masterinfo_string
	.type	lua_proto_get_masterinfo_string,@function
lua_proto_get_masterinfo_string:        // @lua_proto_get_masterinfo_string
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	mov	w1, #1
	sub	x2, x29, #24
	bl	luaL_checklstring
	stur	x0, [x29, #-32]
	str	wzr, [sp, #4]
	ldur	x9, [x29, #-32]
	add	x8, sp, #8
	str	x9, [sp, #8]
	ldur	x9, [x29, #-24]
	str	x9, [sp, #16]
	str	x8, [sp, #32]
	str	xzr, [sp, #24]
	bl	network_mysqld_masterinfo_new
	str	x0, [sp, #40]
	ldr	w8, [sp, #4]
	mov	w9, #1
	str	w9, [sp]                        // 4-byte Folded Spill
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x1, [sp, #40]
	add	x0, sp, #24
	bl	network_mysqld_masterinfo_get
	subs	x8, x0, #0
	cset	w8, ne
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	and	w8, w8, #0x1
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #40]
	bl	network_mysqld_masterinfo_free
	ldur	x0, [x29, #-16]
	adrp	x8, G_STRLOC
	ldr	w2, [x8, :lo12:G_STRLOC]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_4:
	ldur	x0, [x29, #-16]
	bl	lua_newtable
	ldr	x0, [sp, #40]
	adrp	x8, master_lines
	ldr	w1, [x8, :lo12:master_lines]
	bl	LUA_EXPORT_INT
	ldr	x0, [sp, #40]
	adrp	x8, master_log_file
	ldr	w1, [x8, :lo12:master_log_file]
	bl	LUA_EXPORT_STR
	ldr	x0, [sp, #40]
	adrp	x8, master_log_pos
	ldr	w1, [x8, :lo12:master_log_pos]
	bl	LUA_EXPORT_INT
	ldr	x0, [sp, #40]
	adrp	x8, master_host
	ldr	w1, [x8, :lo12:master_host]
	bl	LUA_EXPORT_STR
	ldr	x0, [sp, #40]
	adrp	x8, master_user
	ldr	w1, [x8, :lo12:master_user]
	bl	LUA_EXPORT_STR
	ldr	x0, [sp, #40]
	adrp	x8, master_password
	ldr	w1, [x8, :lo12:master_password]
	bl	LUA_EXPORT_STR
	ldr	x0, [sp, #40]
	adrp	x8, master_port
	ldr	w1, [x8, :lo12:master_port]
	bl	LUA_EXPORT_INT
	ldr	x0, [sp, #40]
	adrp	x8, master_connect_retry
	ldr	w1, [x8, :lo12:master_connect_retry]
	bl	LUA_EXPORT_INT
	ldr	x0, [sp, #40]
	adrp	x8, master_ssl
	ldr	w1, [x8, :lo12:master_ssl]
	bl	LUA_EXPORT_INT
	ldr	x0, [sp, #40]
	adrp	x8, master_ssl_ca
	ldr	w1, [x8, :lo12:master_ssl_ca]
	bl	LUA_EXPORT_STR
	ldr	x0, [sp, #40]
	adrp	x8, master_ssl_capath
	ldr	w1, [x8, :lo12:master_ssl_capath]
	bl	LUA_EXPORT_STR
	ldr	x0, [sp, #40]
	adrp	x8, master_ssl_cert
	ldr	w1, [x8, :lo12:master_ssl_cert]
	bl	LUA_EXPORT_STR
	ldr	x0, [sp, #40]
	adrp	x8, master_ssl_cipher
	ldr	w1, [x8, :lo12:master_ssl_cipher]
	bl	LUA_EXPORT_STR
	ldr	x0, [sp, #40]
	adrp	x8, master_ssl_key
	ldr	w1, [x8, :lo12:master_ssl_key]
	bl	LUA_EXPORT_STR
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	subs	w8, w8, #15
	b.lt	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #40]
	adrp	x8, master_ssl_verify_server_cert
	ldr	w1, [x8, :lo12:master_ssl_verify_server_cert]
	bl	LUA_EXPORT_INT
	b	.LBB0_6
.LBB0_6:
	ldr	x0, [sp, #40]
	bl	network_mysqld_masterinfo_free
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	lua_proto_get_masterinfo_string, .Lfunc_end0-lua_proto_get_masterinfo_string
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: network_mysqld_masterinfo_get() failed"
	.size	.L.str, 43
	.type	G_STRLOC,@object                // @G_STRLOC
	.bss
	.globl	G_STRLOC
	.p2align	2
G_STRLOC:
	.word	0                               // 0x0
	.size	G_STRLOC, 4
	.type	master_lines,@object            // @master_lines
	.globl	master_lines
	.p2align	2
master_lines:
	.word	0                               // 0x0
	.size	master_lines, 4
	.type	master_log_file,@object         // @master_log_file
	.globl	master_log_file
	.p2align	2
master_log_file:
	.word	0                               // 0x0
	.size	master_log_file, 4
	.type	master_log_pos,@object          // @master_log_pos
	.globl	master_log_pos
	.p2align	2
master_log_pos:
	.word	0                               // 0x0
	.size	master_log_pos, 4
	.type	master_host,@object             // @master_host
	.globl	master_host
	.p2align	2
master_host:
	.word	0                               // 0x0
	.size	master_host, 4
	.type	master_user,@object             // @master_user
	.globl	master_user
	.p2align	2
master_user:
	.word	0                               // 0x0
	.size	master_user, 4
	.type	master_password,@object         // @master_password
	.globl	master_password
	.p2align	2
master_password:
	.word	0                               // 0x0
	.size	master_password, 4
	.type	master_port,@object             // @master_port
	.globl	master_port
	.p2align	2
master_port:
	.word	0                               // 0x0
	.size	master_port, 4
	.type	master_connect_retry,@object    // @master_connect_retry
	.globl	master_connect_retry
	.p2align	2
master_connect_retry:
	.word	0                               // 0x0
	.size	master_connect_retry, 4
	.type	master_ssl,@object              // @master_ssl
	.globl	master_ssl
	.p2align	2
master_ssl:
	.word	0                               // 0x0
	.size	master_ssl, 4
	.type	master_ssl_ca,@object           // @master_ssl_ca
	.globl	master_ssl_ca
	.p2align	2
master_ssl_ca:
	.word	0                               // 0x0
	.size	master_ssl_ca, 4
	.type	master_ssl_capath,@object       // @master_ssl_capath
	.globl	master_ssl_capath
	.p2align	2
master_ssl_capath:
	.word	0                               // 0x0
	.size	master_ssl_capath, 4
	.type	master_ssl_cert,@object         // @master_ssl_cert
	.globl	master_ssl_cert
	.p2align	2
master_ssl_cert:
	.word	0                               // 0x0
	.size	master_ssl_cert, 4
	.type	master_ssl_cipher,@object       // @master_ssl_cipher
	.globl	master_ssl_cipher
	.p2align	2
master_ssl_cipher:
	.word	0                               // 0x0
	.size	master_ssl_cipher, 4
	.type	master_ssl_key,@object          // @master_ssl_key
	.globl	master_ssl_key
	.p2align	2
master_ssl_key:
	.word	0                               // 0x0
	.size	master_ssl_key, 4
	.type	master_ssl_verify_server_cert,@object // @master_ssl_verify_server_cert
	.globl	master_ssl_verify_server_cert
	.p2align	2
master_ssl_verify_server_cert:
	.word	0                               // 0x0
	.size	master_ssl_verify_server_cert, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_proto_get_masterinfo_string
	.addrsig_sym luaL_checklstring
	.addrsig_sym network_mysqld_masterinfo_new
	.addrsig_sym network_mysqld_masterinfo_get
	.addrsig_sym network_mysqld_masterinfo_free
	.addrsig_sym luaL_error
	.addrsig_sym lua_newtable
	.addrsig_sym LUA_EXPORT_INT
	.addrsig_sym LUA_EXPORT_STR
	.addrsig_sym G_STRLOC
	.addrsig_sym master_lines
	.addrsig_sym master_log_file
	.addrsig_sym master_log_pos
	.addrsig_sym master_host
	.addrsig_sym master_user
	.addrsig_sym master_password
	.addrsig_sym master_port
	.addrsig_sym master_connect_retry
	.addrsig_sym master_ssl
	.addrsig_sym master_ssl_ca
	.addrsig_sym master_ssl_capath
	.addrsig_sym master_ssl_cert
	.addrsig_sym master_ssl_cipher
	.addrsig_sym master_ssl_key
	.addrsig_sym master_ssl_verify_server_cert