
testaa:	file format mach-o 64-bit x86-64

Disassembly of section __TEXT,__text:

0000000100000bb0 <__ZN9resumable10return_valEv>:
100000bb0: 55                          	pushq	%rbp
100000bb1: 48 89 e5                    	movq	%rsp, %rbp
100000bb4: 48 83 ec 10                 	subq	$16, %rsp
100000bb8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100000bbc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100000bc0: e8 1b 00 00 00              	callq	0x100000be0 <__ZNKSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEE7promiseB6v15006Ev>
100000bc5: 48 89 c7                    	movq	%rax, %rdi
100000bc8: e8 c9 2f 00 00              	callq	0x100003b96 <_strlen+0x100003b96>
100000bcd: 48 83 c4 10                 	addq	$16, %rsp
100000bd1: 5d                          	popq	%rbp
100000bd2: c3                          	retq
100000bd3: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00      	nopw	%cs:(%rax,%rax)

0000000100000be0 <__ZNKSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEE7promiseB6v15006Ev>:
100000be0: 55                          	pushq	%rbp
100000be1: 48 89 e5                    	movq	%rsp, %rbp
100000be4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100000be8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100000bec: 48 8b 00                    	movq	(%rax), %rax
100000bef: 48 83 c0 10                 	addq	$16, %rax
100000bf3: 5d                          	popq	%rbp
100000bf4: c3                          	retq
100000bf5: 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)

0000000100000c00 <__ZN9resumable12promise_type10return_valEv>:
100000c00: 55                          	pushq	%rbp
100000c01: 48 89 e5                    	movq	%rsp, %rbp
100000c04: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100000c08: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100000c0c: 5d                          	popq	%rbp
100000c0d: c3                          	retq
100000c0e: 66 90                       	nop

0000000100000c10 <__Z4foo1v>:
100000c10: 55                          	pushq	%rbp
100000c11: 48 89 e5                    	movq	%rsp, %rbp
100000c14: 48 81 ec 10 01 00 00        	subq	$272, %rsp              ## imm = 0x110
100000c1b: 48 89 bd 60 ff ff ff        	movq	%rdi, -160(%rbp)
100000c22: 48 89 f8                    	movq	%rdi, %rax
100000c25: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100000c2c: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100000c30: 31 c0                       	xorl	%eax, %eax
100000c32: b1 01                       	movb	$1, %cl
100000c34: f6 c1 01                    	testb	$1, %cl
100000c37: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100000c3e: 0f 85 13 00 00 00           	jne	0x100000c57 <__Z4foo1v+0x47>
100000c44: 48 8b 85 70 ff ff ff        	movq	-144(%rbp), %rax
100000c4b: 48 89 85 58 ff ff ff        	movq	%rax, -168(%rbp)
100000c52: e9 46 00 00 00              	jmp	0x100000c9d <__Z4foo1v+0x8d>
100000c57: bf 30 00 00 00              	movl	$48, %edi
100000c5c: 48 8b 35 ad 34 00 00        	movq	13485(%rip), %rsi       ## 0x100004110 <_strlen+0x100004110>
100000c63: e8 e2 2f 00 00              	callq	0x100003c4a <_strlen+0x100003c4a>
100000c68: 48 83 f8 00                 	cmpq	$0, %rax
100000c6c: 48 89 85 50 ff ff ff        	movq	%rax, -176(%rbp)
100000c73: 0f 84 13 00 00 00           	je	0x100000c8c <__Z4foo1v+0x7c>
100000c79: 48 8b 85 50 ff ff ff        	movq	-176(%rbp), %rax
100000c80: 48 89 85 58 ff ff ff        	movq	%rax, -168(%rbp)
100000c87: e9 11 00 00 00              	jmp	0x100000c9d <__Z4foo1v+0x8d>
100000c8c: 48 8b bd 60 ff ff ff        	movq	-160(%rbp), %rdi
100000c93: e8 22 2f 00 00              	callq	0x100003bba <_strlen+0x100003bba>
100000c98: e9 28 04 00 00              	jmp	0x1000010c5 <__Z4foo1v+0x4b5>
100000c9d: 48 8b 85 58 ff ff ff        	movq	-168(%rbp), %rax
100000ca4: 48 89 85 48 ff ff ff        	movq	%rax, -184(%rbp)
100000cab: 48 8d 0d ae 1b 00 00        	leaq	7086(%rip), %rcx        ## 0x100002860 <__Z4foo1v.resume>
100000cb2: 48 89 08                    	movq	%rcx, (%rax)
100000cb5: 40 b6 01                    	movb	$1, %sil
100000cb8: 48 8d 0d d1 21 00 00        	leaq	8657(%rip), %rcx        ## 0x100002e90 <__Z4foo1v.cleanup>
100000cbf: 48 8d 15 9a 1e 00 00        	leaq	7834(%rip), %rdx        ## 0x100002b60 <__Z4foo1v.destroy>
100000cc6: 40 f6 c6 01                 	testb	$1, %sil
100000cca: 48 0f 45 ca                 	cmovneq	%rdx, %rcx
100000cce: 48 89 48 08                 	movq	%rcx, 8(%rax)
100000cd2: 48 8b 85 48 ff ff ff        	movq	-184(%rbp), %rax
100000cd9: 48 89 c1                    	movq	%rax, %rcx
100000cdc: 48 83 c1 29                 	addq	$41, %rcx
100000ce0: 48 89 8d 30 ff ff ff        	movq	%rcx, -208(%rbp)
100000ce7: 48 89 c1                    	movq	%rax, %rcx
100000cea: 48 83 c1 2a                 	addq	$42, %rcx
100000cee: 48 89 8d 38 ff ff ff        	movq	%rcx, -200(%rbp)
100000cf5: 48 83 c0 10                 	addq	$16, %rax
100000cf9: 48 89 85 40 ff ff ff        	movq	%rax, -192(%rbp)
100000d00: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
100000d07: e8 04 09 00 00              	callq	0x100001610 <__ZN9resumable12promise_typeC1Ev>
100000d0c: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
100000d13: e8 96 2e 00 00              	callq	0x100003bae <_strlen+0x100003bae>
100000d18: 48 89 85 28 ff ff ff        	movq	%rax, -216(%rbp)
100000d1f: 48 8b bd 60 ff ff ff        	movq	-160(%rbp), %rdi
100000d26: 48 8b 85 28 ff ff ff        	movq	-216(%rbp), %rax
100000d2d: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100000d31: 48 8b 75 d8                 	movq	-40(%rbp), %rsi
100000d35: e8 26 09 00 00              	callq	0x100001660 <__ZN9resumableC1ENSt12experimental13coroutines_v116coroutine_handleINS_12promise_typeEEE>
100000d3a: e9 00 00 00 00              	jmp	0x100000d3f <__Z4foo1v+0x12f>
100000d3f: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
100000d46: e8 5d 2e 00 00              	callq	0x100003ba8 <_strlen+0x100003ba8>
100000d4b: 48 8b bd 30 ff ff ff        	movq	-208(%rbp), %rdi
100000d52: e8 49 09 00 00              	callq	0x1000016a0 <__ZNKSt12experimental13coroutines_v114suspend_always11await_readyB6v15006Ev>
100000d57: a8 01                       	testb	$1, %al
100000d59: 0f 85 8d 00 00 00           	jne	0x100000dec <__Z4foo1v+0x1dc>
100000d5f: 48 8b 85 48 ff ff ff        	movq	-184(%rbp), %rax
100000d66: c6 40 28 00                 	movb	$0, 40(%rax)
100000d6a: 48 8b bd 48 ff ff ff        	movq	-184(%rbp), %rdi
100000d71: e8 5a 09 00 00              	callq	0x1000016d0 <__ZNSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEE12from_addressB6v15006EPv>
100000d76: 48 8b bd 30 ff ff ff        	movq	-208(%rbp), %rdi
100000d7d: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100000d81: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100000d85: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100000d89: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
100000d8d: e8 2e 09 00 00              	callq	0x1000016c0 <__ZNKSt12experimental13coroutines_v114suspend_always13await_suspendB6v15006ENS0_16coroutine_handleIvEE>
100000d92: e9 00 00 00 00              	jmp	0x100000d97 <__Z4foo1v+0x187>
100000d97: e9 00 00 00 00              	jmp	0x100000d9c <__Z4foo1v+0x18c>
100000d9c: 31 c0                       	xorl	%eax, %eax
100000d9e: 84 c0                       	testb	%al, %al
100000da0: 0f 85 46 00 00 00           	jne	0x100000dec <__Z4foo1v+0x1dc>
100000da6: e9 00 00 00 00              	jmp	0x100000dab <__Z4foo1v+0x19b>
100000dab: b0 01                       	movb	$1, %al
100000dad: 84 c0                       	testb	%al, %al
100000daf: 0f 85 c4 02 00 00           	jne	0x100001079 <__Z4foo1v+0x469>
100000db5: e9 00 00 00 00              	jmp	0x100000dba <__Z4foo1v+0x1aa>
100000dba: b8 02 00 00 00              	movl	$2, %eax
100000dbf: 89 85 24 ff ff ff           	movl	%eax, -220(%rbp)
100000dc5: e9 00 00 00 00              	jmp	0x100000dca <__Z4foo1v+0x1ba>
100000dca: 8b 85 24 ff ff ff           	movl	-220(%rbp), %eax
100000dd0: 89 85 20 ff ff ff           	movl	%eax, -224(%rbp)
100000dd6: e9 31 00 00 00              	jmp	0x100000e0c <__Z4foo1v+0x1fc>
100000ddb: 48 89 c1                    	movq	%rax, %rcx
100000dde: 89 d0                       	movl	%edx, %eax
100000de0: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100000de4: 89 45 cc                    	movl	%eax, -52(%rbp)
100000de7: e9 ab 02 00 00              	jmp	0x100001097 <__Z4foo1v+0x487>
100000dec: 48 8b bd 30 ff ff ff        	movq	-208(%rbp), %rdi
100000df3: e8 08 09 00 00              	callq	0x100001700 <__ZNKSt12experimental13coroutines_v114suspend_always12await_resumeB6v15006Ev>
100000df8: 31 c0                       	xorl	%eax, %eax
100000dfa: 89 85 1c ff ff ff           	movl	%eax, -228(%rbp)
100000e00: 8b 85 1c ff ff ff           	movl	-228(%rbp), %eax
100000e06: 89 85 20 ff ff ff           	movl	%eax, -224(%rbp)
100000e0c: 8b 85 20 ff ff ff           	movl	-224(%rbp), %eax
100000e12: 83 f8 00                    	cmpl	$0, %eax
100000e15: 89 85 18 ff ff ff           	movl	%eax, -232(%rbp)
100000e1b: 0f 84 11 00 00 00           	je	0x100000e32 <__Z4foo1v+0x222>
100000e21: 8b 85 18 ff ff ff           	movl	-232(%rbp), %eax
100000e27: 89 85 14 ff ff ff           	movl	%eax, -236(%rbp)
100000e2d: e9 f5 01 00 00              	jmp	0x100001027 <__Z4foo1v+0x417>
100000e32: 48 8b 3d 87 32 00 00        	movq	12935(%rip), %rdi       ## 0x1000040c0 <_strlen+0x1000040c0>
100000e39: 48 8d 35 68 30 00 00        	leaq	12392(%rip), %rsi       ## 0x100003ea8 <_strlen+0x100003ea8>
100000e40: e8 e7 2d 00 00              	callq	0x100003c2c <_strlen+0x100003c2c>
100000e45: 48 89 85 08 ff ff ff        	movq	%rax, -248(%rbp)
100000e4c: e9 00 00 00 00              	jmp	0x100000e51 <__Z4foo1v+0x241>
100000e51: 48 8b bd 08 ff ff ff        	movq	-248(%rbp), %rdi
100000e58: 48 8b 35 69 32 00 00        	movq	12905(%rip), %rsi       ## 0x1000040c8 <_strlen+0x1000040c8>
100000e5f: e8 ec 08 00 00              	callq	0x100001750 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRS3_S4_E>
100000e64: e9 00 00 00 00              	jmp	0x100000e69 <__Z4foo1v+0x259>
100000e69: 48 8d 3d 98 71 00 00        	leaq	29080(%rip), %rdi       ## 0x100008008 <_r2>
100000e70: e8 4b 2d 00 00              	callq	0x100003bc0 <_strlen+0x100003bc0>
100000e75: e9 00 00 00 00              	jmp	0x100000e7a <__Z4foo1v+0x26a>
100000e7a: 48 8d 35 2c 30 00 00        	leaq	12332(%rip), %rsi       ## 0x100003ead <_strlen+0x100003ead>
100000e81: 48 8d 7d 98                 	leaq	-104(%rbp), %rdi
100000e85: e8 b6 09 00 00              	callq	0x100001840 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006IDnEEPKc>
100000e8a: e9 00 00 00 00              	jmp	0x100000e8f <__Z4foo1v+0x27f>
100000e8f: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
100000e96: 48 8d 75 98                 	leaq	-104(%rbp), %rsi
100000e9a: e8 fd 2c 00 00              	callq	0x100003b9c <_strlen+0x100003b9c>
100000e9f: e9 00 00 00 00              	jmp	0x100000ea4 <__Z4foo1v+0x294>
100000ea4: 48 8d 7d 98                 	leaq	-104(%rbp), %rdi
100000ea8: e8 43 2d 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
100000ead: e9 60 00 00 00              	jmp	0x100000f12 <__Z4foo1v+0x302>
100000eb2: 48 89 c1                    	movq	%rax, %rcx
100000eb5: 89 d0                       	movl	%edx, %eax
100000eb7: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100000ebb: 89 45 cc                    	movl	%eax, -52(%rbp)
100000ebe: e9 26 00 00 00              	jmp	0x100000ee9 <__Z4foo1v+0x2d9>
100000ec3: 48 89 c1                    	movq	%rax, %rcx
100000ec6: 89 d0                       	movl	%edx, %eax
100000ec8: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100000ecc: 89 45 cc                    	movl	%eax, -52(%rbp)
100000ecf: e9 15 00 00 00              	jmp	0x100000ee9 <__Z4foo1v+0x2d9>
100000ed4: 48 89 c1                    	movq	%rax, %rcx
100000ed7: 89 d0                       	movl	%edx, %eax
100000ed9: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100000edd: 89 45 cc                    	movl	%eax, -52(%rbp)
100000ee0: 48 8d 7d 98                 	leaq	-104(%rbp), %rdi
100000ee4: e8 07 2d 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
100000ee9: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100000eed: e8 70 2d 00 00              	callq	0x100003c62 <_strlen+0x100003c62>
100000ef2: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
100000ef9: e8 b6 2c 00 00              	callq	0x100003bb4 <_strlen+0x100003bb4>
100000efe: e8 65 2d 00 00              	callq	0x100003c68 <_strlen+0x100003c68>
100000f03: e9 00 00 00 00              	jmp	0x100000f08 <__Z4foo1v+0x2f8>
100000f08: e9 00 00 00 00              	jmp	0x100000f0d <__Z4foo1v+0x2fd>
100000f0d: e9 00 00 00 00              	jmp	0x100000f12 <__Z4foo1v+0x302>
100000f12: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
100000f19: e8 84 2c 00 00              	callq	0x100003ba2 <_strlen+0x100003ba2>
100000f1e: 48 8b bd 38 ff ff ff        	movq	-200(%rbp), %rdi
100000f25: e8 76 07 00 00              	callq	0x1000016a0 <__ZNKSt12experimental13coroutines_v114suspend_always11await_readyB6v15006Ev>
100000f2a: a8 01                       	testb	$1, %al
100000f2c: 0f 85 96 00 00 00           	jne	0x100000fc8 <__Z4foo1v+0x3b8>
100000f32: 48 8b 85 48 ff ff ff        	movq	-184(%rbp), %rax
100000f39: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100000f40: 48 8b bd 48 ff ff ff        	movq	-184(%rbp), %rdi
100000f47: e8 84 07 00 00              	callq	0x1000016d0 <__ZNSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEE12from_addressB6v15006EPv>
100000f4c: 48 8b bd 38 ff ff ff        	movq	-200(%rbp), %rdi
100000f53: 48 89 85 78 ff ff ff        	movq	%rax, -136(%rbp)
100000f5a: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
100000f61: 48 89 45 80                 	movq	%rax, -128(%rbp)
100000f65: 48 8b 75 80                 	movq	-128(%rbp), %rsi
100000f69: e8 52 07 00 00              	callq	0x1000016c0 <__ZNKSt12experimental13coroutines_v114suspend_always13await_suspendB6v15006ENS0_16coroutine_handleIvEE>
100000f6e: e9 00 00 00 00              	jmp	0x100000f73 <__Z4foo1v+0x363>
100000f73: e9 00 00 00 00              	jmp	0x100000f78 <__Z4foo1v+0x368>
100000f78: 31 c0                       	xorl	%eax, %eax
100000f7a: 84 c0                       	testb	%al, %al
100000f7c: 0f 85 46 00 00 00           	jne	0x100000fc8 <__Z4foo1v+0x3b8>
100000f82: e9 00 00 00 00              	jmp	0x100000f87 <__Z4foo1v+0x377>
100000f87: b0 01                       	movb	$1, %al
100000f89: 84 c0                       	testb	%al, %al
100000f8b: 0f 85 e8 00 00 00           	jne	0x100001079 <__Z4foo1v+0x469>
100000f91: e9 00 00 00 00              	jmp	0x100000f96 <__Z4foo1v+0x386>
100000f96: b8 02 00 00 00              	movl	$2, %eax
100000f9b: 89 85 04 ff ff ff           	movl	%eax, -252(%rbp)
100000fa1: e9 00 00 00 00              	jmp	0x100000fa6 <__Z4foo1v+0x396>
100000fa6: 8b 85 04 ff ff ff           	movl	-252(%rbp), %eax
100000fac: 89 85 00 ff ff ff           	movl	%eax, -256(%rbp)
100000fb2: e9 31 00 00 00              	jmp	0x100000fe8 <__Z4foo1v+0x3d8>
100000fb7: 48 89 c1                    	movq	%rax, %rcx
100000fba: 89 d0                       	movl	%edx, %eax
100000fbc: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100000fc0: 89 45 cc                    	movl	%eax, -52(%rbp)
100000fc3: e9 c0 00 00 00              	jmp	0x100001088 <__Z4foo1v+0x478>
100000fc8: 48 8b bd 38 ff ff ff        	movq	-200(%rbp), %rdi
100000fcf: e8 2c 07 00 00              	callq	0x100001700 <__ZNKSt12experimental13coroutines_v114suspend_always12await_resumeB6v15006Ev>
100000fd4: 31 c0                       	xorl	%eax, %eax
100000fd6: 89 85 fc fe ff ff           	movl	%eax, -260(%rbp)
100000fdc: 8b 85 fc fe ff ff           	movl	-260(%rbp), %eax
100000fe2: 89 85 00 ff ff ff           	movl	%eax, -256(%rbp)
100000fe8: 8b 85 00 ff ff ff           	movl	-256(%rbp), %eax
100000fee: 83 f8 00                    	cmpl	$0, %eax
100000ff1: 89 85 f8 fe ff ff           	movl	%eax, -264(%rbp)
100000ff7: 0f 84 11 00 00 00           	je	0x10000100e <__Z4foo1v+0x3fe>
100000ffd: 8b 85 f8 fe ff ff           	movl	-264(%rbp), %eax
100001003: 89 85 14 ff ff ff           	movl	%eax, -236(%rbp)
100001009: e9 19 00 00 00              	jmp	0x100001027 <__Z4foo1v+0x417>
10000100e: 31 c0                       	xorl	%eax, %eax
100001010: 89 85 f4 fe ff ff           	movl	%eax, -268(%rbp)
100001016: e9 00 00 00 00              	jmp	0x10000101b <__Z4foo1v+0x40b>
10000101b: 8b 85 f4 fe ff ff           	movl	-268(%rbp), %eax
100001021: 89 85 14 ff ff ff           	movl	%eax, -236(%rbp)
100001027: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
10000102e: 8b 85 14 ff ff ff           	movl	-236(%rbp), %eax
100001034: 89 85 f0 fe ff ff           	movl	%eax, -272(%rbp)
10000103a: e8 71 08 00 00              	callq	0x1000018b0 <__ZN9resumable12promise_typeD1Ev>
10000103f: 48 8b 85 48 ff ff ff        	movq	-184(%rbp), %rax
100001046: 48 83 f8 00                 	cmpq	$0, %rax
10000104a: 0f 84 0c 00 00 00           	je	0x10000105c <__Z4foo1v+0x44c>
100001050: 48 8b bd 48 ff ff ff        	movq	-184(%rbp), %rdi
100001057: e8 e8 2b 00 00              	callq	0x100003c44 <_strlen+0x100003c44>
10000105c: 8b 85 f0 fe ff ff           	movl	-272(%rbp), %eax
100001062: 85 c0                       	testl	%eax, %eax
100001064: 0f 84 0a 00 00 00           	je	0x100001074 <__Z4foo1v+0x464>
10000106a: e9 00 00 00 00              	jmp	0x10000106f <__Z4foo1v+0x45f>
10000106f: e9 05 00 00 00              	jmp	0x100001079 <__Z4foo1v+0x469>
100001074: e9 00 00 00 00              	jmp	0x100001079 <__Z4foo1v+0x469>
100001079: e9 00 00 00 00              	jmp	0x10000107e <__Z4foo1v+0x46e>
10000107e: e9 00 00 00 00              	jmp	0x100001083 <__Z4foo1v+0x473>
100001083: e9 3d 00 00 00              	jmp	0x1000010c5 <__Z4foo1v+0x4b5>
100001088: e9 00 00 00 00              	jmp	0x10000108d <__Z4foo1v+0x47d>
10000108d: e9 00 00 00 00              	jmp	0x100001092 <__Z4foo1v+0x482>
100001092: e9 00 00 00 00              	jmp	0x100001097 <__Z4foo1v+0x487>
100001097: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
10000109e: e8 0d 08 00 00              	callq	0x1000018b0 <__ZN9resumable12promise_typeD1Ev>
1000010a3: 48 8b 85 48 ff ff ff        	movq	-184(%rbp), %rax
1000010aa: 48 83 f8 00                 	cmpq	$0, %rax
1000010ae: 0f 84 0c 00 00 00           	je	0x1000010c0 <__Z4foo1v+0x4b0>
1000010b4: 48 8b bd 48 ff ff ff        	movq	-184(%rbp), %rdi
1000010bb: e8 84 2b 00 00              	callq	0x100003c44 <_strlen+0x100003c44>
1000010c0: e9 10 00 00 00              	jmp	0x1000010d5 <__Z4foo1v+0x4c5>
1000010c5: 48 8b 85 68 ff ff ff        	movq	-152(%rbp), %rax
1000010cc: 48 81 c4 10 01 00 00        	addq	$272, %rsp              ## imm = 0x110
1000010d3: 5d                          	popq	%rbp
1000010d4: c3                          	retq
1000010d5: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
1000010d9: e8 b2 2a 00 00              	callq	0x100003b90 <_strlen+0x100003b90>
1000010de: 0f 0b                       	ud2

00000001000010e0 <__ZN9resumableD1Ev>:
1000010e0: 55                          	pushq	%rbp
1000010e1: 48 89 e5                    	movq	%rsp, %rbp
1000010e4: 48 83 ec 10                 	subq	$16, %rsp
1000010e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000010ec: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000010f0: e8 0b 08 00 00              	callq	0x100001900 <__ZN9resumableD2Ev>
1000010f5: 48 83 c4 10                 	addq	$16, %rsp
1000010f9: 5d                          	popq	%rbp
1000010fa: c3                          	retq
1000010fb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001100 <__Z4foo2v>:
100001100: 55                          	pushq	%rbp
100001101: 48 89 e5                    	movq	%rsp, %rbp
100001104: 48 81 ec 10 01 00 00        	subq	$272, %rsp              ## imm = 0x110
10000110b: 48 89 bd 60 ff ff ff        	movq	%rdi, -160(%rbp)
100001112: 48 89 f8                    	movq	%rdi, %rax
100001115: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
10000111c: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001120: 31 c0                       	xorl	%eax, %eax
100001122: b1 01                       	movb	$1, %cl
100001124: f6 c1 01                    	testb	$1, %cl
100001127: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
10000112e: 0f 85 13 00 00 00           	jne	0x100001147 <__Z4foo2v+0x47>
100001134: 48 8b 85 70 ff ff ff        	movq	-144(%rbp), %rax
10000113b: 48 89 85 58 ff ff ff        	movq	%rax, -168(%rbp)
100001142: e9 46 00 00 00              	jmp	0x10000118d <__Z4foo2v+0x8d>
100001147: bf 30 00 00 00              	movl	$48, %edi
10000114c: 48 8b 35 bd 2f 00 00        	movq	12221(%rip), %rsi       ## 0x100004110 <_strlen+0x100004110>
100001153: e8 f2 2a 00 00              	callq	0x100003c4a <_strlen+0x100003c4a>
100001158: 48 83 f8 00                 	cmpq	$0, %rax
10000115c: 48 89 85 50 ff ff ff        	movq	%rax, -176(%rbp)
100001163: 0f 84 13 00 00 00           	je	0x10000117c <__Z4foo2v+0x7c>
100001169: 48 8b 85 50 ff ff ff        	movq	-176(%rbp), %rax
100001170: 48 89 85 58 ff ff ff        	movq	%rax, -168(%rbp)
100001177: e9 11 00 00 00              	jmp	0x10000118d <__Z4foo2v+0x8d>
10000117c: 48 8b bd 60 ff ff ff        	movq	-160(%rbp), %rdi
100001183: e8 32 2a 00 00              	callq	0x100003bba <_strlen+0x100003bba>
100001188: e9 28 04 00 00              	jmp	0x1000015b5 <__Z4foo2v+0x4b5>
10000118d: 48 8b 85 58 ff ff ff        	movq	-168(%rbp), %rax
100001194: 48 89 85 48 ff ff ff        	movq	%rax, -184(%rbp)
10000119b: 48 8d 0d 1e 20 00 00        	leaq	8222(%rip), %rcx        ## 0x1000031c0 <__Z4foo2v.resume>
1000011a2: 48 89 08                    	movq	%rcx, (%rax)
1000011a5: 40 b6 01                    	movb	$1, %sil
1000011a8: 48 8d 0d 41 26 00 00        	leaq	9793(%rip), %rcx        ## 0x1000037f0 <__Z4foo2v.cleanup>
1000011af: 48 8d 15 0a 23 00 00        	leaq	8970(%rip), %rdx        ## 0x1000034c0 <__Z4foo2v.destroy>
1000011b6: 40 f6 c6 01                 	testb	$1, %sil
1000011ba: 48 0f 45 ca                 	cmovneq	%rdx, %rcx
1000011be: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000011c2: 48 8b 85 48 ff ff ff        	movq	-184(%rbp), %rax
1000011c9: 48 89 c1                    	movq	%rax, %rcx
1000011cc: 48 83 c1 29                 	addq	$41, %rcx
1000011d0: 48 89 8d 30 ff ff ff        	movq	%rcx, -208(%rbp)
1000011d7: 48 89 c1                    	movq	%rax, %rcx
1000011da: 48 83 c1 2a                 	addq	$42, %rcx
1000011de: 48 89 8d 38 ff ff ff        	movq	%rcx, -200(%rbp)
1000011e5: 48 83 c0 10                 	addq	$16, %rax
1000011e9: 48 89 85 40 ff ff ff        	movq	%rax, -192(%rbp)
1000011f0: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
1000011f7: e8 14 04 00 00              	callq	0x100001610 <__ZN9resumable12promise_typeC1Ev>
1000011fc: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
100001203: e8 a6 29 00 00              	callq	0x100003bae <_strlen+0x100003bae>
100001208: 48 89 85 28 ff ff ff        	movq	%rax, -216(%rbp)
10000120f: 48 8b bd 60 ff ff ff        	movq	-160(%rbp), %rdi
100001216: 48 8b 85 28 ff ff ff        	movq	-216(%rbp), %rax
10000121d: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100001221: 48 8b 75 d8                 	movq	-40(%rbp), %rsi
100001225: e8 36 04 00 00              	callq	0x100001660 <__ZN9resumableC1ENSt12experimental13coroutines_v116coroutine_handleINS_12promise_typeEEE>
10000122a: e9 00 00 00 00              	jmp	0x10000122f <__Z4foo2v+0x12f>
10000122f: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
100001236: e8 6d 29 00 00              	callq	0x100003ba8 <_strlen+0x100003ba8>
10000123b: 48 8b bd 30 ff ff ff        	movq	-208(%rbp), %rdi
100001242: e8 59 04 00 00              	callq	0x1000016a0 <__ZNKSt12experimental13coroutines_v114suspend_always11await_readyB6v15006Ev>
100001247: a8 01                       	testb	$1, %al
100001249: 0f 85 8d 00 00 00           	jne	0x1000012dc <__Z4foo2v+0x1dc>
10000124f: 48 8b 85 48 ff ff ff        	movq	-184(%rbp), %rax
100001256: c6 40 28 00                 	movb	$0, 40(%rax)
10000125a: 48 8b bd 48 ff ff ff        	movq	-184(%rbp), %rdi
100001261: e8 6a 04 00 00              	callq	0x1000016d0 <__ZNSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEE12from_addressB6v15006EPv>
100001266: 48 8b bd 30 ff ff ff        	movq	-208(%rbp), %rdi
10000126d: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100001271: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100001275: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100001279: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
10000127d: e8 3e 04 00 00              	callq	0x1000016c0 <__ZNKSt12experimental13coroutines_v114suspend_always13await_suspendB6v15006ENS0_16coroutine_handleIvEE>
100001282: e9 00 00 00 00              	jmp	0x100001287 <__Z4foo2v+0x187>
100001287: e9 00 00 00 00              	jmp	0x10000128c <__Z4foo2v+0x18c>
10000128c: 31 c0                       	xorl	%eax, %eax
10000128e: 84 c0                       	testb	%al, %al
100001290: 0f 85 46 00 00 00           	jne	0x1000012dc <__Z4foo2v+0x1dc>
100001296: e9 00 00 00 00              	jmp	0x10000129b <__Z4foo2v+0x19b>
10000129b: b0 01                       	movb	$1, %al
10000129d: 84 c0                       	testb	%al, %al
10000129f: 0f 85 c4 02 00 00           	jne	0x100001569 <__Z4foo2v+0x469>
1000012a5: e9 00 00 00 00              	jmp	0x1000012aa <__Z4foo2v+0x1aa>
1000012aa: b8 02 00 00 00              	movl	$2, %eax
1000012af: 89 85 24 ff ff ff           	movl	%eax, -220(%rbp)
1000012b5: e9 00 00 00 00              	jmp	0x1000012ba <__Z4foo2v+0x1ba>
1000012ba: 8b 85 24 ff ff ff           	movl	-220(%rbp), %eax
1000012c0: 89 85 20 ff ff ff           	movl	%eax, -224(%rbp)
1000012c6: e9 31 00 00 00              	jmp	0x1000012fc <__Z4foo2v+0x1fc>
1000012cb: 48 89 c1                    	movq	%rax, %rcx
1000012ce: 89 d0                       	movl	%edx, %eax
1000012d0: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
1000012d4: 89 45 cc                    	movl	%eax, -52(%rbp)
1000012d7: e9 ab 02 00 00              	jmp	0x100001587 <__Z4foo2v+0x487>
1000012dc: 48 8b bd 30 ff ff ff        	movq	-208(%rbp), %rdi
1000012e3: e8 18 04 00 00              	callq	0x100001700 <__ZNKSt12experimental13coroutines_v114suspend_always12await_resumeB6v15006Ev>
1000012e8: 31 c0                       	xorl	%eax, %eax
1000012ea: 89 85 1c ff ff ff           	movl	%eax, -228(%rbp)
1000012f0: 8b 85 1c ff ff ff           	movl	-228(%rbp), %eax
1000012f6: 89 85 20 ff ff ff           	movl	%eax, -224(%rbp)
1000012fc: 8b 85 20 ff ff ff           	movl	-224(%rbp), %eax
100001302: 83 f8 00                    	cmpl	$0, %eax
100001305: 89 85 18 ff ff ff           	movl	%eax, -232(%rbp)
10000130b: 0f 84 11 00 00 00           	je	0x100001322 <__Z4foo2v+0x222>
100001311: 8b 85 18 ff ff ff           	movl	-232(%rbp), %eax
100001317: 89 85 14 ff ff ff           	movl	%eax, -236(%rbp)
10000131d: e9 f5 01 00 00              	jmp	0x100001517 <__Z4foo2v+0x417>
100001322: 48 8b 3d 97 2d 00 00        	movq	11671(%rip), %rdi       ## 0x1000040c0 <_strlen+0x1000040c0>
100001329: 48 8d 35 89 2b 00 00        	leaq	11145(%rip), %rsi       ## 0x100003eb9 <_strlen+0x100003eb9>
100001330: e8 f7 28 00 00              	callq	0x100003c2c <_strlen+0x100003c2c>
100001335: 48 89 85 08 ff ff ff        	movq	%rax, -248(%rbp)
10000133c: e9 00 00 00 00              	jmp	0x100001341 <__Z4foo2v+0x241>
100001341: 48 8b bd 08 ff ff ff        	movq	-248(%rbp), %rdi
100001348: 48 8b 35 79 2d 00 00        	movq	11641(%rip), %rsi       ## 0x1000040c8 <_strlen+0x1000040c8>
10000134f: e8 fc 03 00 00              	callq	0x100001750 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRS3_S4_E>
100001354: e9 00 00 00 00              	jmp	0x100001359 <__Z4foo2v+0x259>
100001359: 48 8d 3d a0 6c 00 00        	leaq	27808(%rip), %rdi       ## 0x100008000 <_r1>
100001360: e8 5b 28 00 00              	callq	0x100003bc0 <_strlen+0x100003bc0>
100001365: e9 00 00 00 00              	jmp	0x10000136a <__Z4foo2v+0x26a>
10000136a: 48 8d 35 3c 2b 00 00        	leaq	11068(%rip), %rsi       ## 0x100003ead <_strlen+0x100003ead>
100001371: 48 8d 7d 98                 	leaq	-104(%rbp), %rdi
100001375: e8 c6 04 00 00              	callq	0x100001840 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006IDnEEPKc>
10000137a: e9 00 00 00 00              	jmp	0x10000137f <__Z4foo2v+0x27f>
10000137f: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
100001386: 48 8d 75 98                 	leaq	-104(%rbp), %rsi
10000138a: e8 0d 28 00 00              	callq	0x100003b9c <_strlen+0x100003b9c>
10000138f: e9 00 00 00 00              	jmp	0x100001394 <__Z4foo2v+0x294>
100001394: 48 8d 7d 98                 	leaq	-104(%rbp), %rdi
100001398: e8 53 28 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
10000139d: e9 60 00 00 00              	jmp	0x100001402 <__Z4foo2v+0x302>
1000013a2: 48 89 c1                    	movq	%rax, %rcx
1000013a5: 89 d0                       	movl	%edx, %eax
1000013a7: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
1000013ab: 89 45 cc                    	movl	%eax, -52(%rbp)
1000013ae: e9 26 00 00 00              	jmp	0x1000013d9 <__Z4foo2v+0x2d9>
1000013b3: 48 89 c1                    	movq	%rax, %rcx
1000013b6: 89 d0                       	movl	%edx, %eax
1000013b8: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
1000013bc: 89 45 cc                    	movl	%eax, -52(%rbp)
1000013bf: e9 15 00 00 00              	jmp	0x1000013d9 <__Z4foo2v+0x2d9>
1000013c4: 48 89 c1                    	movq	%rax, %rcx
1000013c7: 89 d0                       	movl	%edx, %eax
1000013c9: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
1000013cd: 89 45 cc                    	movl	%eax, -52(%rbp)
1000013d0: 48 8d 7d 98                 	leaq	-104(%rbp), %rdi
1000013d4: e8 17 28 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
1000013d9: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
1000013dd: e8 80 28 00 00              	callq	0x100003c62 <_strlen+0x100003c62>
1000013e2: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
1000013e9: e8 c6 27 00 00              	callq	0x100003bb4 <_strlen+0x100003bb4>
1000013ee: e8 75 28 00 00              	callq	0x100003c68 <_strlen+0x100003c68>
1000013f3: e9 00 00 00 00              	jmp	0x1000013f8 <__Z4foo2v+0x2f8>
1000013f8: e9 00 00 00 00              	jmp	0x1000013fd <__Z4foo2v+0x2fd>
1000013fd: e9 00 00 00 00              	jmp	0x100001402 <__Z4foo2v+0x302>
100001402: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
100001409: e8 94 27 00 00              	callq	0x100003ba2 <_strlen+0x100003ba2>
10000140e: 48 8b bd 38 ff ff ff        	movq	-200(%rbp), %rdi
100001415: e8 86 02 00 00              	callq	0x1000016a0 <__ZNKSt12experimental13coroutines_v114suspend_always11await_readyB6v15006Ev>
10000141a: a8 01                       	testb	$1, %al
10000141c: 0f 85 96 00 00 00           	jne	0x1000014b8 <__Z4foo2v+0x3b8>
100001422: 48 8b 85 48 ff ff ff        	movq	-184(%rbp), %rax
100001429: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100001430: 48 8b bd 48 ff ff ff        	movq	-184(%rbp), %rdi
100001437: e8 94 02 00 00              	callq	0x1000016d0 <__ZNSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEE12from_addressB6v15006EPv>
10000143c: 48 8b bd 38 ff ff ff        	movq	-200(%rbp), %rdi
100001443: 48 89 85 78 ff ff ff        	movq	%rax, -136(%rbp)
10000144a: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
100001451: 48 89 45 80                 	movq	%rax, -128(%rbp)
100001455: 48 8b 75 80                 	movq	-128(%rbp), %rsi
100001459: e8 62 02 00 00              	callq	0x1000016c0 <__ZNKSt12experimental13coroutines_v114suspend_always13await_suspendB6v15006ENS0_16coroutine_handleIvEE>
10000145e: e9 00 00 00 00              	jmp	0x100001463 <__Z4foo2v+0x363>
100001463: e9 00 00 00 00              	jmp	0x100001468 <__Z4foo2v+0x368>
100001468: 31 c0                       	xorl	%eax, %eax
10000146a: 84 c0                       	testb	%al, %al
10000146c: 0f 85 46 00 00 00           	jne	0x1000014b8 <__Z4foo2v+0x3b8>
100001472: e9 00 00 00 00              	jmp	0x100001477 <__Z4foo2v+0x377>
100001477: b0 01                       	movb	$1, %al
100001479: 84 c0                       	testb	%al, %al
10000147b: 0f 85 e8 00 00 00           	jne	0x100001569 <__Z4foo2v+0x469>
100001481: e9 00 00 00 00              	jmp	0x100001486 <__Z4foo2v+0x386>
100001486: b8 02 00 00 00              	movl	$2, %eax
10000148b: 89 85 04 ff ff ff           	movl	%eax, -252(%rbp)
100001491: e9 00 00 00 00              	jmp	0x100001496 <__Z4foo2v+0x396>
100001496: 8b 85 04 ff ff ff           	movl	-252(%rbp), %eax
10000149c: 89 85 00 ff ff ff           	movl	%eax, -256(%rbp)
1000014a2: e9 31 00 00 00              	jmp	0x1000014d8 <__Z4foo2v+0x3d8>
1000014a7: 48 89 c1                    	movq	%rax, %rcx
1000014aa: 89 d0                       	movl	%edx, %eax
1000014ac: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
1000014b0: 89 45 cc                    	movl	%eax, -52(%rbp)
1000014b3: e9 c0 00 00 00              	jmp	0x100001578 <__Z4foo2v+0x478>
1000014b8: 48 8b bd 38 ff ff ff        	movq	-200(%rbp), %rdi
1000014bf: e8 3c 02 00 00              	callq	0x100001700 <__ZNKSt12experimental13coroutines_v114suspend_always12await_resumeB6v15006Ev>
1000014c4: 31 c0                       	xorl	%eax, %eax
1000014c6: 89 85 fc fe ff ff           	movl	%eax, -260(%rbp)
1000014cc: 8b 85 fc fe ff ff           	movl	-260(%rbp), %eax
1000014d2: 89 85 00 ff ff ff           	movl	%eax, -256(%rbp)
1000014d8: 8b 85 00 ff ff ff           	movl	-256(%rbp), %eax
1000014de: 83 f8 00                    	cmpl	$0, %eax
1000014e1: 89 85 f8 fe ff ff           	movl	%eax, -264(%rbp)
1000014e7: 0f 84 11 00 00 00           	je	0x1000014fe <__Z4foo2v+0x3fe>
1000014ed: 8b 85 f8 fe ff ff           	movl	-264(%rbp), %eax
1000014f3: 89 85 14 ff ff ff           	movl	%eax, -236(%rbp)
1000014f9: e9 19 00 00 00              	jmp	0x100001517 <__Z4foo2v+0x417>
1000014fe: 31 c0                       	xorl	%eax, %eax
100001500: 89 85 f4 fe ff ff           	movl	%eax, -268(%rbp)
100001506: e9 00 00 00 00              	jmp	0x10000150b <__Z4foo2v+0x40b>
10000150b: 8b 85 f4 fe ff ff           	movl	-268(%rbp), %eax
100001511: 89 85 14 ff ff ff           	movl	%eax, -236(%rbp)
100001517: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
10000151e: 8b 85 14 ff ff ff           	movl	-236(%rbp), %eax
100001524: 89 85 f0 fe ff ff           	movl	%eax, -272(%rbp)
10000152a: e8 81 03 00 00              	callq	0x1000018b0 <__ZN9resumable12promise_typeD1Ev>
10000152f: 48 8b 85 48 ff ff ff        	movq	-184(%rbp), %rax
100001536: 48 83 f8 00                 	cmpq	$0, %rax
10000153a: 0f 84 0c 00 00 00           	je	0x10000154c <__Z4foo2v+0x44c>
100001540: 48 8b bd 48 ff ff ff        	movq	-184(%rbp), %rdi
100001547: e8 f8 26 00 00              	callq	0x100003c44 <_strlen+0x100003c44>
10000154c: 8b 85 f0 fe ff ff           	movl	-272(%rbp), %eax
100001552: 85 c0                       	testl	%eax, %eax
100001554: 0f 84 0a 00 00 00           	je	0x100001564 <__Z4foo2v+0x464>
10000155a: e9 00 00 00 00              	jmp	0x10000155f <__Z4foo2v+0x45f>
10000155f: e9 05 00 00 00              	jmp	0x100001569 <__Z4foo2v+0x469>
100001564: e9 00 00 00 00              	jmp	0x100001569 <__Z4foo2v+0x469>
100001569: e9 00 00 00 00              	jmp	0x10000156e <__Z4foo2v+0x46e>
10000156e: e9 00 00 00 00              	jmp	0x100001573 <__Z4foo2v+0x473>
100001573: e9 3d 00 00 00              	jmp	0x1000015b5 <__Z4foo2v+0x4b5>
100001578: e9 00 00 00 00              	jmp	0x10000157d <__Z4foo2v+0x47d>
10000157d: e9 00 00 00 00              	jmp	0x100001582 <__Z4foo2v+0x482>
100001582: e9 00 00 00 00              	jmp	0x100001587 <__Z4foo2v+0x487>
100001587: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
10000158e: e8 1d 03 00 00              	callq	0x1000018b0 <__ZN9resumable12promise_typeD1Ev>
100001593: 48 8b 85 48 ff ff ff        	movq	-184(%rbp), %rax
10000159a: 48 83 f8 00                 	cmpq	$0, %rax
10000159e: 0f 84 0c 00 00 00           	je	0x1000015b0 <__Z4foo2v+0x4b0>
1000015a4: 48 8b bd 48 ff ff ff        	movq	-184(%rbp), %rdi
1000015ab: e8 94 26 00 00              	callq	0x100003c44 <_strlen+0x100003c44>
1000015b0: e9 10 00 00 00              	jmp	0x1000015c5 <__Z4foo2v+0x4c5>
1000015b5: 48 8b 85 68 ff ff ff        	movq	-152(%rbp), %rax
1000015bc: 48 81 c4 10 01 00 00        	addq	$272, %rsp              ## imm = 0x110
1000015c3: 5d                          	popq	%rbp
1000015c4: c3                          	retq
1000015c5: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
1000015c9: e8 c2 25 00 00              	callq	0x100003b90 <_strlen+0x100003b90>
1000015ce: 0f 0b                       	ud2

00000001000015d0 <__ZN9resumable12promise_type39get_return_object_on_allocation_failureEv>:
1000015d0: 55                          	pushq	%rbp
1000015d1: 48 89 e5                    	movq	%rsp, %rbp
1000015d4: 48 83 ec 10                 	subq	$16, %rsp
1000015d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000015dc: bf 08 00 00 00              	movl	$8, %edi
1000015e1: e8 70 26 00 00              	callq	0x100003c56 <_strlen+0x100003c56>
1000015e6: 48 89 c7                    	movq	%rax, %rdi
1000015e9: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
1000015ed: e8 46 26 00 00              	callq	0x100003c38 <_strlen+0x100003c38>
1000015f2: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000015f6: 48 8b 35 23 2b 00 00        	movq	11043(%rip), %rsi       ## 0x100004120 <_strlen+0x100004120>
1000015fd: 48 8b 15 04 2b 00 00        	movq	11012(%rip), %rdx       ## 0x100004108 <_strlen+0x100004108>
100001604: e8 65 26 00 00              	callq	0x100003c6e <_strlen+0x100003c6e>
100001609: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100001610 <__ZN9resumable12promise_typeC1Ev>:
100001610: 55                          	pushq	%rbp
100001611: 48 89 e5                    	movq	%rsp, %rbp
100001614: 48 83 ec 10                 	subq	$16, %rsp
100001618: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000161c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001620: e8 2b 03 00 00              	callq	0x100001950 <__ZN9resumable12promise_typeC2Ev>
100001625: 48 83 c4 10                 	addq	$16, %rsp
100001629: 5d                          	popq	%rbp
10000162a: c3                          	retq
10000162b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001630 <__ZN9resumable12promise_type17get_return_objectEv>:
100001630: 55                          	pushq	%rbp
100001631: 48 89 e5                    	movq	%rsp, %rbp
100001634: 48 83 ec 10                 	subq	$16, %rsp
100001638: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000163c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001640: e8 0b 05 00 00              	callq	0x100001b50 <__ZNSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEE12from_promiseB6v15006ERS3_>
100001645: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100001649: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000164d: 48 83 c4 10                 	addq	$16, %rsp
100001651: 5d                          	popq	%rbp
100001652: c3                          	retq
100001653: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00      	nopw	%cs:(%rax,%rax)

0000000100001660 <__ZN9resumableC1ENSt12experimental13coroutines_v116coroutine_handleINS_12promise_typeEEE>:
100001660: 55                          	pushq	%rbp
100001661: 48 89 e5                    	movq	%rsp, %rbp
100001664: 48 83 ec 10                 	subq	$16, %rsp
100001668: 48 89 75 f8                 	movq	%rsi, -8(%rbp)
10000166c: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100001670: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001674: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
100001678: e8 63 05 00 00              	callq	0x100001be0 <__ZN9resumableC2ENSt12experimental13coroutines_v116coroutine_handleINS_12promise_typeEEE>
10000167d: 48 83 c4 10                 	addq	$16, %rsp
100001681: 5d                          	popq	%rbp
100001682: c3                          	retq
100001683: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00      	nopw	%cs:(%rax,%rax)

0000000100001690 <__ZN9resumable12promise_type15initial_suspendEv>:
100001690: 55                          	pushq	%rbp
100001691: 48 89 e5                    	movq	%rsp, %rbp
100001694: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001698: 5d                          	popq	%rbp
100001699: c3                          	retq
10000169a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000016a0 <__ZNKSt12experimental13coroutines_v114suspend_always11await_readyB6v15006Ev>:
1000016a0: 55                          	pushq	%rbp
1000016a1: 48 89 e5                    	movq	%rsp, %rbp
1000016a4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000016a8: 31 c0                       	xorl	%eax, %eax
1000016aa: 24 01                       	andb	$1, %al
1000016ac: 0f b6 c0                    	movzbl	%al, %eax
1000016af: 5d                          	popq	%rbp
1000016b0: c3                          	retq
1000016b1: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

00000001000016c0 <__ZNKSt12experimental13coroutines_v114suspend_always13await_suspendB6v15006ENS0_16coroutine_handleIvEE>:
1000016c0: 55                          	pushq	%rbp
1000016c1: 48 89 e5                    	movq	%rsp, %rbp
1000016c4: 48 89 75 f8                 	movq	%rsi, -8(%rbp)
1000016c8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
1000016cc: 5d                          	popq	%rbp
1000016cd: c3                          	retq
1000016ce: 66 90                       	nop

00000001000016d0 <__ZNSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEE12from_addressB6v15006EPv>:
1000016d0: 55                          	pushq	%rbp
1000016d1: 48 89 e5                    	movq	%rsp, %rbp
1000016d4: 48 83 ec 10                 	subq	$16, %rsp
1000016d8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
1000016dc: 48 8d 7d f8                 	leaq	-8(%rbp), %rdi
1000016e0: e8 9b 04 00 00              	callq	0x100001b80 <__ZNSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEEC1Ev>
1000016e5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000016e9: 48 89 45 f8                 	movq	%rax, -8(%rbp)
1000016ed: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000016f1: 48 83 c4 10                 	addq	$16, %rsp
1000016f5: 5d                          	popq	%rbp
1000016f6: c3                          	retq
1000016f7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100001700 <__ZNKSt12experimental13coroutines_v114suspend_always12await_resumeB6v15006Ev>:
100001700: 55                          	pushq	%rbp
100001701: 48 89 e5                    	movq	%rsp, %rbp
100001704: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001708: 5d                          	popq	%rbp
100001709: c3                          	retq
10000170a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100001710 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>:
100001710: 55                          	pushq	%rbp
100001711: 48 89 e5                    	movq	%rsp, %rbp
100001714: 48 83 ec 20                 	subq	$32, %rsp
100001718: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000171c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001720: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001724: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100001728: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000172c: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100001730: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001734: e8 a5 24 00 00              	callq	0x100003bde <_strlen+0x100003bde>
100001739: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
10000173d: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100001741: 48 89 c2                    	movq	%rax, %rdx
100001744: e8 cb 24 00 00              	callq	0x100003c14 <_strlen+0x100003c14>
100001749: 48 83 c4 20                 	addq	$32, %rsp
10000174d: 5d                          	popq	%rbp
10000174e: c3                          	retq
10000174f: 90                          	nop

0000000100001750 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRS3_S4_E>:
100001750: 55                          	pushq	%rbp
100001751: 48 89 e5                    	movq	%rsp, %rbp
100001754: 48 83 ec 10                 	subq	$16, %rsp
100001758: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000175c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001760: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001764: ff 55 f0                    	callq	*-16(%rbp)
100001767: 48 83 c4 10                 	addq	$16, %rsp
10000176b: 5d                          	popq	%rbp
10000176c: c3                          	retq
10000176d: 0f 1f 00                    	nopl	(%rax)

0000000100001770 <__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_>:
100001770: 55                          	pushq	%rbp
100001771: 48 89 e5                    	movq	%rsp, %rbp
100001774: 48 83 ec 10                 	subq	$16, %rsp
100001778: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000177c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001780: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100001784: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001788: 48 8b 07                    	movq	(%rdi), %rax
10000178b: 48 8b 40 e8                 	movq	-24(%rax), %rax
10000178f: 48 01 c7                    	addq	%rax, %rdi
100001792: be 0a 00 00 00              	movl	$10, %esi
100001797: e8 04 0e 00 00              	callq	0x1000025a0 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec>
10000179c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000017a0: 0f be f0                    	movsbl	%al, %esi
1000017a3: e8 54 24 00 00              	callq	0x100003bfc <_strlen+0x100003bfc>
1000017a8: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000017ac: e8 51 24 00 00              	callq	0x100003c02 <_strlen+0x100003c02>
1000017b1: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000017b5: 48 83 c4 10                 	addq	$16, %rsp
1000017b9: 5d                          	popq	%rbp
1000017ba: c3                          	retq
1000017bb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000017c0 <__ZN9resumable6resumeEv>:
1000017c0: 55                          	pushq	%rbp
1000017c1: 48 89 e5                    	movq	%rsp, %rbp
1000017c4: 48 83 ec 10                 	subq	$16, %rsp
1000017c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000017cc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000017d0: e8 8b 04 00 00              	callq	0x100001c60 <__ZNSt12experimental13coroutines_v116coroutine_handleIvE6resumeB6v15006Ev>
1000017d5: b0 01                       	movb	$1, %al
1000017d7: 24 01                       	andb	$1, %al
1000017d9: 0f b6 c0                    	movzbl	%al, %eax
1000017dc: 48 83 c4 10                 	addq	$16, %rsp
1000017e0: 5d                          	popq	%rbp
1000017e1: c3                          	retq
1000017e2: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

00000001000017f0 <__ZN9resumable12promise_type12return_valueERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE>:
1000017f0: 55                          	pushq	%rbp
1000017f1: 48 89 e5                    	movq	%rsp, %rbp
1000017f4: 48 83 ec 20                 	subq	$32, %rsp
1000017f8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000017fc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001800: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001804: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100001808: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000180c: 48 8b 3d ad 28 00 00        	movq	10413(%rip), %rdi       ## 0x1000040c0 <_strlen+0x1000040c0>
100001813: e8 1a 24 00 00              	callq	0x100003c32 <_strlen+0x100003c32>
100001818: 48 89 c7                    	movq	%rax, %rdi
10000181b: 48 8b 35 a6 28 00 00        	movq	10406(%rip), %rsi       ## 0x1000040c8 <_strlen+0x1000040c8>
100001822: e8 29 ff ff ff              	callq	0x100001750 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRS3_S4_E>
100001827: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
10000182b: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000182f: e8 c2 23 00 00              	callq	0x100003bf6 <_strlen+0x100003bf6>
100001834: 48 83 c4 20                 	addq	$32, %rsp
100001838: 5d                          	popq	%rbp
100001839: c3                          	retq
10000183a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100001840 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006IDnEEPKc>:
100001840: 55                          	pushq	%rbp
100001841: 48 89 e5                    	movq	%rsp, %rbp
100001844: 48 83 ec 10                 	subq	$16, %rsp
100001848: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000184c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001850: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001854: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001858: e8 63 0f 00 00              	callq	0x1000027c0 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006IDnEEPKc>
10000185d: 48 83 c4 10                 	addq	$16, %rsp
100001861: 5d                          	popq	%rbp
100001862: c3                          	retq
100001863: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00      	nopw	%cs:(%rax,%rax)

0000000100001870 <__ZN9resumable12promise_type19unhandled_exceptionEv>:
100001870: 55                          	pushq	%rbp
100001871: 48 89 e5                    	movq	%rsp, %rbp
100001874: 48 83 ec 10                 	subq	$16, %rsp
100001878: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000187c: e8 bd 23 00 00              	callq	0x100003c3e <_strlen+0x100003c3e>
100001881: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000188b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001890 <___clang_call_terminate>:
100001890: 50                          	pushq	%rax
100001891: e8 cc 23 00 00              	callq	0x100003c62 <_strlen+0x100003c62>
100001896: e8 a3 23 00 00              	callq	0x100003c3e <_strlen+0x100003c3e>
10000189b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000018a0 <__ZN9resumable12promise_type13final_suspendEv>:
1000018a0: 55                          	pushq	%rbp
1000018a1: 48 89 e5                    	movq	%rsp, %rbp
1000018a4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000018a8: 5d                          	popq	%rbp
1000018a9: c3                          	retq
1000018aa: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000018b0 <__ZN9resumable12promise_typeD1Ev>:
1000018b0: 55                          	pushq	%rbp
1000018b1: 48 89 e5                    	movq	%rsp, %rbp
1000018b4: 48 83 ec 10                 	subq	$16, %rsp
1000018b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000018bc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000018c0: e8 7b 0f 00 00              	callq	0x100002840 <__ZN9resumable12promise_typeD2Ev>
1000018c5: 48 83 c4 10                 	addq	$16, %rsp
1000018c9: 5d                          	popq	%rbp
1000018ca: c3                          	retq
1000018cb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000018d0 <_main>:
1000018d0: 55                          	pushq	%rbp
1000018d1: 48 89 e5                    	movq	%rsp, %rbp
1000018d4: 48 83 ec 10                 	subq	$16, %rsp
1000018d8: c7 45 fc 00 00 00 00        	movl	$0, -4(%rbp)
1000018df: 48 8d 3d 1a 67 00 00        	leaq	26394(%rip), %rdi       ## 0x100008000 <_r1>
1000018e6: e8 d5 22 00 00              	callq	0x100003bc0 <_strlen+0x100003bc0>
1000018eb: 31 c0                       	xorl	%eax, %eax
1000018ed: 48 83 c4 10                 	addq	$16, %rsp
1000018f1: 5d                          	popq	%rbp
1000018f2: c3                          	retq
1000018f3: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00      	nopw	%cs:(%rax,%rax)

0000000100001900 <__ZN9resumableD2Ev>:
100001900: 55                          	pushq	%rbp
100001901: 48 89 e5                    	movq	%rsp, %rbp
100001904: 48 83 ec 10                 	subq	$16, %rsp
100001908: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000190c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001910: e8 1b 00 00 00              	callq	0x100001930 <__ZNSt12experimental13coroutines_v116coroutine_handleIvE7destroyB6v15006Ev>
100001915: e9 00 00 00 00              	jmp	0x10000191a <__ZN9resumableD2Ev+0x1a>
10000191a: 48 83 c4 10                 	addq	$16, %rsp
10000191e: 5d                          	popq	%rbp
10000191f: c3                          	retq
100001920: 48 89 c7                    	movq	%rax, %rdi
100001923: e8 68 ff ff ff              	callq	0x100001890 <___clang_call_terminate>
100001928: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100001930 <__ZNSt12experimental13coroutines_v116coroutine_handleIvE7destroyB6v15006Ev>:
100001930: 55                          	pushq	%rbp
100001931: 48 89 e5                    	movq	%rsp, %rbp
100001934: 48 83 ec 10                 	subq	$16, %rsp
100001938: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000193c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001940: 48 8b 00                    	movq	(%rax), %rax
100001943: 48 89 c7                    	movq	%rax, %rdi
100001946: ff 50 08                    	callq	*8(%rax)
100001949: 48 83 c4 10                 	addq	$16, %rsp
10000194d: 5d                          	popq	%rbp
10000194e: c3                          	retq
10000194f: 90                          	nop

0000000100001950 <__ZN9resumable12promise_typeC2Ev>:
100001950: 55                          	pushq	%rbp
100001951: 48 89 e5                    	movq	%rsp, %rbp
100001954: 48 83 ec 10                 	subq	$16, %rsp
100001958: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000195c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001960: e8 0b 00 00 00              	callq	0x100001970 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Ev>
100001965: 48 83 c4 10                 	addq	$16, %rsp
100001969: 5d                          	popq	%rbp
10000196a: c3                          	retq
10000196b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001970 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Ev>:
100001970: 55                          	pushq	%rbp
100001971: 48 89 e5                    	movq	%rsp, %rbp
100001974: 48 83 ec 10                 	subq	$16, %rsp
100001978: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000197c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001980: e8 0b 00 00 00              	callq	0x100001990 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Ev>
100001985: 48 83 c4 10                 	addq	$16, %rsp
100001989: 5d                          	popq	%rbp
10000198a: c3                          	retq
10000198b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001990 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Ev>:
100001990: 55                          	pushq	%rbp
100001991: 48 89 e5                    	movq	%rsp, %rbp
100001994: 48 83 ec 20                 	subq	$32, %rsp
100001998: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000199c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000019a0: 48 89 7d e0                 	movq	%rdi, -32(%rbp)
1000019a4: 48 8d 75 f0                 	leaq	-16(%rbp), %rsi
1000019a8: 48 8d 55 e8                 	leaq	-24(%rbp), %rdx
1000019ac: e8 2f 00 00 00              	callq	0x1000019e0 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_>
1000019b1: e9 00 00 00 00              	jmp	0x1000019b6 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Ev+0x26>
1000019b6: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
1000019ba: e8 51 00 00 00              	callq	0x100001a10 <__ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_>
1000019bf: e9 00 00 00 00              	jmp	0x1000019c4 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Ev+0x34>
1000019c4: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
1000019c8: e8 53 00 00 00              	callq	0x100001a20 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__default_initB6v15006Ev>
1000019cd: e9 00 00 00 00              	jmp	0x1000019d2 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Ev+0x42>
1000019d2: 48 83 c4 20                 	addq	$32, %rsp
1000019d6: 5d                          	popq	%rbp
1000019d7: c3                          	retq
1000019d8: 48 89 c7                    	movq	%rax, %rdi
1000019db: e8 b0 fe ff ff              	callq	0x100001890 <___clang_call_terminate>

00000001000019e0 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_>:
1000019e0: 55                          	pushq	%rbp
1000019e1: 48 89 e5                    	movq	%rsp, %rbp
1000019e4: 48 83 ec 20                 	subq	$32, %rsp
1000019e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000019ec: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000019f0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000019f4: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000019f8: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000019fc: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100001a00: e8 3b 00 00 00              	callq	0x100001a40 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15006INS_18__default_init_tagESA_EEOT_OT0_>
100001a05: 48 83 c4 20                 	addq	$32, %rsp
100001a09: 5d                          	popq	%rbp
100001a0a: c3                          	retq
100001a0b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001a10 <__ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_>:
100001a10: 55                          	pushq	%rbp
100001a11: 48 89 e5                    	movq	%rsp, %rbp
100001a14: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001a18: 5d                          	popq	%rbp
100001a19: c3                          	retq
100001a1a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100001a20 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__default_initB6v15006Ev>:
100001a20: 55                          	pushq	%rbp
100001a21: 48 89 e5                    	movq	%rsp, %rbp
100001a24: 48 83 ec 10                 	subq	$16, %rsp
100001a28: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001a2c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001a30: e8 9b 00 00 00              	callq	0x100001ad0 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroB6v15006Ev>
100001a35: 48 83 c4 10                 	addq	$16, %rsp
100001a39: 5d                          	popq	%rbp
100001a3a: c3                          	retq
100001a3b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001a40 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15006INS_18__default_init_tagESA_EEOT_OT0_>:
100001a40: 55                          	pushq	%rbp
100001a41: 48 89 e5                    	movq	%rsp, %rbp
100001a44: 48 83 ec 30                 	subq	$48, %rsp
100001a48: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001a4c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001a50: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100001a54: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001a58: 48 89 7d d0                 	movq	%rdi, -48(%rbp)
100001a5c: e8 0f 00 00 00              	callq	0x100001a70 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15006ENS_18__default_init_tagE>
100001a61: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100001a65: e8 16 00 00 00              	callq	0x100001a80 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15006ENS_18__default_init_tagE>
100001a6a: 48 83 c4 30                 	addq	$48, %rsp
100001a6e: 5d                          	popq	%rbp
100001a6f: c3                          	retq

0000000100001a70 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15006ENS_18__default_init_tagE>:
100001a70: 55                          	pushq	%rbp
100001a71: 48 89 e5                    	movq	%rsp, %rbp
100001a74: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100001a78: 5d                          	popq	%rbp
100001a79: c3                          	retq
100001a7a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100001a80 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15006ENS_18__default_init_tagE>:
100001a80: 55                          	pushq	%rbp
100001a81: 48 89 e5                    	movq	%rsp, %rbp
100001a84: 48 83 ec 10                 	subq	$16, %rsp
100001a88: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100001a8c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001a90: e8 0b 00 00 00              	callq	0x100001aa0 <__ZNSt3__19allocatorIcEC2B6v15006Ev>
100001a95: 48 83 c4 10                 	addq	$16, %rsp
100001a99: 5d                          	popq	%rbp
100001a9a: c3                          	retq
100001a9b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001aa0 <__ZNSt3__19allocatorIcEC2B6v15006Ev>:
100001aa0: 55                          	pushq	%rbp
100001aa1: 48 89 e5                    	movq	%rsp, %rbp
100001aa4: 48 83 ec 10                 	subq	$16, %rsp
100001aa8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001aac: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001ab0: e8 0b 00 00 00              	callq	0x100001ac0 <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15006Ev>
100001ab5: 48 83 c4 10                 	addq	$16, %rsp
100001ab9: 5d                          	popq	%rbp
100001aba: c3                          	retq
100001abb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001ac0 <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15006Ev>:
100001ac0: 55                          	pushq	%rbp
100001ac1: 48 89 e5                    	movq	%rsp, %rbp
100001ac4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001ac8: 5d                          	popq	%rbp
100001ac9: c3                          	retq
100001aca: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100001ad0 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroB6v15006Ev>:
100001ad0: 55                          	pushq	%rbp
100001ad1: 48 89 e5                    	movq	%rsp, %rbp
100001ad4: 48 83 ec 30                 	subq	$48, %rsp
100001ad8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001adc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001ae0: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100001ae4: 48 8d 7d e0                 	leaq	-32(%rbp), %rdi
100001ae8: 31 f6                       	xorl	%esi, %esi
100001aea: ba 18 00 00 00              	movl	$24, %edx
100001aef: e8 80 21 00 00              	callq	0x100003c74 <_strlen+0x100003c74>
100001af4: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100001af8: e8 23 00 00 00              	callq	0x100001b20 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev>
100001afd: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100001b01: 48 89 08                    	movq	%rcx, (%rax)
100001b04: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100001b08: 48 89 48 08                 	movq	%rcx, 8(%rax)
100001b0c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100001b10: 48 89 48 10                 	movq	%rcx, 16(%rax)
100001b14: 48 83 c4 30                 	addq	$48, %rsp
100001b18: 5d                          	popq	%rbp
100001b19: c3                          	retq
100001b1a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100001b20 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev>:
100001b20: 55                          	pushq	%rbp
100001b21: 48 89 e5                    	movq	%rsp, %rbp
100001b24: 48 83 ec 10                 	subq	$16, %rsp
100001b28: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001b2c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001b30: e8 0b 00 00 00              	callq	0x100001b40 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev>
100001b35: 48 83 c4 10                 	addq	$16, %rsp
100001b39: 5d                          	popq	%rbp
100001b3a: c3                          	retq
100001b3b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001b40 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev>:
100001b40: 55                          	pushq	%rbp
100001b41: 48 89 e5                    	movq	%rsp, %rbp
100001b44: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001b48: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001b4c: 5d                          	popq	%rbp
100001b4d: c3                          	retq
100001b4e: 66 90                       	nop

0000000100001b50 <__ZNSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEE12from_promiseB6v15006ERS3_>:
100001b50: 55                          	pushq	%rbp
100001b51: 48 89 e5                    	movq	%rsp, %rbp
100001b54: 48 83 ec 10                 	subq	$16, %rsp
100001b58: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100001b5c: 48 8d 7d f8                 	leaq	-8(%rbp), %rdi
100001b60: e8 1b 00 00 00              	callq	0x100001b80 <__ZNSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEEC1Ev>
100001b65: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001b69: 48 83 c0 f0                 	addq	$-16, %rax
100001b6d: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100001b71: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001b75: 48 83 c4 10                 	addq	$16, %rsp
100001b79: 5d                          	popq	%rbp
100001b7a: c3                          	retq
100001b7b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001b80 <__ZNSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEEC1Ev>:
100001b80: 55                          	pushq	%rbp
100001b81: 48 89 e5                    	movq	%rsp, %rbp
100001b84: 48 83 ec 10                 	subq	$16, %rsp
100001b88: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001b8c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001b90: e8 0b 00 00 00              	callq	0x100001ba0 <__ZNSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEEC2Ev>
100001b95: 48 83 c4 10                 	addq	$16, %rsp
100001b99: 5d                          	popq	%rbp
100001b9a: c3                          	retq
100001b9b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001ba0 <__ZNSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEEC2Ev>:
100001ba0: 55                          	pushq	%rbp
100001ba1: 48 89 e5                    	movq	%rsp, %rbp
100001ba4: 48 83 ec 10                 	subq	$16, %rsp
100001ba8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001bac: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001bb0: e8 0b 00 00 00              	callq	0x100001bc0 <__ZNSt12experimental13coroutines_v116coroutine_handleIvEC2B6v15006Ev>
100001bb5: 48 83 c4 10                 	addq	$16, %rsp
100001bb9: 5d                          	popq	%rbp
100001bba: c3                          	retq
100001bbb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001bc0 <__ZNSt12experimental13coroutines_v116coroutine_handleIvEC2B6v15006Ev>:
100001bc0: 55                          	pushq	%rbp
100001bc1: 48 89 e5                    	movq	%rsp, %rbp
100001bc4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001bc8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001bcc: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100001bd3: 5d                          	popq	%rbp
100001bd4: c3                          	retq
100001bd5: 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)

0000000100001be0 <__ZN9resumableC2ENSt12experimental13coroutines_v116coroutine_handleINS_12promise_typeEEE>:
100001be0: 55                          	pushq	%rbp
100001be1: 48 89 e5                    	movq	%rsp, %rbp
100001be4: 48 83 ec 10                 	subq	$16, %rsp
100001be8: 48 89 75 f8                 	movq	%rsi, -8(%rbp)
100001bec: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100001bf0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001bf4: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
100001bf8: 48 89 08                    	movq	%rcx, (%rax)
100001bfb: 48 8d 7d f8                 	leaq	-8(%rbp), %rdi
100001bff: e8 3c 00 00 00              	callq	0x100001c40 <__ZNKSt12experimental13coroutines_v116coroutine_handleIvEcvbB6v15006Ev>
100001c04: 34 ff                       	xorb	$-1, %al
100001c06: a8 01                       	testb	$1, %al
100001c08: 0f 85 05 00 00 00           	jne	0x100001c13 <__ZN9resumableC2ENSt12experimental13coroutines_v116coroutine_handleINS_12promise_typeEEE+0x33>
100001c0e: e9 1f 00 00 00              	jmp	0x100001c32 <__ZN9resumableC2ENSt12experimental13coroutines_v116coroutine_handleINS_12promise_typeEEE+0x52>
100001c13: 48 8d 3d a4 22 00 00        	leaq	8868(%rip), %rdi        ## 0x100003ebe <_strlen+0x100003ebe>
100001c1a: 48 8d 35 a7 22 00 00        	leaq	8871(%rip), %rsi        ## 0x100003ec8 <_strlen+0x100003ec8>
100001c21: 48 8d 0d a8 22 00 00        	leaq	8872(%rip), %rcx        ## 0x100003ed0 <_strlen+0x100003ed0>
100001c28: ba 08 00 00 00              	movl	$8, %edx
100001c2d: e8 1e 20 00 00              	callq	0x100003c50 <_strlen+0x100003c50>
100001c32: e9 00 00 00 00              	jmp	0x100001c37 <__ZN9resumableC2ENSt12experimental13coroutines_v116coroutine_handleINS_12promise_typeEEE+0x57>
100001c37: 48 83 c4 10                 	addq	$16, %rsp
100001c3b: 5d                          	popq	%rbp
100001c3c: c3                          	retq
100001c3d: 0f 1f 00                    	nopl	(%rax)

0000000100001c40 <__ZNKSt12experimental13coroutines_v116coroutine_handleIvEcvbB6v15006Ev>:
100001c40: 55                          	pushq	%rbp
100001c41: 48 89 e5                    	movq	%rsp, %rbp
100001c44: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001c48: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001c4c: 48 83 38 00                 	cmpq	$0, (%rax)
100001c50: 0f 95 c0                    	setne	%al
100001c53: 24 01                       	andb	$1, %al
100001c55: 0f b6 c0                    	movzbl	%al, %eax
100001c58: 5d                          	popq	%rbp
100001c59: c3                          	retq
100001c5a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100001c60 <__ZNSt12experimental13coroutines_v116coroutine_handleIvE6resumeB6v15006Ev>:
100001c60: 55                          	pushq	%rbp
100001c61: 48 89 e5                    	movq	%rsp, %rbp
100001c64: 48 83 ec 10                 	subq	$16, %rsp
100001c68: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001c6c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001c70: 48 8b 00                    	movq	(%rax), %rax
100001c73: 48 89 c7                    	movq	%rax, %rdi
100001c76: ff 10                       	callq	*(%rax)
100001c78: 48 83 c4 10                 	addq	$16, %rsp
100001c7c: 5d                          	popq	%rbp
100001c7d: c3                          	retq
100001c7e: 66 90                       	nop

0000000100001c80 <__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE>:
100001c80: 55                          	pushq	%rbp
100001c81: 48 89 e5                    	movq	%rsp, %rbp
100001c84: 48 83 ec 20                 	subq	$32, %rsp
100001c88: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001c8c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001c90: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001c94: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100001c98: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001c9c: e8 1f 02 00 00              	callq	0x100001ec0 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev>
100001ca1: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100001ca5: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001ca9: e8 42 02 00 00              	callq	0x100001ef0 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15006Ev>
100001cae: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100001cb2: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100001cb6: 48 89 c2                    	movq	%rax, %rdx
100001cb9: e8 56 1f 00 00              	callq	0x100003c14 <_strlen+0x100003c14>
100001cbe: 48 83 c4 20                 	addq	$32, %rsp
100001cc2: 5d                          	popq	%rbp
100001cc3: c3                          	retq
100001cc4: 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

0000000100001cd0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>:
100001cd0: 55                          	pushq	%rbp
100001cd1: 48 89 e5                    	movq	%rsp, %rbp
100001cd4: 48 81 ec 90 00 00 00        	subq	$144, %rsp
100001cdb: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001cdf: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001ce3: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100001ce7: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
100001ceb: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
100001cef: e8 14 1f 00 00              	callq	0x100003c08 <_strlen+0x100003c08>
100001cf4: e9 00 00 00 00              	jmp	0x100001cf9 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x29>
100001cf9: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
100001cfd: e8 3e 02 00 00              	callq	0x100001f40 <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15006Ev>
100001d02: 88 45 b7                    	movb	%al, -73(%rbp)
100001d05: e9 00 00 00 00              	jmp	0x100001d0a <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x3a>
100001d0a: 8a 45 b7                    	movb	-73(%rbp), %al
100001d0d: a8 01                       	testb	$1, %al
100001d0f: 0f 85 05 00 00 00           	jne	0x100001d1a <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x4a>
100001d15: e9 5d 01 00 00              	jmp	0x100001e77 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1a7>
100001d1a: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
100001d1e: 48 8d 7d b8                 	leaq	-72(%rbp), %rdi
100001d22: e8 59 04 00 00              	callq	0x100002180 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15006ERNS_13basic_ostreamIcS2_EE>
100001d27: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001d2b: 48 89 45 a8                 	movq	%rax, -88(%rbp)
100001d2f: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001d33: 48 8b 07                    	movq	(%rdi), %rax
100001d36: 48 8b 40 e8                 	movq	-24(%rax), %rax
100001d3a: 48 01 c7                    	addq	%rax, %rdi
100001d3d: e8 6e 04 00 00              	callq	0x1000021b0 <__ZNKSt3__18ios_base5flagsB6v15006Ev>
100001d42: 89 45 b0                    	movl	%eax, -80(%rbp)
100001d45: e9 00 00 00 00              	jmp	0x100001d4a <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x7a>
100001d4a: 8b 45 b0                    	movl	-80(%rbp), %eax
100001d4d: 25 b0 00 00 00              	andl	$176, %eax
100001d52: 83 f8 20                    	cmpl	$32, %eax
100001d55: 0f 85 11 00 00 00           	jne	0x100001d6c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x9c>
100001d5b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001d5f: 48 03 45 e8                 	addq	-24(%rbp), %rax
100001d63: 48 89 45 a0                 	movq	%rax, -96(%rbp)
100001d67: e9 08 00 00 00              	jmp	0x100001d74 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xa4>
100001d6c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001d70: 48 89 45 a0                 	movq	%rax, -96(%rbp)
100001d74: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100001d78: 48 89 45 80                 	movq	%rax, -128(%rbp)
100001d7c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001d80: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100001d84: 48 01 c8                    	addq	%rcx, %rax
100001d87: 48 89 45 88                 	movq	%rax, -120(%rbp)
100001d8b: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001d8f: 48 8b 07                    	movq	(%rdi), %rax
100001d92: 48 8b 40 e8                 	movq	-24(%rax), %rax
100001d96: 48 01 c7                    	addq	%rax, %rdi
100001d99: 48 89 7d 90                 	movq	%rdi, -112(%rbp)
100001d9d: e8 2e 04 00 00              	callq	0x1000021d0 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev>
100001da2: 88 45 9f                    	movb	%al, -97(%rbp)
100001da5: e9 00 00 00 00              	jmp	0x100001daa <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xda>
100001daa: 4c 8b 45 90                 	movq	-112(%rbp), %r8
100001dae: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100001db2: 48 8b 55 80                 	movq	-128(%rbp), %rdx
100001db6: 48 8b 75 a8                 	movq	-88(%rbp), %rsi
100001dba: 8a 45 9f                    	movb	-97(%rbp), %al
100001dbd: 48 8b 7d b8                 	movq	-72(%rbp), %rdi
100001dc1: 44 0f be c8                 	movsbl	%al, %r9d
100001dc5: e8 96 01 00 00              	callq	0x100001f60 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>
100001dca: 48 89 85 78 ff ff ff        	movq	%rax, -136(%rbp)
100001dd1: e9 00 00 00 00              	jmp	0x100001dd6 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x106>
100001dd6: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
100001ddd: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100001de1: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100001de5: e8 56 04 00 00              	callq	0x100002240 <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15006Ev>
100001dea: a8 01                       	testb	$1, %al
100001dec: 0f 85 05 00 00 00           	jne	0x100001df7 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x127>
100001df2: e9 7b 00 00 00              	jmp	0x100001e72 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1a2>
100001df7: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001dfb: 48 8b 07                    	movq	(%rdi), %rax
100001dfe: 48 8b 40 e8                 	movq	-24(%rax), %rax
100001e02: 48 01 c7                    	addq	%rax, %rdi
100001e05: be 05 00 00 00              	movl	$5, %esi
100001e0a: e8 51 04 00 00              	callq	0x100002260 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej>
100001e0f: e9 00 00 00 00              	jmp	0x100001e14 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x144>
100001e14: e9 59 00 00 00              	jmp	0x100001e72 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1a2>
100001e19: 48 89 c1                    	movq	%rax, %rcx
100001e1c: 89 d0                       	movl	%edx, %eax
100001e1e: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100001e22: 89 45 cc                    	movl	%eax, -52(%rbp)
100001e25: e9 15 00 00 00              	jmp	0x100001e3f <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x16f>
100001e2a: 48 89 c1                    	movq	%rax, %rcx
100001e2d: 89 d0                       	movl	%edx, %eax
100001e2f: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100001e33: 89 45 cc                    	movl	%eax, -52(%rbp)
100001e36: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
100001e3a: e8 cf 1d 00 00              	callq	0x100003c0e <_strlen+0x100003c0e>
100001e3f: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100001e43: e8 1a 1e 00 00              	callq	0x100003c62 <_strlen+0x100003c62>
100001e48: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001e4c: 48 8b 07                    	movq	(%rdi), %rax
100001e4f: 48 8b 40 e8                 	movq	-24(%rax), %rax
100001e53: 48 01 c7                    	addq	%rax, %rdi
100001e56: e8 c5 1d 00 00              	callq	0x100003c20 <_strlen+0x100003c20>
100001e5b: e9 00 00 00 00              	jmp	0x100001e60 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x190>
100001e60: e8 03 1e 00 00              	callq	0x100003c68 <_strlen+0x100003c68>
100001e65: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001e69: 48 81 c4 90 00 00 00        	addq	$144, %rsp
100001e70: 5d                          	popq	%rbp
100001e71: c3                          	retq
100001e72: e9 00 00 00 00              	jmp	0x100001e77 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1a7>
100001e77: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
100001e7b: e8 8e 1d 00 00              	callq	0x100003c0e <_strlen+0x100003c0e>
100001e80: e9 e0 ff ff ff              	jmp	0x100001e65 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x195>
100001e85: 48 89 c1                    	movq	%rax, %rcx
100001e88: 89 d0                       	movl	%edx, %eax
100001e8a: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100001e8e: 89 45 cc                    	movl	%eax, -52(%rbp)
100001e91: e8 d2 1d 00 00              	callq	0x100003c68 <_strlen+0x100003c68>
100001e96: e9 00 00 00 00              	jmp	0x100001e9b <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1cb>
100001e9b: e9 00 00 00 00              	jmp	0x100001ea0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1d0>
100001ea0: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100001ea4: e8 e7 1c 00 00              	callq	0x100003b90 <_strlen+0x100003b90>
100001ea9: 48 89 c7                    	movq	%rax, %rdi
100001eac: e8 df f9 ff ff              	callq	0x100001890 <___clang_call_terminate>
100001eb1: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000100001ec0 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev>:
100001ec0: 55                          	pushq	%rbp
100001ec1: 48 89 e5                    	movq	%rsp, %rbp
100001ec4: 48 83 ec 10                 	subq	$16, %rsp
100001ec8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001ecc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001ed0: e8 eb 07 00 00              	callq	0x1000026c0 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev>
100001ed5: 48 89 c7                    	movq	%rax, %rdi
100001ed8: e8 d3 07 00 00              	callq	0x1000026b0 <__ZNSt3__112__to_addressB6v15006IKcEEPT_S3_>
100001edd: 48 83 c4 10                 	addq	$16, %rsp
100001ee1: 5d                          	popq	%rbp
100001ee2: c3                          	retq
100001ee3: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00      	nopw	%cs:(%rax,%rax)

0000000100001ef0 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15006Ev>:
100001ef0: 55                          	pushq	%rbp
100001ef1: 48 89 e5                    	movq	%rsp, %rbp
100001ef4: 48 83 ec 20                 	subq	$32, %rsp
100001ef8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001efc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001f00: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100001f04: e8 17 05 00 00              	callq	0x100002420 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev>
100001f09: a8 01                       	testb	$1, %al
100001f0b: 0f 85 05 00 00 00           	jne	0x100001f16 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15006Ev+0x26>
100001f11: e9 12 00 00 00              	jmp	0x100001f28 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15006Ev+0x38>
100001f16: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001f1a: e8 51 08 00 00              	callq	0x100002770 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB6v15006Ev>
100001f1f: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100001f23: e9 0d 00 00 00              	jmp	0x100001f35 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15006Ev+0x45>
100001f28: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001f2c: e8 5f 08 00 00              	callq	0x100002790 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB6v15006Ev>
100001f31: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100001f35: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100001f39: 48 83 c4 20                 	addq	$32, %rsp
100001f3d: 5d                          	popq	%rbp
100001f3e: c3                          	retq
100001f3f: 90                          	nop

0000000100001f40 <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15006Ev>:
100001f40: 55                          	pushq	%rbp
100001f41: 48 89 e5                    	movq	%rsp, %rbp
100001f44: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001f48: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001f4c: 8a 00                       	movb	(%rax), %al
100001f4e: 24 01                       	andb	$1, %al
100001f50: 0f b6 c0                    	movzbl	%al, %eax
100001f53: 5d                          	popq	%rbp
100001f54: c3                          	retq
100001f55: 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)

0000000100001f60 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>:
100001f60: 55                          	pushq	%rbp
100001f61: 48 89 e5                    	movq	%rsp, %rbp
100001f64: 48 81 ec 90 00 00 00        	subq	$144, %rsp
100001f6b: 44 88 c8                    	movb	%r9b, %al
100001f6e: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100001f72: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100001f76: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100001f7a: 48 89 4d d8                 	movq	%rcx, -40(%rbp)
100001f7e: 4c 89 45 d0                 	movq	%r8, -48(%rbp)
100001f82: 88 45 cf                    	movb	%al, -49(%rbp)
100001f85: 48 83 7d f0 00              	cmpq	$0, -16(%rbp)
100001f8a: 0f 85 0d 00 00 00           	jne	0x100001f9d <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x3d>
100001f90: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001f94: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100001f98: e9 bd 01 00 00              	jmp	0x10000215a <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fa>
100001f9d: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100001fa1: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100001fa5: 48 29 c8                    	subq	%rcx, %rax
100001fa8: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100001fac: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100001fb0: e8 db 02 00 00              	callq	0x100002290 <__ZNKSt3__18ios_base5widthB6v15006Ev>
100001fb5: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100001fb9: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100001fbd: 48 3b 45 c0                 	cmpq	-64(%rbp), %rax
100001fc1: 0f 8e 14 00 00 00           	jle	0x100001fdb <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x7b>
100001fc7: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100001fcb: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100001fcf: 48 29 c8                    	subq	%rcx, %rax
100001fd2: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100001fd6: e9 08 00 00 00              	jmp	0x100001fe3 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x83>
100001fdb: 48 c7 45 b8 00 00 00 00     	movq	$0, -72(%rbp)
100001fe3: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100001fe7: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100001feb: 48 29 c8                    	subq	%rcx, %rax
100001fee: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100001ff2: 48 83 7d b0 00              	cmpq	$0, -80(%rbp)
100001ff7: 0f 8e 35 00 00 00           	jle	0x100002032 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xd2>
100001ffd: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100002001: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100002005: 48 8b 55 b0                 	movq	-80(%rbp), %rdx
100002009: e8 a2 02 00 00              	callq	0x1000022b0 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl>
10000200e: 48 3b 45 b0                 	cmpq	-80(%rbp), %rax
100002012: 0f 84 15 00 00 00           	je	0x10000202d <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xcd>
100002018: 48 c7 45 f0 00 00 00 00     	movq	$0, -16(%rbp)
100002020: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002024: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100002028: e9 2d 01 00 00              	jmp	0x10000215a <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fa>
10000202d: e9 00 00 00 00              	jmp	0x100002032 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xd2>
100002032: 48 83 7d b8 00              	cmpq	$0, -72(%rbp)
100002037: 0f 8e b9 00 00 00           	jle	0x1000020f6 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x196>
10000203d: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
100002041: 0f be 55 cf                 	movsbl	-49(%rbp), %edx
100002045: 48 8d 7d 98                 	leaq	-104(%rbp), %rdi
100002049: 48 89 bd 70 ff ff ff        	movq	%rdi, -144(%rbp)
100002050: e8 8b 02 00 00              	callq	0x1000022e0 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Emc>
100002055: 48 8b bd 70 ff ff ff        	movq	-144(%rbp), %rdi
10000205c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002060: 48 89 85 78 ff ff ff        	movq	%rax, -136(%rbp)
100002067: e8 a4 02 00 00              	callq	0x100002310 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev>
10000206c: 48 8b bd 78 ff ff ff        	movq	-136(%rbp), %rdi
100002073: 48 89 c6                    	movq	%rax, %rsi
100002076: 48 8b 55 b8                 	movq	-72(%rbp), %rdx
10000207a: e8 31 02 00 00              	callq	0x1000022b0 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl>
10000207f: 48 89 45 80                 	movq	%rax, -128(%rbp)
100002083: e9 00 00 00 00              	jmp	0x100002088 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x128>
100002088: 48 8b 45 80                 	movq	-128(%rbp), %rax
10000208c: 48 3b 45 b8                 	cmpq	-72(%rbp), %rax
100002090: 0f 84 36 00 00 00           	je	0x1000020cc <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x16c>
100002096: 48 c7 45 f0 00 00 00 00     	movq	$0, -16(%rbp)
10000209e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000020a2: 48 89 45 f8                 	movq	%rax, -8(%rbp)
1000020a6: c7 45 88 01 00 00 00        	movl	$1, -120(%rbp)
1000020ad: e9 21 00 00 00              	jmp	0x1000020d3 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x173>
1000020b2: 48 89 c1                    	movq	%rax, %rcx
1000020b5: 89 d0                       	movl	%edx, %eax
1000020b7: 48 89 4d 90                 	movq	%rcx, -112(%rbp)
1000020bb: 89 45 8c                    	movl	%eax, -116(%rbp)
1000020be: 48 8d 7d 98                 	leaq	-104(%rbp), %rdi
1000020c2: e8 29 1b 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
1000020c7: e9 9b 00 00 00              	jmp	0x100002167 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x207>
1000020cc: c7 45 88 00 00 00 00        	movl	$0, -120(%rbp)
1000020d3: 48 8d 7d 98                 	leaq	-104(%rbp), %rdi
1000020d7: e8 14 1b 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
1000020dc: 8b 45 88                    	movl	-120(%rbp), %eax
1000020df: 85 c0                       	testl	%eax, %eax
1000020e1: 0f 84 0a 00 00 00           	je	0x1000020f1 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x191>
1000020e7: e9 00 00 00 00              	jmp	0x1000020ec <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x18c>
1000020ec: e9 69 00 00 00              	jmp	0x10000215a <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fa>
1000020f1: e9 00 00 00 00              	jmp	0x1000020f6 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x196>
1000020f6: 48 8b 45 d8                 	movq	-40(%rbp), %rax
1000020fa: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
1000020fe: 48 29 c8                    	subq	%rcx, %rax
100002101: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100002105: 48 83 7d b0 00              	cmpq	$0, -80(%rbp)
10000210a: 0f 8e 35 00 00 00           	jle	0x100002145 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e5>
100002110: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100002114: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
100002118: 48 8b 55 b0                 	movq	-80(%rbp), %rdx
10000211c: e8 8f 01 00 00              	callq	0x1000022b0 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl>
100002121: 48 3b 45 b0                 	cmpq	-80(%rbp), %rax
100002125: 0f 84 15 00 00 00           	je	0x100002140 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e0>
10000212b: 48 c7 45 f0 00 00 00 00     	movq	$0, -16(%rbp)
100002133: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002137: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000213b: e9 1a 00 00 00              	jmp	0x10000215a <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fa>
100002140: e9 00 00 00 00              	jmp	0x100002145 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e5>
100002145: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100002149: 31 c0                       	xorl	%eax, %eax
10000214b: 89 c6                       	movl	%eax, %esi
10000214d: e8 ee 01 00 00              	callq	0x100002340 <__ZNSt3__18ios_base5widthB6v15006El>
100002152: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002156: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000215a: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000215e: 48 81 c4 90 00 00 00        	addq	$144, %rsp
100002165: 5d                          	popq	%rbp
100002166: c3                          	retq
100002167: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
10000216b: e8 20 1a 00 00              	callq	0x100003b90 <_strlen+0x100003b90>
100002170: 0f 0b                       	ud2
100002172: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

0000000100002180 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15006ERNS_13basic_ostreamIcS2_EE>:
100002180: 55                          	pushq	%rbp
100002181: 48 89 e5                    	movq	%rsp, %rbp
100002184: 48 83 ec 10                 	subq	$16, %rsp
100002188: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000218c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100002190: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002194: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100002198: e8 43 03 00 00              	callq	0x1000024e0 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE>
10000219d: 48 83 c4 10                 	addq	$16, %rsp
1000021a1: 5d                          	popq	%rbp
1000021a2: c3                          	retq
1000021a3: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00      	nopw	%cs:(%rax,%rax)

00000001000021b0 <__ZNKSt3__18ios_base5flagsB6v15006Ev>:
1000021b0: 55                          	pushq	%rbp
1000021b1: 48 89 e5                    	movq	%rsp, %rbp
1000021b4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000021b8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000021bc: 8b 40 08                    	movl	8(%rax), %eax
1000021bf: 5d                          	popq	%rbp
1000021c0: c3                          	retq
1000021c1: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

00000001000021d0 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev>:
1000021d0: 55                          	pushq	%rbp
1000021d1: 48 89 e5                    	movq	%rsp, %rbp
1000021d4: 48 83 ec 10                 	subq	$16, %rsp
1000021d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000021dc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000021e0: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000021e4: e8 ef 19 00 00              	callq	0x100003bd8 <_strlen+0x100003bd8>
1000021e9: 89 c7                       	movl	%eax, %edi
1000021eb: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000021ef: 8b b0 90 00 00 00           	movl	144(%rax), %esi
1000021f5: e8 d8 19 00 00              	callq	0x100003bd2 <_strlen+0x100003bd2>
1000021fa: a8 01                       	testb	$1, %al
1000021fc: 0f 85 05 00 00 00           	jne	0x100002207 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev+0x37>
100002202: e9 1d 00 00 00              	jmp	0x100002224 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev+0x54>
100002207: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000220b: be 20 00 00 00              	movl	$32, %esi
100002210: e8 8b 03 00 00              	callq	0x1000025a0 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec>
100002215: 88 c1                       	movb	%al, %cl
100002217: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000221b: 0f be c9                    	movsbl	%cl, %ecx
10000221e: 89 88 90 00 00 00           	movl	%ecx, 144(%rax)
100002224: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002228: 8b 80 90 00 00 00           	movl	144(%rax), %eax
10000222e: 0f be c0                    	movsbl	%al, %eax
100002231: 48 83 c4 10                 	addq	$16, %rsp
100002235: 5d                          	popq	%rbp
100002236: c3                          	retq
100002237: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100002240 <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15006Ev>:
100002240: 55                          	pushq	%rbp
100002241: 48 89 e5                    	movq	%rsp, %rbp
100002244: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002248: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000224c: 48 83 38 00                 	cmpq	$0, (%rax)
100002250: 0f 94 c0                    	sete	%al
100002253: 24 01                       	andb	$1, %al
100002255: 0f b6 c0                    	movzbl	%al, %eax
100002258: 5d                          	popq	%rbp
100002259: c3                          	retq
10000225a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100002260 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej>:
100002260: 55                          	pushq	%rbp
100002261: 48 89 e5                    	movq	%rsp, %rbp
100002264: 48 83 ec 10                 	subq	$16, %rsp
100002268: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000226c: 89 75 f4                    	movl	%esi, -12(%rbp)
10000226f: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002273: 8b 75 f4                    	movl	-12(%rbp), %esi
100002276: e8 05 04 00 00              	callq	0x100002680 <__ZNSt3__18ios_base8setstateB6v15006Ej>
10000227b: 48 83 c4 10                 	addq	$16, %rsp
10000227f: 5d                          	popq	%rbp
100002280: c3                          	retq
100002281: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000100002290 <__ZNKSt3__18ios_base5widthB6v15006Ev>:
100002290: 55                          	pushq	%rbp
100002291: 48 89 e5                    	movq	%rsp, %rbp
100002294: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002298: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000229c: 48 8b 40 18                 	movq	24(%rax), %rax
1000022a0: 5d                          	popq	%rbp
1000022a1: c3                          	retq
1000022a2: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

00000001000022b0 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl>:
1000022b0: 55                          	pushq	%rbp
1000022b1: 48 89 e5                    	movq	%rsp, %rbp
1000022b4: 48 83 ec 20                 	subq	$32, %rsp
1000022b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000022bc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000022c0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000022c4: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000022c8: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000022cc: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000022d0: 48 8b 07                    	movq	(%rdi), %rax
1000022d3: ff 50 60                    	callq	*96(%rax)
1000022d6: 48 83 c4 20                 	addq	$32, %rsp
1000022da: 5d                          	popq	%rbp
1000022db: c3                          	retq
1000022dc: 0f 1f 40 00                 	nopl	(%rax)

00000001000022e0 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Emc>:
1000022e0: 55                          	pushq	%rbp
1000022e1: 48 89 e5                    	movq	%rsp, %rbp
1000022e4: 48 83 ec 20                 	subq	$32, %rsp
1000022e8: 88 d0                       	movb	%dl, %al
1000022ea: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000022ee: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000022f2: 88 45 ef                    	movb	%al, -17(%rbp)
1000022f5: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000022f9: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000022fd: 0f be 55 ef                 	movsbl	-17(%rbp), %edx
100002301: e8 6a 00 00 00              	callq	0x100002370 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc>
100002306: 48 83 c4 20                 	addq	$32, %rsp
10000230a: 5d                          	popq	%rbp
10000230b: c3                          	retq
10000230c: 0f 1f 40 00                 	nopl	(%rax)

0000000100002310 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev>:
100002310: 55                          	pushq	%rbp
100002311: 48 89 e5                    	movq	%rsp, %rbp
100002314: 48 83 ec 10                 	subq	$16, %rsp
100002318: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000231c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002320: e8 ab 00 00 00              	callq	0x1000023d0 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev>
100002325: 48 89 c7                    	movq	%rax, %rdi
100002328: e8 93 00 00 00              	callq	0x1000023c0 <__ZNSt3__112__to_addressB6v15006IcEEPT_S2_>
10000232d: 48 83 c4 10                 	addq	$16, %rsp
100002331: 5d                          	popq	%rbp
100002332: c3                          	retq
100002333: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00      	nopw	%cs:(%rax,%rax)

0000000100002340 <__ZNSt3__18ios_base5widthB6v15006El>:
100002340: 55                          	pushq	%rbp
100002341: 48 89 e5                    	movq	%rsp, %rbp
100002344: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002348: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000234c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002350: 48 8b 48 18                 	movq	24(%rax), %rcx
100002354: 48 89 4d e8                 	movq	%rcx, -24(%rbp)
100002358: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000235c: 48 89 48 18                 	movq	%rcx, 24(%rax)
100002360: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100002364: 5d                          	popq	%rbp
100002365: c3                          	retq
100002366: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100002370 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc>:
100002370: 55                          	pushq	%rbp
100002371: 48 89 e5                    	movq	%rsp, %rbp
100002374: 48 83 ec 30                 	subq	$48, %rsp
100002378: 88 d0                       	movb	%dl, %al
10000237a: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000237e: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100002382: 88 45 ef                    	movb	%al, -17(%rbp)
100002385: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002389: 48 89 7d d8                 	movq	%rdi, -40(%rbp)
10000238d: 48 8d 75 e8                 	leaq	-24(%rbp), %rsi
100002391: 48 8d 55 e0                 	leaq	-32(%rbp), %rdx
100002395: e8 46 f6 ff ff              	callq	0x1000019e0 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_>
10000239a: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
10000239e: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000023a2: 0f be 55 ef                 	movsbl	-17(%rbp), %edx
1000023a6: e8 3f 18 00 00              	callq	0x100003bea <_strlen+0x100003bea>
1000023ab: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
1000023af: e8 5c f6 ff ff              	callq	0x100001a10 <__ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_>
1000023b4: 48 83 c4 30                 	addq	$48, %rsp
1000023b8: 5d                          	popq	%rbp
1000023b9: c3                          	retq
1000023ba: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000023c0 <__ZNSt3__112__to_addressB6v15006IcEEPT_S2_>:
1000023c0: 55                          	pushq	%rbp
1000023c1: 48 89 e5                    	movq	%rsp, %rbp
1000023c4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000023c8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000023cc: 5d                          	popq	%rbp
1000023cd: c3                          	retq
1000023ce: 66 90                       	nop

00000001000023d0 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev>:
1000023d0: 55                          	pushq	%rbp
1000023d1: 48 89 e5                    	movq	%rsp, %rbp
1000023d4: 48 83 ec 20                 	subq	$32, %rsp
1000023d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000023dc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000023e0: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
1000023e4: e8 37 00 00 00              	callq	0x100002420 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev>
1000023e9: a8 01                       	testb	$1, %al
1000023eb: 0f 85 05 00 00 00           	jne	0x1000023f6 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev+0x26>
1000023f1: e9 12 00 00 00              	jmp	0x100002408 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev+0x38>
1000023f6: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000023fa: e8 51 00 00 00              	callq	0x100002450 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev>
1000023ff: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100002403: e9 0d 00 00 00              	jmp	0x100002415 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev+0x45>
100002408: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000240c: e8 5f 00 00 00              	callq	0x100002470 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev>
100002411: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100002415: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100002419: 48 83 c4 20                 	addq	$32, %rsp
10000241d: 5d                          	popq	%rbp
10000241e: c3                          	retq
10000241f: 90                          	nop

0000000100002420 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev>:
100002420: 55                          	pushq	%rbp
100002421: 48 89 e5                    	movq	%rsp, %rbp
100002424: 48 83 ec 10                 	subq	$16, %rsp
100002428: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000242c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002430: e8 6b 00 00 00              	callq	0x1000024a0 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev>
100002435: 8a 00                       	movb	(%rax), %al
100002437: 24 01                       	andb	$1, %al
100002439: 3c 00                       	cmpb	$0, %al
10000243b: 0f 95 c0                    	setne	%al
10000243e: 24 01                       	andb	$1, %al
100002440: 0f b6 c0                    	movzbl	%al, %eax
100002443: 48 83 c4 10                 	addq	$16, %rsp
100002447: 5d                          	popq	%rbp
100002448: c3                          	retq
100002449: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100002450 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev>:
100002450: 55                          	pushq	%rbp
100002451: 48 89 e5                    	movq	%rsp, %rbp
100002454: 48 83 ec 10                 	subq	$16, %rsp
100002458: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000245c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002460: e8 bb f6 ff ff              	callq	0x100001b20 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev>
100002465: 48 8b 40 10                 	movq	16(%rax), %rax
100002469: 48 83 c4 10                 	addq	$16, %rsp
10000246d: 5d                          	popq	%rbp
10000246e: c3                          	retq
10000246f: 90                          	nop

0000000100002470 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev>:
100002470: 55                          	pushq	%rbp
100002471: 48 89 e5                    	movq	%rsp, %rbp
100002474: 48 83 ec 10                 	subq	$16, %rsp
100002478: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000247c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002480: e8 9b f6 ff ff              	callq	0x100001b20 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev>
100002485: 48 89 c7                    	movq	%rax, %rdi
100002488: 48 83 c7 01                 	addq	$1, %rdi
10000248c: e8 3f 00 00 00              	callq	0x1000024d0 <__ZNSt3__114pointer_traitsIPcE10pointer_toB6v15006ERc>
100002491: 48 83 c4 10                 	addq	$16, %rsp
100002495: 5d                          	popq	%rbp
100002496: c3                          	retq
100002497: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

00000001000024a0 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev>:
1000024a0: 55                          	pushq	%rbp
1000024a1: 48 89 e5                    	movq	%rsp, %rbp
1000024a4: 48 83 ec 10                 	subq	$16, %rsp
1000024a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000024ac: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000024b0: e8 0b 00 00 00              	callq	0x1000024c0 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev>
1000024b5: 48 83 c4 10                 	addq	$16, %rsp
1000024b9: 5d                          	popq	%rbp
1000024ba: c3                          	retq
1000024bb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000024c0 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev>:
1000024c0: 55                          	pushq	%rbp
1000024c1: 48 89 e5                    	movq	%rsp, %rbp
1000024c4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000024c8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000024cc: 5d                          	popq	%rbp
1000024cd: c3                          	retq
1000024ce: 66 90                       	nop

00000001000024d0 <__ZNSt3__114pointer_traitsIPcE10pointer_toB6v15006ERc>:
1000024d0: 55                          	pushq	%rbp
1000024d1: 48 89 e5                    	movq	%rsp, %rbp
1000024d4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000024d8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000024dc: 5d                          	popq	%rbp
1000024dd: c3                          	retq
1000024de: 66 90                       	nop

00000001000024e0 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE>:
1000024e0: 55                          	pushq	%rbp
1000024e1: 48 89 e5                    	movq	%rsp, %rbp
1000024e4: 48 83 ec 20                 	subq	$32, %rsp
1000024e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000024ec: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000024f0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000024f4: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000024f8: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000024fc: 48 8b 07                    	movq	(%rdi), %rax
1000024ff: 48 8b 40 e8                 	movq	-24(%rax), %rax
100002503: 48 01 c7                    	addq	%rax, %rdi
100002506: e8 25 00 00 00              	callq	0x100002530 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev>
10000250b: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000250f: e9 00 00 00 00              	jmp	0x100002514 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE+0x34>
100002514: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100002518: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
10000251c: 48 89 08                    	movq	%rcx, (%rax)
10000251f: 48 83 c4 20                 	addq	$32, %rsp
100002523: 5d                          	popq	%rbp
100002524: c3                          	retq
100002525: 48 89 c7                    	movq	%rax, %rdi
100002528: e8 63 f3 ff ff              	callq	0x100001890 <___clang_call_terminate>
10000252d: 0f 1f 00                    	nopl	(%rax)

0000000100002530 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev>:
100002530: 55                          	pushq	%rbp
100002531: 48 89 e5                    	movq	%rsp, %rbp
100002534: 48 83 ec 10                 	subq	$16, %rsp
100002538: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000253c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002540: e8 0b 00 00 00              	callq	0x100002550 <__ZNKSt3__18ios_base5rdbufB6v15006Ev>
100002545: 48 83 c4 10                 	addq	$16, %rsp
100002549: 5d                          	popq	%rbp
10000254a: c3                          	retq
10000254b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100002550 <__ZNKSt3__18ios_base5rdbufB6v15006Ev>:
100002550: 55                          	pushq	%rbp
100002551: 48 89 e5                    	movq	%rsp, %rbp
100002554: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002558: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000255c: 48 8b 40 28                 	movq	40(%rax), %rax
100002560: 5d                          	popq	%rbp
100002561: c3                          	retq
100002562: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

0000000100002570 <__ZNSt3__111char_traitsIcE11eq_int_typeEii>:
100002570: 55                          	pushq	%rbp
100002571: 48 89 e5                    	movq	%rsp, %rbp
100002574: 89 7d fc                    	movl	%edi, -4(%rbp)
100002577: 89 75 f8                    	movl	%esi, -8(%rbp)
10000257a: 8b 45 fc                    	movl	-4(%rbp), %eax
10000257d: 3b 45 f8                    	cmpl	-8(%rbp), %eax
100002580: 0f 94 c0                    	sete	%al
100002583: 24 01                       	andb	$1, %al
100002585: 0f b6 c0                    	movzbl	%al, %eax
100002588: 5d                          	popq	%rbp
100002589: c3                          	retq
10000258a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100002590 <__ZNSt3__111char_traitsIcE3eofEv>:
100002590: 55                          	pushq	%rbp
100002591: 48 89 e5                    	movq	%rsp, %rbp
100002594: b8 ff ff ff ff              	movl	$4294967295, %eax       ## imm = 0xFFFFFFFF
100002599: 5d                          	popq	%rbp
10000259a: c3                          	retq
10000259b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000025a0 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec>:
1000025a0: 55                          	pushq	%rbp
1000025a1: 48 89 e5                    	movq	%rsp, %rbp
1000025a4: 48 83 ec 40                 	subq	$64, %rsp
1000025a8: 40 88 f0                    	movb	%sil, %al
1000025ab: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000025af: 88 45 f7                    	movb	%al, -9(%rbp)
1000025b2: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
1000025b6: 48 8d 7d e8                 	leaq	-24(%rbp), %rdi
1000025ba: 48 89 7d c8                 	movq	%rdi, -56(%rbp)
1000025be: e8 09 16 00 00              	callq	0x100003bcc <_strlen+0x100003bcc>
1000025c3: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
1000025c7: e8 54 00 00 00              	callq	0x100002620 <__ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE>
1000025cc: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000025d0: e9 00 00 00 00              	jmp	0x1000025d5 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec+0x35>
1000025d5: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
1000025d9: 0f be 75 f7                 	movsbl	-9(%rbp), %esi
1000025dd: e8 6e 00 00 00              	callq	0x100002650 <__ZNKSt3__15ctypeIcE5widenB6v15006Ec>
1000025e2: 88 45 c7                    	movb	%al, -57(%rbp)
1000025e5: e9 00 00 00 00              	jmp	0x1000025ea <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec+0x4a>
1000025ea: 48 8d 7d e8                 	leaq	-24(%rbp), %rdi
1000025ee: e8 27 16 00 00              	callq	0x100003c1a <_strlen+0x100003c1a>
1000025f3: 8a 45 c7                    	movb	-57(%rbp), %al
1000025f6: 0f be c0                    	movsbl	%al, %eax
1000025f9: 48 83 c4 40                 	addq	$64, %rsp
1000025fd: 5d                          	popq	%rbp
1000025fe: c3                          	retq
1000025ff: 48 89 c1                    	movq	%rax, %rcx
100002602: 89 d0                       	movl	%edx, %eax
100002604: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100002608: 89 45 dc                    	movl	%eax, -36(%rbp)
10000260b: 48 8d 7d e8                 	leaq	-24(%rbp), %rdi
10000260f: e8 06 16 00 00              	callq	0x100003c1a <_strlen+0x100003c1a>
100002614: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100002618: e8 73 15 00 00              	callq	0x100003b90 <_strlen+0x100003b90>
10000261d: 0f 1f 00                    	nopl	(%rax)

0000000100002620 <__ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE>:
100002620: 55                          	pushq	%rbp
100002621: 48 89 e5                    	movq	%rsp, %rbp
100002624: 48 83 ec 10                 	subq	$16, %rsp
100002628: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000262c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002630: 48 8b 35 99 1a 00 00        	movq	6809(%rip), %rsi        ## 0x1000040d0 <_strlen+0x1000040d0>
100002637: e8 8a 15 00 00              	callq	0x100003bc6 <_strlen+0x100003bc6>
10000263c: 48 83 c4 10                 	addq	$16, %rsp
100002640: 5d                          	popq	%rbp
100002641: c3                          	retq
100002642: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

0000000100002650 <__ZNKSt3__15ctypeIcE5widenB6v15006Ec>:
100002650: 55                          	pushq	%rbp
100002651: 48 89 e5                    	movq	%rsp, %rbp
100002654: 48 83 ec 10                 	subq	$16, %rsp
100002658: 40 88 f0                    	movb	%sil, %al
10000265b: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000265f: 88 45 f7                    	movb	%al, -9(%rbp)
100002662: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002666: 8a 4d f7                    	movb	-9(%rbp), %cl
100002669: 48 8b 07                    	movq	(%rdi), %rax
10000266c: 0f be f1                    	movsbl	%cl, %esi
10000266f: ff 50 38                    	callq	*56(%rax)
100002672: 0f be c0                    	movsbl	%al, %eax
100002675: 48 83 c4 10                 	addq	$16, %rsp
100002679: 5d                          	popq	%rbp
10000267a: c3                          	retq
10000267b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100002680 <__ZNSt3__18ios_base8setstateB6v15006Ej>:
100002680: 55                          	pushq	%rbp
100002681: 48 89 e5                    	movq	%rsp, %rbp
100002684: 48 83 ec 10                 	subq	$16, %rsp
100002688: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000268c: 89 75 f4                    	movl	%esi, -12(%rbp)
10000268f: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002693: 8b 77 20                    	movl	32(%rdi), %esi
100002696: 0b 75 f4                    	orl	-12(%rbp), %esi
100002699: e8 88 15 00 00              	callq	0x100003c26 <_strlen+0x100003c26>
10000269e: 48 83 c4 10                 	addq	$16, %rsp
1000026a2: 5d                          	popq	%rbp
1000026a3: c3                          	retq
1000026a4: 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

00000001000026b0 <__ZNSt3__112__to_addressB6v15006IKcEEPT_S3_>:
1000026b0: 55                          	pushq	%rbp
1000026b1: 48 89 e5                    	movq	%rsp, %rbp
1000026b4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000026b8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000026bc: 5d                          	popq	%rbp
1000026bd: c3                          	retq
1000026be: 66 90                       	nop

00000001000026c0 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev>:
1000026c0: 55                          	pushq	%rbp
1000026c1: 48 89 e5                    	movq	%rsp, %rbp
1000026c4: 48 83 ec 20                 	subq	$32, %rsp
1000026c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000026cc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000026d0: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
1000026d4: e8 47 fd ff ff              	callq	0x100002420 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev>
1000026d9: a8 01                       	testb	$1, %al
1000026db: 0f 85 05 00 00 00           	jne	0x1000026e6 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev+0x26>
1000026e1: e9 12 00 00 00              	jmp	0x1000026f8 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev+0x38>
1000026e6: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000026ea: e8 21 00 00 00              	callq	0x100002710 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev>
1000026ef: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000026f3: e9 0d 00 00 00              	jmp	0x100002705 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev+0x45>
1000026f8: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000026fc: e8 2f 00 00 00              	callq	0x100002730 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev>
100002701: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100002705: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100002709: 48 83 c4 20                 	addq	$32, %rsp
10000270d: 5d                          	popq	%rbp
10000270e: c3                          	retq
10000270f: 90                          	nop

0000000100002710 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev>:
100002710: 55                          	pushq	%rbp
100002711: 48 89 e5                    	movq	%rsp, %rbp
100002714: 48 83 ec 10                 	subq	$16, %rsp
100002718: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000271c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002720: e8 7b fd ff ff              	callq	0x1000024a0 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev>
100002725: 48 8b 40 10                 	movq	16(%rax), %rax
100002729: 48 83 c4 10                 	addq	$16, %rsp
10000272d: 5d                          	popq	%rbp
10000272e: c3                          	retq
10000272f: 90                          	nop

0000000100002730 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev>:
100002730: 55                          	pushq	%rbp
100002731: 48 89 e5                    	movq	%rsp, %rbp
100002734: 48 83 ec 10                 	subq	$16, %rsp
100002738: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000273c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002740: e8 5b fd ff ff              	callq	0x1000024a0 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev>
100002745: 48 89 c7                    	movq	%rax, %rdi
100002748: 48 83 c7 01                 	addq	$1, %rdi
10000274c: e8 0f 00 00 00              	callq	0x100002760 <__ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15006ERS1_>
100002751: 48 83 c4 10                 	addq	$16, %rsp
100002755: 5d                          	popq	%rbp
100002756: c3                          	retq
100002757: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100002760 <__ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15006ERS1_>:
100002760: 55                          	pushq	%rbp
100002761: 48 89 e5                    	movq	%rsp, %rbp
100002764: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002768: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000276c: 5d                          	popq	%rbp
10000276d: c3                          	retq
10000276e: 66 90                       	nop

0000000100002770 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB6v15006Ev>:
100002770: 55                          	pushq	%rbp
100002771: 48 89 e5                    	movq	%rsp, %rbp
100002774: 48 83 ec 10                 	subq	$16, %rsp
100002778: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000277c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002780: e8 1b fd ff ff              	callq	0x1000024a0 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev>
100002785: 48 8b 40 08                 	movq	8(%rax), %rax
100002789: 48 83 c4 10                 	addq	$16, %rsp
10000278d: 5d                          	popq	%rbp
10000278e: c3                          	retq
10000278f: 90                          	nop

0000000100002790 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB6v15006Ev>:
100002790: 55                          	pushq	%rbp
100002791: 48 89 e5                    	movq	%rsp, %rbp
100002794: 48 83 ec 10                 	subq	$16, %rsp
100002798: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000279c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000027a0: e8 fb fc ff ff              	callq	0x1000024a0 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev>
1000027a5: 8a 00                       	movb	(%rax), %al
1000027a7: c0 e8 01                    	shrb	$1, %al
1000027aa: 0f b6 c0                    	movzbl	%al, %eax
1000027ad: 48 83 c4 10                 	addq	$16, %rsp
1000027b1: 5d                          	popq	%rbp
1000027b2: c3                          	retq
1000027b3: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00      	nopw	%cs:(%rax,%rax)

00000001000027c0 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006IDnEEPKc>:
1000027c0: 55                          	pushq	%rbp
1000027c1: 48 89 e5                    	movq	%rsp, %rbp
1000027c4: 48 83 ec 30                 	subq	$48, %rsp
1000027c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000027cc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000027d0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000027d4: 48 89 7d d8                 	movq	%rdi, -40(%rbp)
1000027d8: 48 8d 75 e8                 	leaq	-24(%rbp), %rsi
1000027dc: 48 8d 55 e0                 	leaq	-32(%rbp), %rdx
1000027e0: e8 fb f1 ff ff              	callq	0x1000019e0 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_>
1000027e5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000027e9: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000027ed: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000027f1: e8 e8 13 00 00              	callq	0x100003bde <_strlen+0x100003bde>
1000027f6: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
1000027fa: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
1000027fe: 48 89 c2                    	movq	%rax, %rdx
100002801: e8 de 13 00 00              	callq	0x100003be4 <_strlen+0x100003be4>
100002806: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
10000280a: e8 01 f2 ff ff              	callq	0x100001a10 <__ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_>
10000280f: 48 83 c4 30                 	addq	$48, %rsp
100002813: 5d                          	popq	%rbp
100002814: c3                          	retq
100002815: 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)

0000000100002820 <__ZNSt3__111char_traitsIcE6lengthEPKc>:
100002820: 55                          	pushq	%rbp
100002821: 48 89 e5                    	movq	%rsp, %rbp
100002824: 48 83 ec 10                 	subq	$16, %rsp
100002828: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000282c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002830: e8 45 14 00 00              	callq	0x100003c7a <_strlen+0x100003c7a>
100002835: 48 83 c4 10                 	addq	$16, %rsp
100002839: 5d                          	popq	%rbp
10000283a: c3                          	retq
10000283b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100002840 <__ZN9resumable12promise_typeD2Ev>:
100002840: 55                          	pushq	%rbp
100002841: 48 89 e5                    	movq	%rsp, %rbp
100002844: 48 83 ec 10                 	subq	$16, %rsp
100002848: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000284c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002850: e8 9b 13 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
100002855: 48 83 c4 10                 	addq	$16, %rsp
100002859: 5d                          	popq	%rbp
10000285a: c3                          	retq
10000285b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100002860 <__Z4foo1v.resume>:
100002860: 55                          	pushq	%rbp
100002861: 48 89 e5                    	movq	%rsp, %rbp
100002864: 48 81 ec b0 00 00 00        	subq	$176, %rsp
10000286b: 48 89 7d 88                 	movq	%rdi, -120(%rbp)
10000286f: 48 89 f8                    	movq	%rdi, %rax
100002872: 48 83 c0 29                 	addq	$41, %rax
100002876: 48 89 45 90                 	movq	%rax, -112(%rbp)
10000287a: 48 89 f8                    	movq	%rdi, %rax
10000287d: 48 83 c0 2a                 	addq	$42, %rax
100002881: 48 89 45 98                 	movq	%rax, -104(%rbp)
100002885: 48 83 c7 10                 	addq	$16, %rdi
100002889: 48 89 7d a0                 	movq	%rdi, -96(%rbp)
10000288d: e9 c6 02 00 00              	jmp	0x100002b58 <__Z4foo1v.resume+0x2f8>
100002892: e9 00 00 00 00              	jmp	0x100002897 <__Z4foo1v.resume+0x37>
100002897: e9 00 00 00 00              	jmp	0x10000289c <__Z4foo1v.resume+0x3c>
10000289c: b0 01                       	movb	$1, %al
10000289e: 84 c0                       	testb	%al, %al
1000028a0: 0f 85 2c 00 00 00           	jne	0x1000028d2 <__Z4foo1v.resume+0x72>
1000028a6: e9 00 00 00 00              	jmp	0x1000028ab <__Z4foo1v.resume+0x4b>
1000028ab: b0 01                       	movb	$1, %al
1000028ad: 84 c0                       	testb	%al, %al
1000028af: 0f 85 7a 02 00 00           	jne	0x100002b2f <__Z4foo1v.resume+0x2cf>
1000028b5: e9 00 00 00 00              	jmp	0x1000028ba <__Z4foo1v.resume+0x5a>
1000028ba: b8 02 00 00 00              	movl	$2, %eax
1000028bf: 89 45 84                    	movl	%eax, -124(%rbp)
1000028c2: e9 00 00 00 00              	jmp	0x1000028c7 <__Z4foo1v.resume+0x67>
1000028c7: 8b 45 84                    	movl	-124(%rbp), %eax
1000028ca: 89 45 80                    	movl	%eax, -128(%rbp)
1000028cd: e9 1a 00 00 00              	jmp	0x1000028ec <__Z4foo1v.resume+0x8c>
1000028d2: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
1000028d6: e8 25 ee ff ff              	callq	0x100001700 <__ZNKSt12experimental13coroutines_v114suspend_always12await_resumeB6v15006Ev>
1000028db: 31 c0                       	xorl	%eax, %eax
1000028dd: 89 85 7c ff ff ff           	movl	%eax, -132(%rbp)
1000028e3: 8b 85 7c ff ff ff           	movl	-132(%rbp), %eax
1000028e9: 89 45 80                    	movl	%eax, -128(%rbp)
1000028ec: 8b 45 80                    	movl	-128(%rbp), %eax
1000028ef: 83 f8 00                    	cmpl	$0, %eax
1000028f2: 89 85 78 ff ff ff           	movl	%eax, -136(%rbp)
1000028f8: 0f 84 11 00 00 00           	je	0x10000290f <__Z4foo1v.resume+0xaf>
1000028fe: 8b 85 78 ff ff ff           	movl	-136(%rbp), %eax
100002904: 89 85 74 ff ff ff           	movl	%eax, -140(%rbp)
10000290a: e9 d7 01 00 00              	jmp	0x100002ae6 <__Z4foo1v.resume+0x286>
10000290f: 48 8b 3d aa 17 00 00        	movq	6058(%rip), %rdi        ## 0x1000040c0 <_strlen+0x1000040c0>
100002916: 48 8d 35 8b 15 00 00        	leaq	5515(%rip), %rsi        ## 0x100003ea8 <_strlen+0x100003ea8>
10000291d: e8 0a 13 00 00              	callq	0x100003c2c <_strlen+0x100003c2c>
100002922: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100002929: e9 00 00 00 00              	jmp	0x10000292e <__Z4foo1v.resume+0xce>
10000292e: 48 8b bd 68 ff ff ff        	movq	-152(%rbp), %rdi
100002935: 48 8b 35 8c 17 00 00        	movq	6028(%rip), %rsi        ## 0x1000040c8 <_strlen+0x1000040c8>
10000293c: e8 0f ee ff ff              	callq	0x100001750 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRS3_S4_E>
100002941: e9 00 00 00 00              	jmp	0x100002946 <__Z4foo1v.resume+0xe6>
100002946: 48 8d 3d bb 56 00 00        	leaq	22203(%rip), %rdi       ## 0x100008008 <_r2>
10000294d: e8 6e 12 00 00              	callq	0x100003bc0 <_strlen+0x100003bc0>
100002952: e9 00 00 00 00              	jmp	0x100002957 <__Z4foo1v.resume+0xf7>
100002957: 48 8d 35 4f 15 00 00        	leaq	5455(%rip), %rsi        ## 0x100003ead <_strlen+0x100003ead>
10000295e: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
100002962: e8 d9 ee ff ff              	callq	0x100001840 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006IDnEEPKc>
100002967: e9 00 00 00 00              	jmp	0x10000296c <__Z4foo1v.resume+0x10c>
10000296c: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100002970: 48 8d 75 d8                 	leaq	-40(%rbp), %rsi
100002974: e8 23 12 00 00              	callq	0x100003b9c <_strlen+0x100003b9c>
100002979: e9 00 00 00 00              	jmp	0x10000297e <__Z4foo1v.resume+0x11e>
10000297e: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
100002982: e8 69 12 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
100002987: e9 5d 00 00 00              	jmp	0x1000029e9 <__Z4foo1v.resume+0x189>
10000298c: 48 89 c1                    	movq	%rax, %rcx
10000298f: 89 d0                       	movl	%edx, %eax
100002991: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100002995: 89 45 c4                    	movl	%eax, -60(%rbp)
100002998: e9 26 00 00 00              	jmp	0x1000029c3 <__Z4foo1v.resume+0x163>
10000299d: 48 89 c1                    	movq	%rax, %rcx
1000029a0: 89 d0                       	movl	%edx, %eax
1000029a2: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
1000029a6: 89 45 c4                    	movl	%eax, -60(%rbp)
1000029a9: e9 15 00 00 00              	jmp	0x1000029c3 <__Z4foo1v.resume+0x163>
1000029ae: 48 89 c1                    	movq	%rax, %rcx
1000029b1: 89 d0                       	movl	%edx, %eax
1000029b3: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
1000029b7: 89 45 c4                    	movl	%eax, -60(%rbp)
1000029ba: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
1000029be: e8 2d 12 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
1000029c3: 48 8b 7d b8                 	movq	-72(%rbp), %rdi
1000029c7: e8 96 12 00 00              	callq	0x100003c62 <_strlen+0x100003c62>
1000029cc: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
1000029d0: e8 df 11 00 00              	callq	0x100003bb4 <_strlen+0x100003bb4>
1000029d5: e8 8e 12 00 00              	callq	0x100003c68 <_strlen+0x100003c68>
1000029da: e9 00 00 00 00              	jmp	0x1000029df <__Z4foo1v.resume+0x17f>
1000029df: e9 00 00 00 00              	jmp	0x1000029e4 <__Z4foo1v.resume+0x184>
1000029e4: e9 00 00 00 00              	jmp	0x1000029e9 <__Z4foo1v.resume+0x189>
1000029e9: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
1000029ed: e8 b0 11 00 00              	callq	0x100003ba2 <_strlen+0x100003ba2>
1000029f2: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
1000029f6: e8 a5 ec ff ff              	callq	0x1000016a0 <__ZNKSt12experimental13coroutines_v114suspend_always11await_readyB6v15006Ev>
1000029fb: a8 01                       	testb	$1, %al
1000029fd: 0f 85 87 00 00 00           	jne	0x100002a8a <__Z4foo1v.resume+0x22a>
100002a03: 48 8b 45 88                 	movq	-120(%rbp), %rax
100002a07: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100002a0e: 48 8b 7d 88                 	movq	-120(%rbp), %rdi
100002a12: e8 b9 ec ff ff              	callq	0x1000016d0 <__ZNSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEE12from_addressB6v15006EPv>
100002a17: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100002a1b: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100002a1f: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002a23: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100002a27: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100002a2b: e8 90 ec ff ff              	callq	0x1000016c0 <__ZNKSt12experimental13coroutines_v114suspend_always13await_suspendB6v15006ENS0_16coroutine_handleIvEE>
100002a30: e9 00 00 00 00              	jmp	0x100002a35 <__Z4foo1v.resume+0x1d5>
100002a35: e9 00 00 00 00              	jmp	0x100002a3a <__Z4foo1v.resume+0x1da>
100002a3a: 31 c0                       	xorl	%eax, %eax
100002a3c: 84 c0                       	testb	%al, %al
100002a3e: 0f 85 46 00 00 00           	jne	0x100002a8a <__Z4foo1v.resume+0x22a>
100002a44: e9 00 00 00 00              	jmp	0x100002a49 <__Z4foo1v.resume+0x1e9>
100002a49: b0 01                       	movb	$1, %al
100002a4b: 84 c0                       	testb	%al, %al
100002a4d: 0f 85 dc 00 00 00           	jne	0x100002b2f <__Z4foo1v.resume+0x2cf>
100002a53: e9 00 00 00 00              	jmp	0x100002a58 <__Z4foo1v.resume+0x1f8>
100002a58: b8 02 00 00 00              	movl	$2, %eax
100002a5d: 89 85 64 ff ff ff           	movl	%eax, -156(%rbp)
100002a63: e9 00 00 00 00              	jmp	0x100002a68 <__Z4foo1v.resume+0x208>
100002a68: 8b 85 64 ff ff ff           	movl	-156(%rbp), %eax
100002a6e: 89 85 60 ff ff ff           	movl	%eax, -160(%rbp)
100002a74: e9 2e 00 00 00              	jmp	0x100002aa7 <__Z4foo1v.resume+0x247>
100002a79: 48 89 c1                    	movq	%rax, %rcx
100002a7c: 89 d0                       	movl	%edx, %eax
100002a7e: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100002a82: 89 45 c4                    	movl	%eax, -60(%rbp)
100002a85: e9 b3 00 00 00              	jmp	0x100002b3d <__Z4foo1v.resume+0x2dd>
100002a8a: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100002a8e: e8 6d ec ff ff              	callq	0x100001700 <__ZNKSt12experimental13coroutines_v114suspend_always12await_resumeB6v15006Ev>
100002a93: 31 c0                       	xorl	%eax, %eax
100002a95: 89 85 5c ff ff ff           	movl	%eax, -164(%rbp)
100002a9b: 8b 85 5c ff ff ff           	movl	-164(%rbp), %eax
100002aa1: 89 85 60 ff ff ff           	movl	%eax, -160(%rbp)
100002aa7: 8b 85 60 ff ff ff           	movl	-160(%rbp), %eax
100002aad: 83 f8 00                    	cmpl	$0, %eax
100002ab0: 89 85 58 ff ff ff           	movl	%eax, -168(%rbp)
100002ab6: 0f 84 11 00 00 00           	je	0x100002acd <__Z4foo1v.resume+0x26d>
100002abc: 8b 85 58 ff ff ff           	movl	-168(%rbp), %eax
100002ac2: 89 85 74 ff ff ff           	movl	%eax, -140(%rbp)
100002ac8: e9 19 00 00 00              	jmp	0x100002ae6 <__Z4foo1v.resume+0x286>
100002acd: 31 c0                       	xorl	%eax, %eax
100002acf: 89 85 54 ff ff ff           	movl	%eax, -172(%rbp)
100002ad5: e9 00 00 00 00              	jmp	0x100002ada <__Z4foo1v.resume+0x27a>
100002ada: 8b 85 54 ff ff ff           	movl	-172(%rbp), %eax
100002ae0: 89 85 74 ff ff ff           	movl	%eax, -140(%rbp)
100002ae6: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100002aea: 8b 85 74 ff ff ff           	movl	-140(%rbp), %eax
100002af0: 89 85 50 ff ff ff           	movl	%eax, -176(%rbp)
100002af6: e8 b5 ed ff ff              	callq	0x1000018b0 <__ZN9resumable12promise_typeD1Ev>
100002afb: 48 8b 45 88                 	movq	-120(%rbp), %rax
100002aff: 48 83 f8 00                 	cmpq	$0, %rax
100002b03: 0f 84 09 00 00 00           	je	0x100002b12 <__Z4foo1v.resume+0x2b2>
100002b09: 48 8b 7d 88                 	movq	-120(%rbp), %rdi
100002b0d: e8 32 11 00 00              	callq	0x100003c44 <_strlen+0x100003c44>
100002b12: 8b 85 50 ff ff ff           	movl	-176(%rbp), %eax
100002b18: 85 c0                       	testl	%eax, %eax
100002b1a: 0f 84 0a 00 00 00           	je	0x100002b2a <__Z4foo1v.resume+0x2ca>
100002b20: e9 00 00 00 00              	jmp	0x100002b25 <__Z4foo1v.resume+0x2c5>
100002b25: e9 05 00 00 00              	jmp	0x100002b2f <__Z4foo1v.resume+0x2cf>
100002b2a: e9 00 00 00 00              	jmp	0x100002b2f <__Z4foo1v.resume+0x2cf>
100002b2f: e9 00 00 00 00              	jmp	0x100002b34 <__Z4foo1v.resume+0x2d4>
100002b34: 48 81 c4 b0 00 00 00        	addq	$176, %rsp
100002b3b: 5d                          	popq	%rbp
100002b3c: c3                          	retq
100002b3d: 48 8b 45 88                 	movq	-120(%rbp), %rax
100002b41: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100002b48: e9 00 00 00 00              	jmp	0x100002b4d <__Z4foo1v.resume+0x2ed>
100002b4d: 48 8b 7d b8                 	movq	-72(%rbp), %rdi
100002b51: e8 3a 10 00 00              	callq	0x100003b90 <_strlen+0x100003b90>
100002b56: 0f 0b                       	ud2
100002b58: e9 35 fd ff ff              	jmp	0x100002892 <__Z4foo1v.resume+0x32>
100002b5d: 0f 1f 00                    	nopl	(%rax)

0000000100002b60 <__Z4foo1v.destroy>:
100002b60: 55                          	pushq	%rbp
100002b61: 48 89 e5                    	movq	%rsp, %rbp
100002b64: 48 81 ec c0 00 00 00        	subq	$192, %rsp
100002b6b: 48 89 7d 88                 	movq	%rdi, -120(%rbp)
100002b6f: 48 89 f8                    	movq	%rdi, %rax
100002b72: 48 83 c0 29                 	addq	$41, %rax
100002b76: 48 89 45 90                 	movq	%rax, -112(%rbp)
100002b7a: 48 89 f8                    	movq	%rdi, %rax
100002b7d: 48 83 c0 2a                 	addq	$42, %rax
100002b81: 48 89 45 98                 	movq	%rax, -104(%rbp)
100002b85: 48 83 c7 10                 	addq	$16, %rdi
100002b89: 48 89 7d a0                 	movq	%rdi, -96(%rbp)
100002b8d: e9 ea 02 00 00              	jmp	0x100002e7c <__Z4foo1v.destroy+0x31c>
100002b92: e9 00 00 00 00              	jmp	0x100002b97 <__Z4foo1v.destroy+0x37>
100002b97: e9 00 00 00 00              	jmp	0x100002b9c <__Z4foo1v.destroy+0x3c>
100002b9c: 31 c0                       	xorl	%eax, %eax
100002b9e: 84 c0                       	testb	%al, %al
100002ba0: 0f 85 2c 00 00 00           	jne	0x100002bd2 <__Z4foo1v.destroy+0x72>
100002ba6: e9 00 00 00 00              	jmp	0x100002bab <__Z4foo1v.destroy+0x4b>
100002bab: 31 c0                       	xorl	%eax, %eax
100002bad: 84 c0                       	testb	%al, %al
100002baf: 0f 85 9e 02 00 00           	jne	0x100002e53 <__Z4foo1v.destroy+0x2f3>
100002bb5: e9 00 00 00 00              	jmp	0x100002bba <__Z4foo1v.destroy+0x5a>
100002bba: b8 02 00 00 00              	movl	$2, %eax
100002bbf: 89 45 84                    	movl	%eax, -124(%rbp)
100002bc2: e9 00 00 00 00              	jmp	0x100002bc7 <__Z4foo1v.destroy+0x67>
100002bc7: 8b 45 84                    	movl	-124(%rbp), %eax
100002bca: 89 45 80                    	movl	%eax, -128(%rbp)
100002bcd: e9 1a 00 00 00              	jmp	0x100002bec <__Z4foo1v.destroy+0x8c>
100002bd2: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
100002bd6: e8 25 eb ff ff              	callq	0x100001700 <__ZNKSt12experimental13coroutines_v114suspend_always12await_resumeB6v15006Ev>
100002bdb: 31 c0                       	xorl	%eax, %eax
100002bdd: 89 85 7c ff ff ff           	movl	%eax, -132(%rbp)
100002be3: 8b 85 7c ff ff ff           	movl	-132(%rbp), %eax
100002be9: 89 45 80                    	movl	%eax, -128(%rbp)
100002bec: 8b 45 80                    	movl	-128(%rbp), %eax
100002bef: 83 f8 00                    	cmpl	$0, %eax
100002bf2: 89 85 78 ff ff ff           	movl	%eax, -136(%rbp)
100002bf8: 0f 84 11 00 00 00           	je	0x100002c0f <__Z4foo1v.destroy+0xaf>
100002bfe: 8b 85 78 ff ff ff           	movl	-136(%rbp), %eax
100002c04: 89 85 74 ff ff ff           	movl	%eax, -140(%rbp)
100002c0a: e9 fb 01 00 00              	jmp	0x100002e0a <__Z4foo1v.destroy+0x2aa>
100002c0f: 48 8b 3d aa 14 00 00        	movq	5290(%rip), %rdi        ## 0x1000040c0 <_strlen+0x1000040c0>
100002c16: 48 8d 35 8b 12 00 00        	leaq	4747(%rip), %rsi        ## 0x100003ea8 <_strlen+0x100003ea8>
100002c1d: e8 0a 10 00 00              	callq	0x100003c2c <_strlen+0x100003c2c>
100002c22: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100002c29: e9 00 00 00 00              	jmp	0x100002c2e <__Z4foo1v.destroy+0xce>
100002c2e: 48 8b bd 68 ff ff ff        	movq	-152(%rbp), %rdi
100002c35: 48 8b 35 8c 14 00 00        	movq	5260(%rip), %rsi        ## 0x1000040c8 <_strlen+0x1000040c8>
100002c3c: e8 0f eb ff ff              	callq	0x100001750 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRS3_S4_E>
100002c41: e9 00 00 00 00              	jmp	0x100002c46 <__Z4foo1v.destroy+0xe6>
100002c46: 48 8d 3d bb 53 00 00        	leaq	21435(%rip), %rdi       ## 0x100008008 <_r2>
100002c4d: e8 6e 0f 00 00              	callq	0x100003bc0 <_strlen+0x100003bc0>
100002c52: e9 00 00 00 00              	jmp	0x100002c57 <__Z4foo1v.destroy+0xf7>
100002c57: 48 8d 35 4f 12 00 00        	leaq	4687(%rip), %rsi        ## 0x100003ead <_strlen+0x100003ead>
100002c5e: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
100002c62: e8 d9 eb ff ff              	callq	0x100001840 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006IDnEEPKc>
100002c67: e9 00 00 00 00              	jmp	0x100002c6c <__Z4foo1v.destroy+0x10c>
100002c6c: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100002c70: 48 8d 75 d8                 	leaq	-40(%rbp), %rsi
100002c74: e8 23 0f 00 00              	callq	0x100003b9c <_strlen+0x100003b9c>
100002c79: e9 00 00 00 00              	jmp	0x100002c7e <__Z4foo1v.destroy+0x11e>
100002c7e: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
100002c82: e8 69 0f 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
100002c87: e9 5d 00 00 00              	jmp	0x100002ce9 <__Z4foo1v.destroy+0x189>
100002c8c: 48 89 c1                    	movq	%rax, %rcx
100002c8f: 89 d0                       	movl	%edx, %eax
100002c91: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100002c95: 89 45 c4                    	movl	%eax, -60(%rbp)
100002c98: e9 26 00 00 00              	jmp	0x100002cc3 <__Z4foo1v.destroy+0x163>
100002c9d: 48 89 c1                    	movq	%rax, %rcx
100002ca0: 89 d0                       	movl	%edx, %eax
100002ca2: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100002ca6: 89 45 c4                    	movl	%eax, -60(%rbp)
100002ca9: e9 15 00 00 00              	jmp	0x100002cc3 <__Z4foo1v.destroy+0x163>
100002cae: 48 89 c1                    	movq	%rax, %rcx
100002cb1: 89 d0                       	movl	%edx, %eax
100002cb3: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100002cb7: 89 45 c4                    	movl	%eax, -60(%rbp)
100002cba: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
100002cbe: e8 2d 0f 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
100002cc3: 48 8b 7d b8                 	movq	-72(%rbp), %rdi
100002cc7: e8 96 0f 00 00              	callq	0x100003c62 <_strlen+0x100003c62>
100002ccc: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100002cd0: e8 df 0e 00 00              	callq	0x100003bb4 <_strlen+0x100003bb4>
100002cd5: e8 8e 0f 00 00              	callq	0x100003c68 <_strlen+0x100003c68>
100002cda: e9 00 00 00 00              	jmp	0x100002cdf <__Z4foo1v.destroy+0x17f>
100002cdf: e9 00 00 00 00              	jmp	0x100002ce4 <__Z4foo1v.destroy+0x184>
100002ce4: e9 00 00 00 00              	jmp	0x100002ce9 <__Z4foo1v.destroy+0x189>
100002ce9: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100002ced: e8 b0 0e 00 00              	callq	0x100003ba2 <_strlen+0x100003ba2>
100002cf2: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100002cf6: e8 a5 e9 ff ff              	callq	0x1000016a0 <__ZNKSt12experimental13coroutines_v114suspend_always11await_readyB6v15006Ev>
100002cfb: a8 01                       	testb	$1, %al
100002cfd: 0f 85 ab 00 00 00           	jne	0x100002dae <__Z4foo1v.destroy+0x24e>
100002d03: 48 8b 45 88                 	movq	-120(%rbp), %rax
100002d07: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100002d0e: 48 8b 7d 88                 	movq	-120(%rbp), %rdi
100002d12: e8 b9 e9 ff ff              	callq	0x1000016d0 <__ZNSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEE12from_addressB6v15006EPv>
100002d17: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100002d1b: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100002d1f: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002d23: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100002d27: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100002d2b: e8 90 e9 ff ff              	callq	0x1000016c0 <__ZNKSt12experimental13coroutines_v114suspend_always13await_suspendB6v15006ENS0_16coroutine_handleIvEE>
100002d30: b0 ff                       	movb	$-1, %al
100002d32: 88 85 67 ff ff ff           	movb	%al, -153(%rbp)
100002d38: e9 0d 00 00 00              	jmp	0x100002d4a <__Z4foo1v.destroy+0x1ea>
100002d3d: b0 01                       	movb	$1, %al
100002d3f: 88 85 67 ff ff ff           	movb	%al, -153(%rbp)
100002d45: e9 00 00 00 00              	jmp	0x100002d4a <__Z4foo1v.destroy+0x1ea>
100002d4a: 8a 85 67 ff ff ff           	movb	-153(%rbp), %al
100002d50: 88 85 66 ff ff ff           	movb	%al, -154(%rbp)
100002d56: 8a 85 66 ff ff ff           	movb	-154(%rbp), %al
100002d5c: 84 c0                       	testb	%al, %al
100002d5e: 0f 84 4a 00 00 00           	je	0x100002dae <__Z4foo1v.destroy+0x24e>
100002d64: e9 00 00 00 00              	jmp	0x100002d69 <__Z4foo1v.destroy+0x209>
100002d69: 8a 85 66 ff ff ff           	movb	-154(%rbp), %al
100002d6f: 2c 01                       	subb	$1, %al
100002d71: 0f 85 dc 00 00 00           	jne	0x100002e53 <__Z4foo1v.destroy+0x2f3>
100002d77: e9 00 00 00 00              	jmp	0x100002d7c <__Z4foo1v.destroy+0x21c>
100002d7c: b8 02 00 00 00              	movl	$2, %eax
100002d81: 89 85 60 ff ff ff           	movl	%eax, -160(%rbp)
100002d87: e9 00 00 00 00              	jmp	0x100002d8c <__Z4foo1v.destroy+0x22c>
100002d8c: 8b 85 60 ff ff ff           	movl	-160(%rbp), %eax
100002d92: 89 85 5c ff ff ff           	movl	%eax, -164(%rbp)
100002d98: e9 2e 00 00 00              	jmp	0x100002dcb <__Z4foo1v.destroy+0x26b>
100002d9d: 48 89 c1                    	movq	%rax, %rcx
100002da0: 89 d0                       	movl	%edx, %eax
100002da2: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100002da6: 89 45 c4                    	movl	%eax, -60(%rbp)
100002da9: e9 b3 00 00 00              	jmp	0x100002e61 <__Z4foo1v.destroy+0x301>
100002dae: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100002db2: e8 49 e9 ff ff              	callq	0x100001700 <__ZNKSt12experimental13coroutines_v114suspend_always12await_resumeB6v15006Ev>
100002db7: 31 c0                       	xorl	%eax, %eax
100002db9: 89 85 58 ff ff ff           	movl	%eax, -168(%rbp)
100002dbf: 8b 85 58 ff ff ff           	movl	-168(%rbp), %eax
100002dc5: 89 85 5c ff ff ff           	movl	%eax, -164(%rbp)
100002dcb: 8b 85 5c ff ff ff           	movl	-164(%rbp), %eax
100002dd1: 83 f8 00                    	cmpl	$0, %eax
100002dd4: 89 85 54 ff ff ff           	movl	%eax, -172(%rbp)
100002dda: 0f 84 11 00 00 00           	je	0x100002df1 <__Z4foo1v.destroy+0x291>
100002de0: 8b 85 54 ff ff ff           	movl	-172(%rbp), %eax
100002de6: 89 85 74 ff ff ff           	movl	%eax, -140(%rbp)
100002dec: e9 19 00 00 00              	jmp	0x100002e0a <__Z4foo1v.destroy+0x2aa>
100002df1: 31 c0                       	xorl	%eax, %eax
100002df3: 89 85 50 ff ff ff           	movl	%eax, -176(%rbp)
100002df9: e9 00 00 00 00              	jmp	0x100002dfe <__Z4foo1v.destroy+0x29e>
100002dfe: 8b 85 50 ff ff ff           	movl	-176(%rbp), %eax
100002e04: 89 85 74 ff ff ff           	movl	%eax, -140(%rbp)
100002e0a: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100002e0e: 8b 85 74 ff ff ff           	movl	-140(%rbp), %eax
100002e14: 89 85 4c ff ff ff           	movl	%eax, -180(%rbp)
100002e1a: e8 91 ea ff ff              	callq	0x1000018b0 <__ZN9resumable12promise_typeD1Ev>
100002e1f: 48 8b 45 88                 	movq	-120(%rbp), %rax
100002e23: 48 83 f8 00                 	cmpq	$0, %rax
100002e27: 0f 84 09 00 00 00           	je	0x100002e36 <__Z4foo1v.destroy+0x2d6>
100002e2d: 48 8b 7d 88                 	movq	-120(%rbp), %rdi
100002e31: e8 0e 0e 00 00              	callq	0x100003c44 <_strlen+0x100003c44>
100002e36: 8b 85 4c ff ff ff           	movl	-180(%rbp), %eax
100002e3c: 85 c0                       	testl	%eax, %eax
100002e3e: 0f 84 0a 00 00 00           	je	0x100002e4e <__Z4foo1v.destroy+0x2ee>
100002e44: e9 00 00 00 00              	jmp	0x100002e49 <__Z4foo1v.destroy+0x2e9>
100002e49: e9 05 00 00 00              	jmp	0x100002e53 <__Z4foo1v.destroy+0x2f3>
100002e4e: e9 00 00 00 00              	jmp	0x100002e53 <__Z4foo1v.destroy+0x2f3>
100002e53: e9 00 00 00 00              	jmp	0x100002e58 <__Z4foo1v.destroy+0x2f8>
100002e58: 48 81 c4 c0 00 00 00        	addq	$192, %rsp
100002e5f: 5d                          	popq	%rbp
100002e60: c3                          	retq
100002e61: 48 8b 45 88                 	movq	-120(%rbp), %rax
100002e65: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100002e6c: e9 00 00 00 00              	jmp	0x100002e71 <__Z4foo1v.destroy+0x311>
100002e71: 48 8b 7d b8                 	movq	-72(%rbp), %rdi
100002e75: e8 16 0d 00 00              	callq	0x100003b90 <_strlen+0x100003b90>
100002e7a: 0f 0b                       	ud2
100002e7c: 48 8b 45 88                 	movq	-120(%rbp), %rax
100002e80: 48 83 38 00                 	cmpq	$0, (%rax)
100002e84: 0f 84 b3 fe ff ff           	je	0x100002d3d <__Z4foo1v.destroy+0x1dd>
100002e8a: e9 03 fd ff ff              	jmp	0x100002b92 <__Z4foo1v.destroy+0x32>
100002e8f: 90                          	nop

0000000100002e90 <__Z4foo1v.cleanup>:
100002e90: 55                          	pushq	%rbp
100002e91: 48 89 e5                    	movq	%rsp, %rbp
100002e94: 48 81 ec c0 00 00 00        	subq	$192, %rsp
100002e9b: 48 89 7d 88                 	movq	%rdi, -120(%rbp)
100002e9f: 48 89 f8                    	movq	%rdi, %rax
100002ea2: 48 83 c0 29                 	addq	$41, %rax
100002ea6: 48 89 45 90                 	movq	%rax, -112(%rbp)
100002eaa: 48 89 f8                    	movq	%rdi, %rax
100002ead: 48 83 c0 2a                 	addq	$42, %rax
100002eb1: 48 89 45 98                 	movq	%rax, -104(%rbp)
100002eb5: 48 83 c7 10                 	addq	$16, %rdi
100002eb9: 48 89 7d a0                 	movq	%rdi, -96(%rbp)
100002ebd: e9 e1 02 00 00              	jmp	0x1000031a3 <__Z4foo1v.cleanup+0x313>
100002ec2: e9 00 00 00 00              	jmp	0x100002ec7 <__Z4foo1v.cleanup+0x37>
100002ec7: e9 00 00 00 00              	jmp	0x100002ecc <__Z4foo1v.cleanup+0x3c>
100002ecc: 31 c0                       	xorl	%eax, %eax
100002ece: 84 c0                       	testb	%al, %al
100002ed0: 0f 85 2c 00 00 00           	jne	0x100002f02 <__Z4foo1v.cleanup+0x72>
100002ed6: e9 00 00 00 00              	jmp	0x100002edb <__Z4foo1v.cleanup+0x4b>
100002edb: 31 c0                       	xorl	%eax, %eax
100002edd: 84 c0                       	testb	%al, %al
100002edf: 0f 85 95 02 00 00           	jne	0x10000317a <__Z4foo1v.cleanup+0x2ea>
100002ee5: e9 00 00 00 00              	jmp	0x100002eea <__Z4foo1v.cleanup+0x5a>
100002eea: b8 02 00 00 00              	movl	$2, %eax
100002eef: 89 45 84                    	movl	%eax, -124(%rbp)
100002ef2: e9 00 00 00 00              	jmp	0x100002ef7 <__Z4foo1v.cleanup+0x67>
100002ef7: 8b 45 84                    	movl	-124(%rbp), %eax
100002efa: 89 45 80                    	movl	%eax, -128(%rbp)
100002efd: e9 1a 00 00 00              	jmp	0x100002f1c <__Z4foo1v.cleanup+0x8c>
100002f02: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
100002f06: e8 f5 e7 ff ff              	callq	0x100001700 <__ZNKSt12experimental13coroutines_v114suspend_always12await_resumeB6v15006Ev>
100002f0b: 31 c0                       	xorl	%eax, %eax
100002f0d: 89 85 7c ff ff ff           	movl	%eax, -132(%rbp)
100002f13: 8b 85 7c ff ff ff           	movl	-132(%rbp), %eax
100002f19: 89 45 80                    	movl	%eax, -128(%rbp)
100002f1c: 8b 45 80                    	movl	-128(%rbp), %eax
100002f1f: 83 f8 00                    	cmpl	$0, %eax
100002f22: 89 85 78 ff ff ff           	movl	%eax, -136(%rbp)
100002f28: 0f 84 11 00 00 00           	je	0x100002f3f <__Z4foo1v.cleanup+0xaf>
100002f2e: 8b 85 78 ff ff ff           	movl	-136(%rbp), %eax
100002f34: 89 85 74 ff ff ff           	movl	%eax, -140(%rbp)
100002f3a: e9 fb 01 00 00              	jmp	0x10000313a <__Z4foo1v.cleanup+0x2aa>
100002f3f: 48 8b 3d 7a 11 00 00        	movq	4474(%rip), %rdi        ## 0x1000040c0 <_strlen+0x1000040c0>
100002f46: 48 8d 35 5b 0f 00 00        	leaq	3931(%rip), %rsi        ## 0x100003ea8 <_strlen+0x100003ea8>
100002f4d: e8 da 0c 00 00              	callq	0x100003c2c <_strlen+0x100003c2c>
100002f52: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100002f59: e9 00 00 00 00              	jmp	0x100002f5e <__Z4foo1v.cleanup+0xce>
100002f5e: 48 8b bd 68 ff ff ff        	movq	-152(%rbp), %rdi
100002f65: 48 8b 35 5c 11 00 00        	movq	4444(%rip), %rsi        ## 0x1000040c8 <_strlen+0x1000040c8>
100002f6c: e8 df e7 ff ff              	callq	0x100001750 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRS3_S4_E>
100002f71: e9 00 00 00 00              	jmp	0x100002f76 <__Z4foo1v.cleanup+0xe6>
100002f76: 48 8d 3d 8b 50 00 00        	leaq	20619(%rip), %rdi       ## 0x100008008 <_r2>
100002f7d: e8 3e 0c 00 00              	callq	0x100003bc0 <_strlen+0x100003bc0>
100002f82: e9 00 00 00 00              	jmp	0x100002f87 <__Z4foo1v.cleanup+0xf7>
100002f87: 48 8d 35 1f 0f 00 00        	leaq	3871(%rip), %rsi        ## 0x100003ead <_strlen+0x100003ead>
100002f8e: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
100002f92: e8 a9 e8 ff ff              	callq	0x100001840 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006IDnEEPKc>
100002f97: e9 00 00 00 00              	jmp	0x100002f9c <__Z4foo1v.cleanup+0x10c>
100002f9c: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100002fa0: 48 8d 75 d8                 	leaq	-40(%rbp), %rsi
100002fa4: e8 f3 0b 00 00              	callq	0x100003b9c <_strlen+0x100003b9c>
100002fa9: e9 00 00 00 00              	jmp	0x100002fae <__Z4foo1v.cleanup+0x11e>
100002fae: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
100002fb2: e8 39 0c 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
100002fb7: e9 5d 00 00 00              	jmp	0x100003019 <__Z4foo1v.cleanup+0x189>
100002fbc: 48 89 c1                    	movq	%rax, %rcx
100002fbf: 89 d0                       	movl	%edx, %eax
100002fc1: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100002fc5: 89 45 c4                    	movl	%eax, -60(%rbp)
100002fc8: e9 26 00 00 00              	jmp	0x100002ff3 <__Z4foo1v.cleanup+0x163>
100002fcd: 48 89 c1                    	movq	%rax, %rcx
100002fd0: 89 d0                       	movl	%edx, %eax
100002fd2: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100002fd6: 89 45 c4                    	movl	%eax, -60(%rbp)
100002fd9: e9 15 00 00 00              	jmp	0x100002ff3 <__Z4foo1v.cleanup+0x163>
100002fde: 48 89 c1                    	movq	%rax, %rcx
100002fe1: 89 d0                       	movl	%edx, %eax
100002fe3: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100002fe7: 89 45 c4                    	movl	%eax, -60(%rbp)
100002fea: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
100002fee: e8 fd 0b 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
100002ff3: 48 8b 7d b8                 	movq	-72(%rbp), %rdi
100002ff7: e8 66 0c 00 00              	callq	0x100003c62 <_strlen+0x100003c62>
100002ffc: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100003000: e8 af 0b 00 00              	callq	0x100003bb4 <_strlen+0x100003bb4>
100003005: e8 5e 0c 00 00              	callq	0x100003c68 <_strlen+0x100003c68>
10000300a: e9 00 00 00 00              	jmp	0x10000300f <__Z4foo1v.cleanup+0x17f>
10000300f: e9 00 00 00 00              	jmp	0x100003014 <__Z4foo1v.cleanup+0x184>
100003014: e9 00 00 00 00              	jmp	0x100003019 <__Z4foo1v.cleanup+0x189>
100003019: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
10000301d: e8 80 0b 00 00              	callq	0x100003ba2 <_strlen+0x100003ba2>
100003022: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100003026: e8 75 e6 ff ff              	callq	0x1000016a0 <__ZNKSt12experimental13coroutines_v114suspend_always11await_readyB6v15006Ev>
10000302b: a8 01                       	testb	$1, %al
10000302d: 0f 85 ab 00 00 00           	jne	0x1000030de <__Z4foo1v.cleanup+0x24e>
100003033: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003037: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
10000303e: 48 8b 7d 88                 	movq	-120(%rbp), %rdi
100003042: e8 89 e6 ff ff              	callq	0x1000016d0 <__ZNSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEE12from_addressB6v15006EPv>
100003047: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
10000304b: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000304f: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100003053: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100003057: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000305b: e8 60 e6 ff ff              	callq	0x1000016c0 <__ZNKSt12experimental13coroutines_v114suspend_always13await_suspendB6v15006ENS0_16coroutine_handleIvEE>
100003060: b0 ff                       	movb	$-1, %al
100003062: 88 85 67 ff ff ff           	movb	%al, -153(%rbp)
100003068: e9 0d 00 00 00              	jmp	0x10000307a <__Z4foo1v.cleanup+0x1ea>
10000306d: b0 01                       	movb	$1, %al
10000306f: 88 85 67 ff ff ff           	movb	%al, -153(%rbp)
100003075: e9 00 00 00 00              	jmp	0x10000307a <__Z4foo1v.cleanup+0x1ea>
10000307a: 8a 85 67 ff ff ff           	movb	-153(%rbp), %al
100003080: 88 85 66 ff ff ff           	movb	%al, -154(%rbp)
100003086: 8a 85 66 ff ff ff           	movb	-154(%rbp), %al
10000308c: 84 c0                       	testb	%al, %al
10000308e: 0f 84 4a 00 00 00           	je	0x1000030de <__Z4foo1v.cleanup+0x24e>
100003094: e9 00 00 00 00              	jmp	0x100003099 <__Z4foo1v.cleanup+0x209>
100003099: 8a 85 66 ff ff ff           	movb	-154(%rbp), %al
10000309f: 2c 01                       	subb	$1, %al
1000030a1: 0f 85 d3 00 00 00           	jne	0x10000317a <__Z4foo1v.cleanup+0x2ea>
1000030a7: e9 00 00 00 00              	jmp	0x1000030ac <__Z4foo1v.cleanup+0x21c>
1000030ac: b8 02 00 00 00              	movl	$2, %eax
1000030b1: 89 85 60 ff ff ff           	movl	%eax, -160(%rbp)
1000030b7: e9 00 00 00 00              	jmp	0x1000030bc <__Z4foo1v.cleanup+0x22c>
1000030bc: 8b 85 60 ff ff ff           	movl	-160(%rbp), %eax
1000030c2: 89 85 5c ff ff ff           	movl	%eax, -164(%rbp)
1000030c8: e9 2e 00 00 00              	jmp	0x1000030fb <__Z4foo1v.cleanup+0x26b>
1000030cd: 48 89 c1                    	movq	%rax, %rcx
1000030d0: 89 d0                       	movl	%edx, %eax
1000030d2: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
1000030d6: 89 45 c4                    	movl	%eax, -60(%rbp)
1000030d9: e9 aa 00 00 00              	jmp	0x100003188 <__Z4foo1v.cleanup+0x2f8>
1000030de: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
1000030e2: e8 19 e6 ff ff              	callq	0x100001700 <__ZNKSt12experimental13coroutines_v114suspend_always12await_resumeB6v15006Ev>
1000030e7: 31 c0                       	xorl	%eax, %eax
1000030e9: 89 85 58 ff ff ff           	movl	%eax, -168(%rbp)
1000030ef: 8b 85 58 ff ff ff           	movl	-168(%rbp), %eax
1000030f5: 89 85 5c ff ff ff           	movl	%eax, -164(%rbp)
1000030fb: 8b 85 5c ff ff ff           	movl	-164(%rbp), %eax
100003101: 83 f8 00                    	cmpl	$0, %eax
100003104: 89 85 54 ff ff ff           	movl	%eax, -172(%rbp)
10000310a: 0f 84 11 00 00 00           	je	0x100003121 <__Z4foo1v.cleanup+0x291>
100003110: 8b 85 54 ff ff ff           	movl	-172(%rbp), %eax
100003116: 89 85 74 ff ff ff           	movl	%eax, -140(%rbp)
10000311c: e9 19 00 00 00              	jmp	0x10000313a <__Z4foo1v.cleanup+0x2aa>
100003121: 31 c0                       	xorl	%eax, %eax
100003123: 89 85 50 ff ff ff           	movl	%eax, -176(%rbp)
100003129: e9 00 00 00 00              	jmp	0x10000312e <__Z4foo1v.cleanup+0x29e>
10000312e: 8b 85 50 ff ff ff           	movl	-176(%rbp), %eax
100003134: 89 85 74 ff ff ff           	movl	%eax, -140(%rbp)
10000313a: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
10000313e: 8b 85 74 ff ff ff           	movl	-140(%rbp), %eax
100003144: 89 85 4c ff ff ff           	movl	%eax, -180(%rbp)
10000314a: e8 61 e7 ff ff              	callq	0x1000018b0 <__ZN9resumable12promise_typeD1Ev>
10000314f: e9 09 00 00 00              	jmp	0x10000315d <__Z4foo1v.cleanup+0x2cd>
100003154: 31 c0                       	xorl	%eax, %eax
100003156: 89 c7                       	movl	%eax, %edi
100003158: e8 e7 0a 00 00              	callq	0x100003c44 <_strlen+0x100003c44>
10000315d: 8b 85 4c ff ff ff           	movl	-180(%rbp), %eax
100003163: 85 c0                       	testl	%eax, %eax
100003165: 0f 84 0a 00 00 00           	je	0x100003175 <__Z4foo1v.cleanup+0x2e5>
10000316b: e9 00 00 00 00              	jmp	0x100003170 <__Z4foo1v.cleanup+0x2e0>
100003170: e9 05 00 00 00              	jmp	0x10000317a <__Z4foo1v.cleanup+0x2ea>
100003175: e9 00 00 00 00              	jmp	0x10000317a <__Z4foo1v.cleanup+0x2ea>
10000317a: e9 00 00 00 00              	jmp	0x10000317f <__Z4foo1v.cleanup+0x2ef>
10000317f: 48 81 c4 c0 00 00 00        	addq	$192, %rsp
100003186: 5d                          	popq	%rbp
100003187: c3                          	retq
100003188: 48 8b 45 88                 	movq	-120(%rbp), %rax
10000318c: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100003193: e9 00 00 00 00              	jmp	0x100003198 <__Z4foo1v.cleanup+0x308>
100003198: 48 8b 7d b8                 	movq	-72(%rbp), %rdi
10000319c: e8 ef 09 00 00              	callq	0x100003b90 <_strlen+0x100003b90>
1000031a1: 0f 0b                       	ud2
1000031a3: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000031a7: 48 83 38 00                 	cmpq	$0, (%rax)
1000031ab: 0f 84 bc fe ff ff           	je	0x10000306d <__Z4foo1v.cleanup+0x1dd>
1000031b1: e9 0c fd ff ff              	jmp	0x100002ec2 <__Z4foo1v.cleanup+0x32>
1000031b6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

00000001000031c0 <__Z4foo2v.resume>:
1000031c0: 55                          	pushq	%rbp
1000031c1: 48 89 e5                    	movq	%rsp, %rbp
1000031c4: 48 81 ec b0 00 00 00        	subq	$176, %rsp
1000031cb: 48 89 7d 88                 	movq	%rdi, -120(%rbp)
1000031cf: 48 89 f8                    	movq	%rdi, %rax
1000031d2: 48 83 c0 29                 	addq	$41, %rax
1000031d6: 48 89 45 90                 	movq	%rax, -112(%rbp)
1000031da: 48 89 f8                    	movq	%rdi, %rax
1000031dd: 48 83 c0 2a                 	addq	$42, %rax
1000031e1: 48 89 45 98                 	movq	%rax, -104(%rbp)
1000031e5: 48 83 c7 10                 	addq	$16, %rdi
1000031e9: 48 89 7d a0                 	movq	%rdi, -96(%rbp)
1000031ed: e9 c6 02 00 00              	jmp	0x1000034b8 <__Z4foo2v.resume+0x2f8>
1000031f2: e9 00 00 00 00              	jmp	0x1000031f7 <__Z4foo2v.resume+0x37>
1000031f7: e9 00 00 00 00              	jmp	0x1000031fc <__Z4foo2v.resume+0x3c>
1000031fc: b0 01                       	movb	$1, %al
1000031fe: 84 c0                       	testb	%al, %al
100003200: 0f 85 2c 00 00 00           	jne	0x100003232 <__Z4foo2v.resume+0x72>
100003206: e9 00 00 00 00              	jmp	0x10000320b <__Z4foo2v.resume+0x4b>
10000320b: b0 01                       	movb	$1, %al
10000320d: 84 c0                       	testb	%al, %al
10000320f: 0f 85 7a 02 00 00           	jne	0x10000348f <__Z4foo2v.resume+0x2cf>
100003215: e9 00 00 00 00              	jmp	0x10000321a <__Z4foo2v.resume+0x5a>
10000321a: b8 02 00 00 00              	movl	$2, %eax
10000321f: 89 45 84                    	movl	%eax, -124(%rbp)
100003222: e9 00 00 00 00              	jmp	0x100003227 <__Z4foo2v.resume+0x67>
100003227: 8b 45 84                    	movl	-124(%rbp), %eax
10000322a: 89 45 80                    	movl	%eax, -128(%rbp)
10000322d: e9 1a 00 00 00              	jmp	0x10000324c <__Z4foo2v.resume+0x8c>
100003232: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
100003236: e8 c5 e4 ff ff              	callq	0x100001700 <__ZNKSt12experimental13coroutines_v114suspend_always12await_resumeB6v15006Ev>
10000323b: 31 c0                       	xorl	%eax, %eax
10000323d: 89 85 7c ff ff ff           	movl	%eax, -132(%rbp)
100003243: 8b 85 7c ff ff ff           	movl	-132(%rbp), %eax
100003249: 89 45 80                    	movl	%eax, -128(%rbp)
10000324c: 8b 45 80                    	movl	-128(%rbp), %eax
10000324f: 83 f8 00                    	cmpl	$0, %eax
100003252: 89 85 78 ff ff ff           	movl	%eax, -136(%rbp)
100003258: 0f 84 11 00 00 00           	je	0x10000326f <__Z4foo2v.resume+0xaf>
10000325e: 8b 85 78 ff ff ff           	movl	-136(%rbp), %eax
100003264: 89 85 74 ff ff ff           	movl	%eax, -140(%rbp)
10000326a: e9 d7 01 00 00              	jmp	0x100003446 <__Z4foo2v.resume+0x286>
10000326f: 48 8b 3d 4a 0e 00 00        	movq	3658(%rip), %rdi        ## 0x1000040c0 <_strlen+0x1000040c0>
100003276: 48 8d 35 3c 0c 00 00        	leaq	3132(%rip), %rsi        ## 0x100003eb9 <_strlen+0x100003eb9>
10000327d: e8 aa 09 00 00              	callq	0x100003c2c <_strlen+0x100003c2c>
100003282: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100003289: e9 00 00 00 00              	jmp	0x10000328e <__Z4foo2v.resume+0xce>
10000328e: 48 8b bd 68 ff ff ff        	movq	-152(%rbp), %rdi
100003295: 48 8b 35 2c 0e 00 00        	movq	3628(%rip), %rsi        ## 0x1000040c8 <_strlen+0x1000040c8>
10000329c: e8 af e4 ff ff              	callq	0x100001750 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRS3_S4_E>
1000032a1: e9 00 00 00 00              	jmp	0x1000032a6 <__Z4foo2v.resume+0xe6>
1000032a6: 48 8d 3d 53 4d 00 00        	leaq	19795(%rip), %rdi       ## 0x100008000 <_r1>
1000032ad: e8 0e 09 00 00              	callq	0x100003bc0 <_strlen+0x100003bc0>
1000032b2: e9 00 00 00 00              	jmp	0x1000032b7 <__Z4foo2v.resume+0xf7>
1000032b7: 48 8d 35 ef 0b 00 00        	leaq	3055(%rip), %rsi        ## 0x100003ead <_strlen+0x100003ead>
1000032be: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
1000032c2: e8 79 e5 ff ff              	callq	0x100001840 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006IDnEEPKc>
1000032c7: e9 00 00 00 00              	jmp	0x1000032cc <__Z4foo2v.resume+0x10c>
1000032cc: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
1000032d0: 48 8d 75 d8                 	leaq	-40(%rbp), %rsi
1000032d4: e8 c3 08 00 00              	callq	0x100003b9c <_strlen+0x100003b9c>
1000032d9: e9 00 00 00 00              	jmp	0x1000032de <__Z4foo2v.resume+0x11e>
1000032de: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
1000032e2: e8 09 09 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
1000032e7: e9 5d 00 00 00              	jmp	0x100003349 <__Z4foo2v.resume+0x189>
1000032ec: 48 89 c1                    	movq	%rax, %rcx
1000032ef: 89 d0                       	movl	%edx, %eax
1000032f1: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
1000032f5: 89 45 c4                    	movl	%eax, -60(%rbp)
1000032f8: e9 26 00 00 00              	jmp	0x100003323 <__Z4foo2v.resume+0x163>
1000032fd: 48 89 c1                    	movq	%rax, %rcx
100003300: 89 d0                       	movl	%edx, %eax
100003302: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100003306: 89 45 c4                    	movl	%eax, -60(%rbp)
100003309: e9 15 00 00 00              	jmp	0x100003323 <__Z4foo2v.resume+0x163>
10000330e: 48 89 c1                    	movq	%rax, %rcx
100003311: 89 d0                       	movl	%edx, %eax
100003313: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100003317: 89 45 c4                    	movl	%eax, -60(%rbp)
10000331a: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
10000331e: e8 cd 08 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
100003323: 48 8b 7d b8                 	movq	-72(%rbp), %rdi
100003327: e8 36 09 00 00              	callq	0x100003c62 <_strlen+0x100003c62>
10000332c: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100003330: e8 7f 08 00 00              	callq	0x100003bb4 <_strlen+0x100003bb4>
100003335: e8 2e 09 00 00              	callq	0x100003c68 <_strlen+0x100003c68>
10000333a: e9 00 00 00 00              	jmp	0x10000333f <__Z4foo2v.resume+0x17f>
10000333f: e9 00 00 00 00              	jmp	0x100003344 <__Z4foo2v.resume+0x184>
100003344: e9 00 00 00 00              	jmp	0x100003349 <__Z4foo2v.resume+0x189>
100003349: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
10000334d: e8 50 08 00 00              	callq	0x100003ba2 <_strlen+0x100003ba2>
100003352: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100003356: e8 45 e3 ff ff              	callq	0x1000016a0 <__ZNKSt12experimental13coroutines_v114suspend_always11await_readyB6v15006Ev>
10000335b: a8 01                       	testb	$1, %al
10000335d: 0f 85 87 00 00 00           	jne	0x1000033ea <__Z4foo2v.resume+0x22a>
100003363: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003367: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
10000336e: 48 8b 7d 88                 	movq	-120(%rbp), %rdi
100003372: e8 59 e3 ff ff              	callq	0x1000016d0 <__ZNSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEE12from_addressB6v15006EPv>
100003377: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
10000337b: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000337f: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100003383: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100003387: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000338b: e8 30 e3 ff ff              	callq	0x1000016c0 <__ZNKSt12experimental13coroutines_v114suspend_always13await_suspendB6v15006ENS0_16coroutine_handleIvEE>
100003390: e9 00 00 00 00              	jmp	0x100003395 <__Z4foo2v.resume+0x1d5>
100003395: e9 00 00 00 00              	jmp	0x10000339a <__Z4foo2v.resume+0x1da>
10000339a: 31 c0                       	xorl	%eax, %eax
10000339c: 84 c0                       	testb	%al, %al
10000339e: 0f 85 46 00 00 00           	jne	0x1000033ea <__Z4foo2v.resume+0x22a>
1000033a4: e9 00 00 00 00              	jmp	0x1000033a9 <__Z4foo2v.resume+0x1e9>
1000033a9: b0 01                       	movb	$1, %al
1000033ab: 84 c0                       	testb	%al, %al
1000033ad: 0f 85 dc 00 00 00           	jne	0x10000348f <__Z4foo2v.resume+0x2cf>
1000033b3: e9 00 00 00 00              	jmp	0x1000033b8 <__Z4foo2v.resume+0x1f8>
1000033b8: b8 02 00 00 00              	movl	$2, %eax
1000033bd: 89 85 64 ff ff ff           	movl	%eax, -156(%rbp)
1000033c3: e9 00 00 00 00              	jmp	0x1000033c8 <__Z4foo2v.resume+0x208>
1000033c8: 8b 85 64 ff ff ff           	movl	-156(%rbp), %eax
1000033ce: 89 85 60 ff ff ff           	movl	%eax, -160(%rbp)
1000033d4: e9 2e 00 00 00              	jmp	0x100003407 <__Z4foo2v.resume+0x247>
1000033d9: 48 89 c1                    	movq	%rax, %rcx
1000033dc: 89 d0                       	movl	%edx, %eax
1000033de: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
1000033e2: 89 45 c4                    	movl	%eax, -60(%rbp)
1000033e5: e9 b3 00 00 00              	jmp	0x10000349d <__Z4foo2v.resume+0x2dd>
1000033ea: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
1000033ee: e8 0d e3 ff ff              	callq	0x100001700 <__ZNKSt12experimental13coroutines_v114suspend_always12await_resumeB6v15006Ev>
1000033f3: 31 c0                       	xorl	%eax, %eax
1000033f5: 89 85 5c ff ff ff           	movl	%eax, -164(%rbp)
1000033fb: 8b 85 5c ff ff ff           	movl	-164(%rbp), %eax
100003401: 89 85 60 ff ff ff           	movl	%eax, -160(%rbp)
100003407: 8b 85 60 ff ff ff           	movl	-160(%rbp), %eax
10000340d: 83 f8 00                    	cmpl	$0, %eax
100003410: 89 85 58 ff ff ff           	movl	%eax, -168(%rbp)
100003416: 0f 84 11 00 00 00           	je	0x10000342d <__Z4foo2v.resume+0x26d>
10000341c: 8b 85 58 ff ff ff           	movl	-168(%rbp), %eax
100003422: 89 85 74 ff ff ff           	movl	%eax, -140(%rbp)
100003428: e9 19 00 00 00              	jmp	0x100003446 <__Z4foo2v.resume+0x286>
10000342d: 31 c0                       	xorl	%eax, %eax
10000342f: 89 85 54 ff ff ff           	movl	%eax, -172(%rbp)
100003435: e9 00 00 00 00              	jmp	0x10000343a <__Z4foo2v.resume+0x27a>
10000343a: 8b 85 54 ff ff ff           	movl	-172(%rbp), %eax
100003440: 89 85 74 ff ff ff           	movl	%eax, -140(%rbp)
100003446: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
10000344a: 8b 85 74 ff ff ff           	movl	-140(%rbp), %eax
100003450: 89 85 50 ff ff ff           	movl	%eax, -176(%rbp)
100003456: e8 55 e4 ff ff              	callq	0x1000018b0 <__ZN9resumable12promise_typeD1Ev>
10000345b: 48 8b 45 88                 	movq	-120(%rbp), %rax
10000345f: 48 83 f8 00                 	cmpq	$0, %rax
100003463: 0f 84 09 00 00 00           	je	0x100003472 <__Z4foo2v.resume+0x2b2>
100003469: 48 8b 7d 88                 	movq	-120(%rbp), %rdi
10000346d: e8 d2 07 00 00              	callq	0x100003c44 <_strlen+0x100003c44>
100003472: 8b 85 50 ff ff ff           	movl	-176(%rbp), %eax
100003478: 85 c0                       	testl	%eax, %eax
10000347a: 0f 84 0a 00 00 00           	je	0x10000348a <__Z4foo2v.resume+0x2ca>
100003480: e9 00 00 00 00              	jmp	0x100003485 <__Z4foo2v.resume+0x2c5>
100003485: e9 05 00 00 00              	jmp	0x10000348f <__Z4foo2v.resume+0x2cf>
10000348a: e9 00 00 00 00              	jmp	0x10000348f <__Z4foo2v.resume+0x2cf>
10000348f: e9 00 00 00 00              	jmp	0x100003494 <__Z4foo2v.resume+0x2d4>
100003494: 48 81 c4 b0 00 00 00        	addq	$176, %rsp
10000349b: 5d                          	popq	%rbp
10000349c: c3                          	retq
10000349d: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000034a1: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
1000034a8: e9 00 00 00 00              	jmp	0x1000034ad <__Z4foo2v.resume+0x2ed>
1000034ad: 48 8b 7d b8                 	movq	-72(%rbp), %rdi
1000034b1: e8 da 06 00 00              	callq	0x100003b90 <_strlen+0x100003b90>
1000034b6: 0f 0b                       	ud2
1000034b8: e9 35 fd ff ff              	jmp	0x1000031f2 <__Z4foo2v.resume+0x32>
1000034bd: 0f 1f 00                    	nopl	(%rax)

00000001000034c0 <__Z4foo2v.destroy>:
1000034c0: 55                          	pushq	%rbp
1000034c1: 48 89 e5                    	movq	%rsp, %rbp
1000034c4: 48 81 ec c0 00 00 00        	subq	$192, %rsp
1000034cb: 48 89 7d 88                 	movq	%rdi, -120(%rbp)
1000034cf: 48 89 f8                    	movq	%rdi, %rax
1000034d2: 48 83 c0 29                 	addq	$41, %rax
1000034d6: 48 89 45 90                 	movq	%rax, -112(%rbp)
1000034da: 48 89 f8                    	movq	%rdi, %rax
1000034dd: 48 83 c0 2a                 	addq	$42, %rax
1000034e1: 48 89 45 98                 	movq	%rax, -104(%rbp)
1000034e5: 48 83 c7 10                 	addq	$16, %rdi
1000034e9: 48 89 7d a0                 	movq	%rdi, -96(%rbp)
1000034ed: e9 ea 02 00 00              	jmp	0x1000037dc <__Z4foo2v.destroy+0x31c>
1000034f2: e9 00 00 00 00              	jmp	0x1000034f7 <__Z4foo2v.destroy+0x37>
1000034f7: e9 00 00 00 00              	jmp	0x1000034fc <__Z4foo2v.destroy+0x3c>
1000034fc: 31 c0                       	xorl	%eax, %eax
1000034fe: 84 c0                       	testb	%al, %al
100003500: 0f 85 2c 00 00 00           	jne	0x100003532 <__Z4foo2v.destroy+0x72>
100003506: e9 00 00 00 00              	jmp	0x10000350b <__Z4foo2v.destroy+0x4b>
10000350b: 31 c0                       	xorl	%eax, %eax
10000350d: 84 c0                       	testb	%al, %al
10000350f: 0f 85 9e 02 00 00           	jne	0x1000037b3 <__Z4foo2v.destroy+0x2f3>
100003515: e9 00 00 00 00              	jmp	0x10000351a <__Z4foo2v.destroy+0x5a>
10000351a: b8 02 00 00 00              	movl	$2, %eax
10000351f: 89 45 84                    	movl	%eax, -124(%rbp)
100003522: e9 00 00 00 00              	jmp	0x100003527 <__Z4foo2v.destroy+0x67>
100003527: 8b 45 84                    	movl	-124(%rbp), %eax
10000352a: 89 45 80                    	movl	%eax, -128(%rbp)
10000352d: e9 1a 00 00 00              	jmp	0x10000354c <__Z4foo2v.destroy+0x8c>
100003532: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
100003536: e8 c5 e1 ff ff              	callq	0x100001700 <__ZNKSt12experimental13coroutines_v114suspend_always12await_resumeB6v15006Ev>
10000353b: 31 c0                       	xorl	%eax, %eax
10000353d: 89 85 7c ff ff ff           	movl	%eax, -132(%rbp)
100003543: 8b 85 7c ff ff ff           	movl	-132(%rbp), %eax
100003549: 89 45 80                    	movl	%eax, -128(%rbp)
10000354c: 8b 45 80                    	movl	-128(%rbp), %eax
10000354f: 83 f8 00                    	cmpl	$0, %eax
100003552: 89 85 78 ff ff ff           	movl	%eax, -136(%rbp)
100003558: 0f 84 11 00 00 00           	je	0x10000356f <__Z4foo2v.destroy+0xaf>
10000355e: 8b 85 78 ff ff ff           	movl	-136(%rbp), %eax
100003564: 89 85 74 ff ff ff           	movl	%eax, -140(%rbp)
10000356a: e9 fb 01 00 00              	jmp	0x10000376a <__Z4foo2v.destroy+0x2aa>
10000356f: 48 8b 3d 4a 0b 00 00        	movq	2890(%rip), %rdi        ## 0x1000040c0 <_strlen+0x1000040c0>
100003576: 48 8d 35 3c 09 00 00        	leaq	2364(%rip), %rsi        ## 0x100003eb9 <_strlen+0x100003eb9>
10000357d: e8 aa 06 00 00              	callq	0x100003c2c <_strlen+0x100003c2c>
100003582: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100003589: e9 00 00 00 00              	jmp	0x10000358e <__Z4foo2v.destroy+0xce>
10000358e: 48 8b bd 68 ff ff ff        	movq	-152(%rbp), %rdi
100003595: 48 8b 35 2c 0b 00 00        	movq	2860(%rip), %rsi        ## 0x1000040c8 <_strlen+0x1000040c8>
10000359c: e8 af e1 ff ff              	callq	0x100001750 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRS3_S4_E>
1000035a1: e9 00 00 00 00              	jmp	0x1000035a6 <__Z4foo2v.destroy+0xe6>
1000035a6: 48 8d 3d 53 4a 00 00        	leaq	19027(%rip), %rdi       ## 0x100008000 <_r1>
1000035ad: e8 0e 06 00 00              	callq	0x100003bc0 <_strlen+0x100003bc0>
1000035b2: e9 00 00 00 00              	jmp	0x1000035b7 <__Z4foo2v.destroy+0xf7>
1000035b7: 48 8d 35 ef 08 00 00        	leaq	2287(%rip), %rsi        ## 0x100003ead <_strlen+0x100003ead>
1000035be: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
1000035c2: e8 79 e2 ff ff              	callq	0x100001840 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006IDnEEPKc>
1000035c7: e9 00 00 00 00              	jmp	0x1000035cc <__Z4foo2v.destroy+0x10c>
1000035cc: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
1000035d0: 48 8d 75 d8                 	leaq	-40(%rbp), %rsi
1000035d4: e8 c3 05 00 00              	callq	0x100003b9c <_strlen+0x100003b9c>
1000035d9: e9 00 00 00 00              	jmp	0x1000035de <__Z4foo2v.destroy+0x11e>
1000035de: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
1000035e2: e8 09 06 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
1000035e7: e9 5d 00 00 00              	jmp	0x100003649 <__Z4foo2v.destroy+0x189>
1000035ec: 48 89 c1                    	movq	%rax, %rcx
1000035ef: 89 d0                       	movl	%edx, %eax
1000035f1: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
1000035f5: 89 45 c4                    	movl	%eax, -60(%rbp)
1000035f8: e9 26 00 00 00              	jmp	0x100003623 <__Z4foo2v.destroy+0x163>
1000035fd: 48 89 c1                    	movq	%rax, %rcx
100003600: 89 d0                       	movl	%edx, %eax
100003602: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100003606: 89 45 c4                    	movl	%eax, -60(%rbp)
100003609: e9 15 00 00 00              	jmp	0x100003623 <__Z4foo2v.destroy+0x163>
10000360e: 48 89 c1                    	movq	%rax, %rcx
100003611: 89 d0                       	movl	%edx, %eax
100003613: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100003617: 89 45 c4                    	movl	%eax, -60(%rbp)
10000361a: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
10000361e: e8 cd 05 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
100003623: 48 8b 7d b8                 	movq	-72(%rbp), %rdi
100003627: e8 36 06 00 00              	callq	0x100003c62 <_strlen+0x100003c62>
10000362c: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100003630: e8 7f 05 00 00              	callq	0x100003bb4 <_strlen+0x100003bb4>
100003635: e8 2e 06 00 00              	callq	0x100003c68 <_strlen+0x100003c68>
10000363a: e9 00 00 00 00              	jmp	0x10000363f <__Z4foo2v.destroy+0x17f>
10000363f: e9 00 00 00 00              	jmp	0x100003644 <__Z4foo2v.destroy+0x184>
100003644: e9 00 00 00 00              	jmp	0x100003649 <__Z4foo2v.destroy+0x189>
100003649: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
10000364d: e8 50 05 00 00              	callq	0x100003ba2 <_strlen+0x100003ba2>
100003652: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100003656: e8 45 e0 ff ff              	callq	0x1000016a0 <__ZNKSt12experimental13coroutines_v114suspend_always11await_readyB6v15006Ev>
10000365b: a8 01                       	testb	$1, %al
10000365d: 0f 85 ab 00 00 00           	jne	0x10000370e <__Z4foo2v.destroy+0x24e>
100003663: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003667: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
10000366e: 48 8b 7d 88                 	movq	-120(%rbp), %rdi
100003672: e8 59 e0 ff ff              	callq	0x1000016d0 <__ZNSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEE12from_addressB6v15006EPv>
100003677: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
10000367b: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000367f: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100003683: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100003687: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000368b: e8 30 e0 ff ff              	callq	0x1000016c0 <__ZNKSt12experimental13coroutines_v114suspend_always13await_suspendB6v15006ENS0_16coroutine_handleIvEE>
100003690: b0 ff                       	movb	$-1, %al
100003692: 88 85 67 ff ff ff           	movb	%al, -153(%rbp)
100003698: e9 0d 00 00 00              	jmp	0x1000036aa <__Z4foo2v.destroy+0x1ea>
10000369d: b0 01                       	movb	$1, %al
10000369f: 88 85 67 ff ff ff           	movb	%al, -153(%rbp)
1000036a5: e9 00 00 00 00              	jmp	0x1000036aa <__Z4foo2v.destroy+0x1ea>
1000036aa: 8a 85 67 ff ff ff           	movb	-153(%rbp), %al
1000036b0: 88 85 66 ff ff ff           	movb	%al, -154(%rbp)
1000036b6: 8a 85 66 ff ff ff           	movb	-154(%rbp), %al
1000036bc: 84 c0                       	testb	%al, %al
1000036be: 0f 84 4a 00 00 00           	je	0x10000370e <__Z4foo2v.destroy+0x24e>
1000036c4: e9 00 00 00 00              	jmp	0x1000036c9 <__Z4foo2v.destroy+0x209>
1000036c9: 8a 85 66 ff ff ff           	movb	-154(%rbp), %al
1000036cf: 2c 01                       	subb	$1, %al
1000036d1: 0f 85 dc 00 00 00           	jne	0x1000037b3 <__Z4foo2v.destroy+0x2f3>
1000036d7: e9 00 00 00 00              	jmp	0x1000036dc <__Z4foo2v.destroy+0x21c>
1000036dc: b8 02 00 00 00              	movl	$2, %eax
1000036e1: 89 85 60 ff ff ff           	movl	%eax, -160(%rbp)
1000036e7: e9 00 00 00 00              	jmp	0x1000036ec <__Z4foo2v.destroy+0x22c>
1000036ec: 8b 85 60 ff ff ff           	movl	-160(%rbp), %eax
1000036f2: 89 85 5c ff ff ff           	movl	%eax, -164(%rbp)
1000036f8: e9 2e 00 00 00              	jmp	0x10000372b <__Z4foo2v.destroy+0x26b>
1000036fd: 48 89 c1                    	movq	%rax, %rcx
100003700: 89 d0                       	movl	%edx, %eax
100003702: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100003706: 89 45 c4                    	movl	%eax, -60(%rbp)
100003709: e9 b3 00 00 00              	jmp	0x1000037c1 <__Z4foo2v.destroy+0x301>
10000370e: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100003712: e8 e9 df ff ff              	callq	0x100001700 <__ZNKSt12experimental13coroutines_v114suspend_always12await_resumeB6v15006Ev>
100003717: 31 c0                       	xorl	%eax, %eax
100003719: 89 85 58 ff ff ff           	movl	%eax, -168(%rbp)
10000371f: 8b 85 58 ff ff ff           	movl	-168(%rbp), %eax
100003725: 89 85 5c ff ff ff           	movl	%eax, -164(%rbp)
10000372b: 8b 85 5c ff ff ff           	movl	-164(%rbp), %eax
100003731: 83 f8 00                    	cmpl	$0, %eax
100003734: 89 85 54 ff ff ff           	movl	%eax, -172(%rbp)
10000373a: 0f 84 11 00 00 00           	je	0x100003751 <__Z4foo2v.destroy+0x291>
100003740: 8b 85 54 ff ff ff           	movl	-172(%rbp), %eax
100003746: 89 85 74 ff ff ff           	movl	%eax, -140(%rbp)
10000374c: e9 19 00 00 00              	jmp	0x10000376a <__Z4foo2v.destroy+0x2aa>
100003751: 31 c0                       	xorl	%eax, %eax
100003753: 89 85 50 ff ff ff           	movl	%eax, -176(%rbp)
100003759: e9 00 00 00 00              	jmp	0x10000375e <__Z4foo2v.destroy+0x29e>
10000375e: 8b 85 50 ff ff ff           	movl	-176(%rbp), %eax
100003764: 89 85 74 ff ff ff           	movl	%eax, -140(%rbp)
10000376a: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
10000376e: 8b 85 74 ff ff ff           	movl	-140(%rbp), %eax
100003774: 89 85 4c ff ff ff           	movl	%eax, -180(%rbp)
10000377a: e8 31 e1 ff ff              	callq	0x1000018b0 <__ZN9resumable12promise_typeD1Ev>
10000377f: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003783: 48 83 f8 00                 	cmpq	$0, %rax
100003787: 0f 84 09 00 00 00           	je	0x100003796 <__Z4foo2v.destroy+0x2d6>
10000378d: 48 8b 7d 88                 	movq	-120(%rbp), %rdi
100003791: e8 ae 04 00 00              	callq	0x100003c44 <_strlen+0x100003c44>
100003796: 8b 85 4c ff ff ff           	movl	-180(%rbp), %eax
10000379c: 85 c0                       	testl	%eax, %eax
10000379e: 0f 84 0a 00 00 00           	je	0x1000037ae <__Z4foo2v.destroy+0x2ee>
1000037a4: e9 00 00 00 00              	jmp	0x1000037a9 <__Z4foo2v.destroy+0x2e9>
1000037a9: e9 05 00 00 00              	jmp	0x1000037b3 <__Z4foo2v.destroy+0x2f3>
1000037ae: e9 00 00 00 00              	jmp	0x1000037b3 <__Z4foo2v.destroy+0x2f3>
1000037b3: e9 00 00 00 00              	jmp	0x1000037b8 <__Z4foo2v.destroy+0x2f8>
1000037b8: 48 81 c4 c0 00 00 00        	addq	$192, %rsp
1000037bf: 5d                          	popq	%rbp
1000037c0: c3                          	retq
1000037c1: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000037c5: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
1000037cc: e9 00 00 00 00              	jmp	0x1000037d1 <__Z4foo2v.destroy+0x311>
1000037d1: 48 8b 7d b8                 	movq	-72(%rbp), %rdi
1000037d5: e8 b6 03 00 00              	callq	0x100003b90 <_strlen+0x100003b90>
1000037da: 0f 0b                       	ud2
1000037dc: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000037e0: 48 83 38 00                 	cmpq	$0, (%rax)
1000037e4: 0f 84 b3 fe ff ff           	je	0x10000369d <__Z4foo2v.destroy+0x1dd>
1000037ea: e9 03 fd ff ff              	jmp	0x1000034f2 <__Z4foo2v.destroy+0x32>
1000037ef: 90                          	nop

00000001000037f0 <__Z4foo2v.cleanup>:
1000037f0: 55                          	pushq	%rbp
1000037f1: 48 89 e5                    	movq	%rsp, %rbp
1000037f4: 48 81 ec c0 00 00 00        	subq	$192, %rsp
1000037fb: 48 89 7d 88                 	movq	%rdi, -120(%rbp)
1000037ff: 48 89 f8                    	movq	%rdi, %rax
100003802: 48 83 c0 29                 	addq	$41, %rax
100003806: 48 89 45 90                 	movq	%rax, -112(%rbp)
10000380a: 48 89 f8                    	movq	%rdi, %rax
10000380d: 48 83 c0 2a                 	addq	$42, %rax
100003811: 48 89 45 98                 	movq	%rax, -104(%rbp)
100003815: 48 83 c7 10                 	addq	$16, %rdi
100003819: 48 89 7d a0                 	movq	%rdi, -96(%rbp)
10000381d: e9 e1 02 00 00              	jmp	0x100003b03 <__Z4foo2v.cleanup+0x313>
100003822: e9 00 00 00 00              	jmp	0x100003827 <__Z4foo2v.cleanup+0x37>
100003827: e9 00 00 00 00              	jmp	0x10000382c <__Z4foo2v.cleanup+0x3c>
10000382c: 31 c0                       	xorl	%eax, %eax
10000382e: 84 c0                       	testb	%al, %al
100003830: 0f 85 2c 00 00 00           	jne	0x100003862 <__Z4foo2v.cleanup+0x72>
100003836: e9 00 00 00 00              	jmp	0x10000383b <__Z4foo2v.cleanup+0x4b>
10000383b: 31 c0                       	xorl	%eax, %eax
10000383d: 84 c0                       	testb	%al, %al
10000383f: 0f 85 95 02 00 00           	jne	0x100003ada <__Z4foo2v.cleanup+0x2ea>
100003845: e9 00 00 00 00              	jmp	0x10000384a <__Z4foo2v.cleanup+0x5a>
10000384a: b8 02 00 00 00              	movl	$2, %eax
10000384f: 89 45 84                    	movl	%eax, -124(%rbp)
100003852: e9 00 00 00 00              	jmp	0x100003857 <__Z4foo2v.cleanup+0x67>
100003857: 8b 45 84                    	movl	-124(%rbp), %eax
10000385a: 89 45 80                    	movl	%eax, -128(%rbp)
10000385d: e9 1a 00 00 00              	jmp	0x10000387c <__Z4foo2v.cleanup+0x8c>
100003862: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
100003866: e8 95 de ff ff              	callq	0x100001700 <__ZNKSt12experimental13coroutines_v114suspend_always12await_resumeB6v15006Ev>
10000386b: 31 c0                       	xorl	%eax, %eax
10000386d: 89 85 7c ff ff ff           	movl	%eax, -132(%rbp)
100003873: 8b 85 7c ff ff ff           	movl	-132(%rbp), %eax
100003879: 89 45 80                    	movl	%eax, -128(%rbp)
10000387c: 8b 45 80                    	movl	-128(%rbp), %eax
10000387f: 83 f8 00                    	cmpl	$0, %eax
100003882: 89 85 78 ff ff ff           	movl	%eax, -136(%rbp)
100003888: 0f 84 11 00 00 00           	je	0x10000389f <__Z4foo2v.cleanup+0xaf>
10000388e: 8b 85 78 ff ff ff           	movl	-136(%rbp), %eax
100003894: 89 85 74 ff ff ff           	movl	%eax, -140(%rbp)
10000389a: e9 fb 01 00 00              	jmp	0x100003a9a <__Z4foo2v.cleanup+0x2aa>
10000389f: 48 8b 3d 1a 08 00 00        	movq	2074(%rip), %rdi        ## 0x1000040c0 <_strlen+0x1000040c0>
1000038a6: 48 8d 35 0c 06 00 00        	leaq	1548(%rip), %rsi        ## 0x100003eb9 <_strlen+0x100003eb9>
1000038ad: e8 7a 03 00 00              	callq	0x100003c2c <_strlen+0x100003c2c>
1000038b2: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
1000038b9: e9 00 00 00 00              	jmp	0x1000038be <__Z4foo2v.cleanup+0xce>
1000038be: 48 8b bd 68 ff ff ff        	movq	-152(%rbp), %rdi
1000038c5: 48 8b 35 fc 07 00 00        	movq	2044(%rip), %rsi        ## 0x1000040c8 <_strlen+0x1000040c8>
1000038cc: e8 7f de ff ff              	callq	0x100001750 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRS3_S4_E>
1000038d1: e9 00 00 00 00              	jmp	0x1000038d6 <__Z4foo2v.cleanup+0xe6>
1000038d6: 48 8d 3d 23 47 00 00        	leaq	18211(%rip), %rdi       ## 0x100008000 <_r1>
1000038dd: e8 de 02 00 00              	callq	0x100003bc0 <_strlen+0x100003bc0>
1000038e2: e9 00 00 00 00              	jmp	0x1000038e7 <__Z4foo2v.cleanup+0xf7>
1000038e7: 48 8d 35 bf 05 00 00        	leaq	1471(%rip), %rsi        ## 0x100003ead <_strlen+0x100003ead>
1000038ee: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
1000038f2: e8 49 df ff ff              	callq	0x100001840 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006IDnEEPKc>
1000038f7: e9 00 00 00 00              	jmp	0x1000038fc <__Z4foo2v.cleanup+0x10c>
1000038fc: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100003900: 48 8d 75 d8                 	leaq	-40(%rbp), %rsi
100003904: e8 93 02 00 00              	callq	0x100003b9c <_strlen+0x100003b9c>
100003909: e9 00 00 00 00              	jmp	0x10000390e <__Z4foo2v.cleanup+0x11e>
10000390e: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
100003912: e8 d9 02 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
100003917: e9 5d 00 00 00              	jmp	0x100003979 <__Z4foo2v.cleanup+0x189>
10000391c: 48 89 c1                    	movq	%rax, %rcx
10000391f: 89 d0                       	movl	%edx, %eax
100003921: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100003925: 89 45 c4                    	movl	%eax, -60(%rbp)
100003928: e9 26 00 00 00              	jmp	0x100003953 <__Z4foo2v.cleanup+0x163>
10000392d: 48 89 c1                    	movq	%rax, %rcx
100003930: 89 d0                       	movl	%edx, %eax
100003932: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100003936: 89 45 c4                    	movl	%eax, -60(%rbp)
100003939: e9 15 00 00 00              	jmp	0x100003953 <__Z4foo2v.cleanup+0x163>
10000393e: 48 89 c1                    	movq	%rax, %rcx
100003941: 89 d0                       	movl	%edx, %eax
100003943: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100003947: 89 45 c4                    	movl	%eax, -60(%rbp)
10000394a: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
10000394e: e8 9d 02 00 00              	callq	0x100003bf0 <_strlen+0x100003bf0>
100003953: 48 8b 7d b8                 	movq	-72(%rbp), %rdi
100003957: e8 06 03 00 00              	callq	0x100003c62 <_strlen+0x100003c62>
10000395c: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100003960: e8 4f 02 00 00              	callq	0x100003bb4 <_strlen+0x100003bb4>
100003965: e8 fe 02 00 00              	callq	0x100003c68 <_strlen+0x100003c68>
10000396a: e9 00 00 00 00              	jmp	0x10000396f <__Z4foo2v.cleanup+0x17f>
10000396f: e9 00 00 00 00              	jmp	0x100003974 <__Z4foo2v.cleanup+0x184>
100003974: e9 00 00 00 00              	jmp	0x100003979 <__Z4foo2v.cleanup+0x189>
100003979: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
10000397d: e8 20 02 00 00              	callq	0x100003ba2 <_strlen+0x100003ba2>
100003982: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100003986: e8 15 dd ff ff              	callq	0x1000016a0 <__ZNKSt12experimental13coroutines_v114suspend_always11await_readyB6v15006Ev>
10000398b: a8 01                       	testb	$1, %al
10000398d: 0f 85 ab 00 00 00           	jne	0x100003a3e <__Z4foo2v.cleanup+0x24e>
100003993: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003997: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
10000399e: 48 8b 7d 88                 	movq	-120(%rbp), %rdi
1000039a2: e8 29 dd ff ff              	callq	0x1000016d0 <__ZNSt12experimental13coroutines_v116coroutine_handleIN9resumable12promise_typeEE12from_addressB6v15006EPv>
1000039a7: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
1000039ab: 48 89 45 f8                 	movq	%rax, -8(%rbp)
1000039af: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000039b3: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000039b7: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000039bb: e8 00 dd ff ff              	callq	0x1000016c0 <__ZNKSt12experimental13coroutines_v114suspend_always13await_suspendB6v15006ENS0_16coroutine_handleIvEE>
1000039c0: b0 ff                       	movb	$-1, %al
1000039c2: 88 85 67 ff ff ff           	movb	%al, -153(%rbp)
1000039c8: e9 0d 00 00 00              	jmp	0x1000039da <__Z4foo2v.cleanup+0x1ea>
1000039cd: b0 01                       	movb	$1, %al
1000039cf: 88 85 67 ff ff ff           	movb	%al, -153(%rbp)
1000039d5: e9 00 00 00 00              	jmp	0x1000039da <__Z4foo2v.cleanup+0x1ea>
1000039da: 8a 85 67 ff ff ff           	movb	-153(%rbp), %al
1000039e0: 88 85 66 ff ff ff           	movb	%al, -154(%rbp)
1000039e6: 8a 85 66 ff ff ff           	movb	-154(%rbp), %al
1000039ec: 84 c0                       	testb	%al, %al
1000039ee: 0f 84 4a 00 00 00           	je	0x100003a3e <__Z4foo2v.cleanup+0x24e>
1000039f4: e9 00 00 00 00              	jmp	0x1000039f9 <__Z4foo2v.cleanup+0x209>
1000039f9: 8a 85 66 ff ff ff           	movb	-154(%rbp), %al
1000039ff: 2c 01                       	subb	$1, %al
100003a01: 0f 85 d3 00 00 00           	jne	0x100003ada <__Z4foo2v.cleanup+0x2ea>
100003a07: e9 00 00 00 00              	jmp	0x100003a0c <__Z4foo2v.cleanup+0x21c>
100003a0c: b8 02 00 00 00              	movl	$2, %eax
100003a11: 89 85 60 ff ff ff           	movl	%eax, -160(%rbp)
100003a17: e9 00 00 00 00              	jmp	0x100003a1c <__Z4foo2v.cleanup+0x22c>
100003a1c: 8b 85 60 ff ff ff           	movl	-160(%rbp), %eax
100003a22: 89 85 5c ff ff ff           	movl	%eax, -164(%rbp)
100003a28: e9 2e 00 00 00              	jmp	0x100003a5b <__Z4foo2v.cleanup+0x26b>
100003a2d: 48 89 c1                    	movq	%rax, %rcx
100003a30: 89 d0                       	movl	%edx, %eax
100003a32: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100003a36: 89 45 c4                    	movl	%eax, -60(%rbp)
100003a39: e9 aa 00 00 00              	jmp	0x100003ae8 <__Z4foo2v.cleanup+0x2f8>
100003a3e: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100003a42: e8 b9 dc ff ff              	callq	0x100001700 <__ZNKSt12experimental13coroutines_v114suspend_always12await_resumeB6v15006Ev>
100003a47: 31 c0                       	xorl	%eax, %eax
100003a49: 89 85 58 ff ff ff           	movl	%eax, -168(%rbp)
100003a4f: 8b 85 58 ff ff ff           	movl	-168(%rbp), %eax
100003a55: 89 85 5c ff ff ff           	movl	%eax, -164(%rbp)
100003a5b: 8b 85 5c ff ff ff           	movl	-164(%rbp), %eax
100003a61: 83 f8 00                    	cmpl	$0, %eax
100003a64: 89 85 54 ff ff ff           	movl	%eax, -172(%rbp)
100003a6a: 0f 84 11 00 00 00           	je	0x100003a81 <__Z4foo2v.cleanup+0x291>
100003a70: 8b 85 54 ff ff ff           	movl	-172(%rbp), %eax
100003a76: 89 85 74 ff ff ff           	movl	%eax, -140(%rbp)
100003a7c: e9 19 00 00 00              	jmp	0x100003a9a <__Z4foo2v.cleanup+0x2aa>
100003a81: 31 c0                       	xorl	%eax, %eax
100003a83: 89 85 50 ff ff ff           	movl	%eax, -176(%rbp)
100003a89: e9 00 00 00 00              	jmp	0x100003a8e <__Z4foo2v.cleanup+0x29e>
100003a8e: 8b 85 50 ff ff ff           	movl	-176(%rbp), %eax
100003a94: 89 85 74 ff ff ff           	movl	%eax, -140(%rbp)
100003a9a: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100003a9e: 8b 85 74 ff ff ff           	movl	-140(%rbp), %eax
100003aa4: 89 85 4c ff ff ff           	movl	%eax, -180(%rbp)
100003aaa: e8 01 de ff ff              	callq	0x1000018b0 <__ZN9resumable12promise_typeD1Ev>
100003aaf: e9 09 00 00 00              	jmp	0x100003abd <__Z4foo2v.cleanup+0x2cd>
100003ab4: 31 c0                       	xorl	%eax, %eax
100003ab6: 89 c7                       	movl	%eax, %edi
100003ab8: e8 87 01 00 00              	callq	0x100003c44 <_strlen+0x100003c44>
100003abd: 8b 85 4c ff ff ff           	movl	-180(%rbp), %eax
100003ac3: 85 c0                       	testl	%eax, %eax
100003ac5: 0f 84 0a 00 00 00           	je	0x100003ad5 <__Z4foo2v.cleanup+0x2e5>
100003acb: e9 00 00 00 00              	jmp	0x100003ad0 <__Z4foo2v.cleanup+0x2e0>
100003ad0: e9 05 00 00 00              	jmp	0x100003ada <__Z4foo2v.cleanup+0x2ea>
100003ad5: e9 00 00 00 00              	jmp	0x100003ada <__Z4foo2v.cleanup+0x2ea>
100003ada: e9 00 00 00 00              	jmp	0x100003adf <__Z4foo2v.cleanup+0x2ef>
100003adf: 48 81 c4 c0 00 00 00        	addq	$192, %rsp
100003ae6: 5d                          	popq	%rbp
100003ae7: c3                          	retq
100003ae8: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003aec: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100003af3: e9 00 00 00 00              	jmp	0x100003af8 <__Z4foo2v.cleanup+0x308>
100003af8: 48 8b 7d b8                 	movq	-72(%rbp), %rdi
100003afc: e8 8f 00 00 00              	callq	0x100003b90 <_strlen+0x100003b90>
100003b01: 0f 0b                       	ud2
100003b03: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003b07: 48 83 38 00                 	cmpq	$0, (%rax)
100003b0b: 0f 84 bc fe ff ff           	je	0x1000039cd <__Z4foo2v.cleanup+0x1dd>
100003b11: e9 0c fd ff ff              	jmp	0x100003822 <__Z4foo2v.cleanup+0x32>
100003b16: 90                          	nop
100003b17: 90                          	nop
100003b18: 90                          	nop
100003b19: 90                          	nop
100003b1a: 90                          	nop
100003b1b: 90                          	nop
100003b1c: 90                          	nop
100003b1d: 90                          	nop
100003b1e: 90                          	nop
100003b1f: 90                          	nop

0000000100003b20 <___cxx_global_var_init>:
100003b20: 55                          	pushq	%rbp
100003b21: 48 89 e5                    	movq	%rsp, %rbp
100003b24: 48 8d 3d d5 44 00 00        	leaq	17621(%rip), %rdi       ## 0x100008000 <_r1>
100003b2b: e8 e0 d0 ff ff              	callq	0x100000c10 <__Z4foo1v>
100003b30: 48 8b 3d 11 05 00 00        	movq	1297(%rip), %rdi        ## 0x100004048 <_strlen+0x100004048>
100003b37: 48 8d 35 c2 44 00 00        	leaq	17602(%rip), %rsi       ## 0x100008000 <_r1>
100003b3e: 48 8d 15 bb c4 ff ff        	leaq	-15173(%rip), %rdx      ## 0x100000000 <_strlen+0x100000000>
100003b45: e8 12 01 00 00              	callq	0x100003c5c <_strlen+0x100003c5c>
100003b4a: 5d                          	popq	%rbp
100003b4b: c3                          	retq
100003b4c: 0f 1f 40 00                 	nopl	(%rax)

0000000100003b50 <___cxx_global_var_init.1>:
100003b50: 55                          	pushq	%rbp
100003b51: 48 89 e5                    	movq	%rsp, %rbp
100003b54: 48 8d 3d ad 44 00 00        	leaq	17581(%rip), %rdi       ## 0x100008008 <_r2>
100003b5b: e8 a0 d5 ff ff              	callq	0x100001100 <__Z4foo2v>
100003b60: 48 8b 3d e1 04 00 00        	movq	1249(%rip), %rdi        ## 0x100004048 <_strlen+0x100004048>
100003b67: 48 8d 35 9a 44 00 00        	leaq	17562(%rip), %rsi       ## 0x100008008 <_r2>
100003b6e: 48 8d 15 8b c4 ff ff        	leaq	-15221(%rip), %rdx      ## 0x100000000 <_strlen+0x100000000>
100003b75: e8 e2 00 00 00              	callq	0x100003c5c <_strlen+0x100003c5c>
100003b7a: 5d                          	popq	%rbp
100003b7b: c3                          	retq
100003b7c: 0f 1f 40 00                 	nopl	(%rax)

0000000100003b80 <__GLOBAL__sub_I_main.cc>:
100003b80: 55                          	pushq	%rbp
100003b81: 48 89 e5                    	movq	%rsp, %rbp
100003b84: e8 97 ff ff ff              	callq	0x100003b20 <___cxx_global_var_init>
100003b89: e8 c2 ff ff ff              	callq	0x100003b50 <___cxx_global_var_init.1>
100003b8e: 5d                          	popq	%rbp
100003b8f: c3                          	retq

Disassembly of section __TEXT,__stubs:

0000000100003b90 <__stubs>:
100003b90: ff 25 6a 04 00 00           	jmpq	*1130(%rip)             ## 0x100004000 <_strlen+0x100004000>
100003b96: ff 25 6c 04 00 00           	jmpq	*1132(%rip)             ## 0x100004008 <_strlen+0x100004008>
100003b9c: ff 25 6e 04 00 00           	jmpq	*1134(%rip)             ## 0x100004010 <_strlen+0x100004010>
100003ba2: ff 25 70 04 00 00           	jmpq	*1136(%rip)             ## 0x100004018 <_strlen+0x100004018>
100003ba8: ff 25 72 04 00 00           	jmpq	*1138(%rip)             ## 0x100004020 <_strlen+0x100004020>
100003bae: ff 25 74 04 00 00           	jmpq	*1140(%rip)             ## 0x100004028 <_strlen+0x100004028>
100003bb4: ff 25 76 04 00 00           	jmpq	*1142(%rip)             ## 0x100004030 <_strlen+0x100004030>
100003bba: ff 25 78 04 00 00           	jmpq	*1144(%rip)             ## 0x100004038 <_strlen+0x100004038>
100003bc0: ff 25 7a 04 00 00           	jmpq	*1146(%rip)             ## 0x100004040 <_strlen+0x100004040>
100003bc6: ff 25 84 04 00 00           	jmpq	*1156(%rip)             ## 0x100004050 <_strlen+0x100004050>
100003bcc: ff 25 86 04 00 00           	jmpq	*1158(%rip)             ## 0x100004058 <_strlen+0x100004058>
100003bd2: ff 25 88 04 00 00           	jmpq	*1160(%rip)             ## 0x100004060 <_strlen+0x100004060>
100003bd8: ff 25 8a 04 00 00           	jmpq	*1162(%rip)             ## 0x100004068 <_strlen+0x100004068>
100003bde: ff 25 8c 04 00 00           	jmpq	*1164(%rip)             ## 0x100004070 <_strlen+0x100004070>
100003be4: ff 25 8e 04 00 00           	jmpq	*1166(%rip)             ## 0x100004078 <_strlen+0x100004078>
100003bea: ff 25 90 04 00 00           	jmpq	*1168(%rip)             ## 0x100004080 <_strlen+0x100004080>
100003bf0: ff 25 92 04 00 00           	jmpq	*1170(%rip)             ## 0x100004088 <_strlen+0x100004088>
100003bf6: ff 25 94 04 00 00           	jmpq	*1172(%rip)             ## 0x100004090 <_strlen+0x100004090>
100003bfc: ff 25 96 04 00 00           	jmpq	*1174(%rip)             ## 0x100004098 <_strlen+0x100004098>
100003c02: ff 25 98 04 00 00           	jmpq	*1176(%rip)             ## 0x1000040a0 <_strlen+0x1000040a0>
100003c08: ff 25 9a 04 00 00           	jmpq	*1178(%rip)             ## 0x1000040a8 <_strlen+0x1000040a8>
100003c0e: ff 25 9c 04 00 00           	jmpq	*1180(%rip)             ## 0x1000040b0 <_strlen+0x1000040b0>
100003c14: ff 25 9e 04 00 00           	jmpq	*1182(%rip)             ## 0x1000040b8 <_strlen+0x1000040b8>
100003c1a: ff 25 b8 04 00 00           	jmpq	*1208(%rip)             ## 0x1000040d8 <_strlen+0x1000040d8>
100003c20: ff 25 ba 04 00 00           	jmpq	*1210(%rip)             ## 0x1000040e0 <_strlen+0x1000040e0>
100003c26: ff 25 bc 04 00 00           	jmpq	*1212(%rip)             ## 0x1000040e8 <_strlen+0x1000040e8>
100003c2c: ff 25 be 04 00 00           	jmpq	*1214(%rip)             ## 0x1000040f0 <_strlen+0x1000040f0>
100003c32: ff 25 c0 04 00 00           	jmpq	*1216(%rip)             ## 0x1000040f8 <_strlen+0x1000040f8>
100003c38: ff 25 c2 04 00 00           	jmpq	*1218(%rip)             ## 0x100004100 <_strlen+0x100004100>
100003c3e: ff 25 d4 04 00 00           	jmpq	*1236(%rip)             ## 0x100004118 <_strlen+0x100004118>
100003c44: ff 25 de 04 00 00           	jmpq	*1246(%rip)             ## 0x100004128 <_strlen+0x100004128>
100003c4a: ff 25 e0 04 00 00           	jmpq	*1248(%rip)             ## 0x100004130 <_strlen+0x100004130>
100003c50: ff 25 e2 04 00 00           	jmpq	*1250(%rip)             ## 0x100004138 <_strlen+0x100004138>
100003c56: ff 25 e4 04 00 00           	jmpq	*1252(%rip)             ## 0x100004140 <_strlen+0x100004140>
100003c5c: ff 25 e6 04 00 00           	jmpq	*1254(%rip)             ## 0x100004148 <_strlen+0x100004148>
100003c62: ff 25 e8 04 00 00           	jmpq	*1256(%rip)             ## 0x100004150 <_strlen+0x100004150>
100003c68: ff 25 ea 04 00 00           	jmpq	*1258(%rip)             ## 0x100004158 <_strlen+0x100004158>
100003c6e: ff 25 ec 04 00 00           	jmpq	*1260(%rip)             ## 0x100004160 <_strlen+0x100004160>
100003c74: ff 25 f6 04 00 00           	jmpq	*1270(%rip)             ## 0x100004170 <_strlen+0x100004170>
100003c7a: ff 25 f8 04 00 00           	jmpq	*1272(%rip)             ## 0x100004178 <_strlen+0x100004178>
