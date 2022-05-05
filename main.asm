INCLUDE Irvine32FCIS.inc ;DO NOT CHANGE THIS LINE

;###################################################################################;#
;							AUTOGRADER RELATED .DATA								;#
;				DO NOT MODIFY, DELETE NOR ADD ANY LINE HERE							;#
;###################################################################################;#
.data																				;#
																					;#
	prmpt byte "Please enter question number 1, 2, 3, 4, 5, 6 or enter 0 to exit:", 0	        ;#
	wrongChoice byte "Please enter a valid question number!", 0						;#
	tmpstr byte 5 dup(?), 0															;#
;###################################################################################;#
																					
;#######################################################							
;				STUDENTS  .DATA	SECTION     		   #							
;		   THIS SECTION MADE FOR STUDENTS' DATA        #							
;      YOU CAN MODIFY, ADD OR EDIT TO THIS SECTION     #							
;#######################################################							
																					
.data																				
;-------------------------Q1 DATA-----------------------	
; Write Question 1's data here
FIRSTSTRING BYTE 10 DUP(?), 0
firstindex BYTE "Please, enter your first index: ", 0;
secondindex BYTE "Please, enter your second index: ", 0;
word_1 BYTE "Please, enter your word: " , 0;
SwappedWord BYTE "Your swapped word: ", 0;
;-----------------------Q1 DATA End---------------------	

																					
;-------------------------Q2 DATA-----------------------	
NUMBERR byte ' ', 0
Number1 byte '1', 0

;-----------------------Q2 DATA End----------------


;-------------------------Q3 DATA-----------------------	
;FirstArr BYTE 6 dup(0)
	
;SecondArr WORD 4 dup(0)
	
;finalVal DWORD 10 dup(0)

NumberOfElementsFirst BYTE "# Elements of Array1: ", 0;

InputArr1 BYTE "Input Array1: ", 0;

NumberOfElementsSecond BYTE "# Elements of Array2: ", 0;

InputArr2 BYTE "Input Array2: ", 0;

ConcateArray  BYTE "Concatenated Array: ", 0;

space byte " ", 0 

number DWORD ? , 0

index DWORD ? , 0

;-----------------------Q3 DATA End---------------------	


;-------------------------Q4 DATA-----------------------	
STRGIN byte 30 DUP(?), 0
STRGINcorrect byte 30 DUP(?), 0
NUMBERINDEX DWORD ?
INTnumber DWORD ? 
AlmostCorrectWord byte " IS ALMOST CORRECT", 0
CorrectWord byte " IS CORRECT", 0
WrongWord byte " IS WRONG", 0

;-----------------------Q4 DATA End---------------------	


;-------------------------Q5 DATA-----------------------	
; Write Question 5's data here
Arr1 word 0001h, 0002h, 0003h
FirstArr DWORD 1,2,3
	
SecondArr WORD 2,4,6 
	
finalVal DWORD 3 dup(0)
	
NUMBERINBINARY        BYTE 33 DUP(?)   ; 32 characters for 32-bit Binary 
SIZENUM DWORD 0
NUMBASE                DWORD 2           ; Base of Binary Number
DecimalNumber       DWORD ?

LOOPOUTER     DWORD 0
BINARYSTRING           BYTE "Bin String: ",0     ; A null-terminated string
DECIMALSTRING    BYTE "Decimal: ",0
;-----------------------Q5 DATA End---------------------	


;-------------------------Q6 DATA-----------------------	


;-----------------------Q6 DATA End---------------------	
														
														
.code													
;########################################################
;			AUTOGRADER RELATED METHOD			       ;#
;			  DO NOT MODIFY, DELETE					   ;#
;			  NOR ADD ANY LINE HERE					   ;#
;#######################################################
;#######################################################
MAIN PROC											  ;#
	PROGLOOP:										  ;#
		MOV EDX, OFFSET PRMPT						  ;#
		CALL WRITESTRING							  ;#
		CALL CRLF									  ;#
		CALL READINT								  ;#
		CMP EAX, 0									  ;#
		JE FIN										  ;#
													  ;#
		CMP EAX, 1									  ;#
		JE _Q1										  ;#
													  ;#
		CMP EAX, 2									  ;#
		JE _Q2									      ;#
													  ;#		
		CMP EAX, 3									  ;#
		JE _Q3										  ;#
													  ;#
		CMP EAX, 4									  ;#
		JE _Q4										  ;#
													  ;#		
		CMP EAX, 5								      ;#
		JE _Q5										  ;#
													  ;#
		CMP EAX, 6									  ;#
		JE _Q6										  ;#
		JMP WRONG									  ;#
													  ;#
		_Q1:										  ;#
		CALL Q1										  ;#
		JMP CONT									  ;#
													  ;#
		_Q2:										  ;#		
		CALL Q2										  ;#
		JMP CONT									  ;#
													  ;#
		_Q3:										  ;#		
		CALL Q3										  ;#
		JMP CONT									  ;#
													  ;#
		_Q4:										  ;#		
		CALL Q4										  ;#
		JMP CONT									  ;#
													  ;#		
		_Q5:										  ;#		
		CALL Q5										  ;#
		JMP CONT									  ;#
													  ;#
		_Q6:										  ;#		
		CALL Q6										  ;#
		JMP CONT							   		  ;#
												      ;#
		WRONG:										  ;#
		MOV EDX, OFFSET wrongChoice					  ;#
		CALL WRITESTRING							  ;#
		CALL CRLF									  ;#
													  ;#
		CONT:										  ;#
		JMP PROGLOOP								  ;#
													  ;#
		FIN:										  ;#
													  ;#
	EXIT											  ;#
MAIN ENDP											  ;#
;#######################################################


;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Question one procedure here
;----------------------------------------------------------
Q1 PROC uses edx ecx eax esi edi ebx
	; reading the indices of the chars to replace
	

;FirstArr BYTE 6 dup(0)
	
;SecondArr WORD 4 dup(0)
	
;finalVal DWORD 10 dup(0)
	MOV edx, OFFSET firstindex
	CALL WriteString
	
	CALL ReadInt 
	MOV esi, eax
	MOV edx, OFFSET secondindex
	CALL WriteString
	CALL ReadInt
	MOV edi, eax
	
	SUB esi , 1
	SUB edi , 1
;FirstArr BYTE 6 dup(0)
	
;SecondArr WORD 4 dup(0)
	
;finalVal DWORD 10 dup(0)

	MOV edx, OFFSET word_1
	CALL WriteString
	
	MOV AL, 30

	MOV edx, OFFSET FIRSTSTRING
	MOVZX ecx, AL
	
	CALL ReadString

	MOV edx, OFFSET SwappedWord
	CALL WriteString
	MOV edx, OFFSET FIRSTSTRING

	XCHG bh, [edx + esi] 
	XCHG bl, [edx + edi] 
	
	
	XCHG [edx + esi], bl
	XCHG [edx + edi], bh

	CALL WriteString
	CALL CRLF
	RET 

Q1 ENDP



;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Question two procedure here
;----------------------------------------------------------
Q2 PROC 
	CALL Readint
	MOV ecx, eax 
	MOV DL, 1
	MOVZX eax, DL
	MOVZX EBP, DL

		;FIRSTLOOP:
		;mov eax, 0
		;cmp ecx, eax                       
		;je OUTPUTNUM         
		;mov LOOPOUTER,ecx         


	FIRIST_LOOP:
	CALL WriteDec
	MOV EDX, OFFSET NUMBERR
    CALL WriteString
		ADD eax, 1 
		ADD eax, EBP 
	    ADD EBP, 1
	LOOP FIRIST_LOOP
		CALL CRLF
	
	RET
Q2 ENDP


;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Question three procedure here
;----------------------------------------------------------
Q3 PROC	
	
	MOV edx, OFFSET NumberOfElementsFirst
	CALL WriteString	
	CALL ReadDec 

	mov ecx , eax
	MOV edx, OFFSET InputArr1
	CALL WriteString

	mov esi, offset finalVal
	;loop1
	mov ebx, 0
	mov number , ecx
	
	mov index , 0
	
	l1:
	
		CALL ReadDec 
		mov dword ptr [finalval + ebx], eax
		
		add ebx , 4
		add index , 4
	loop l1	


	MOV edx, OFFSET NumberOfElementsSecond
	
	CALL WriteString	
	CALL ReadDec 

	mov ecx , eax
	MOV edx, OFFSET InputArr2
	CALL WriteString
	;mov index , ecx* 4
	
	
	mov ebx , index 
	;loop2

	add number, ecx
	l2:
		CALL ReadDec 
		mov dword ptr [finalval + ebx], eax
		add ebx , 4
	loop l2	

	
	
	
	
	MOV edx, OFFSET ConcateArray
	CALL WriteString
	mov edi, offset finalVal
	mov ecx , number
	mov ebx, 0
	
	
	
	
	
	
	
	l3:
		
		
		mov  eax , dword ptr[finalval + ebx]
			
		call writeDec
		MOV edx, OFFSET space
		CALL WriteString
		add ebx , 4

	loop l3
	
	call CRLF

	ret

	



Q3 ENDP


;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Question four procedure here
;----------------------------------------------------------
Q4 PROC
MOV edx, OFFSET STRGIN
MOV ecx, LENGTHOF STRGIN
CALL ReadString

MOV edx, OFFSET STRGINcorrect
MOV ecx, LENGTHOF STRGINcorrect
CALL ReadString

mov edi, OFFSET STRGIN
mov esi, OFFSET STRGINcorrect
mov ecx, eax
;mov ecx , LENGTHOF STRGIN



mov NUMBERINDEX , 0
mov INTnumber , 0 
STRING_LOOP:
	
	
	mov bh, [edi]

	mov bl, [esi]
	cmp bh , bl 
	jne END_IF
	jmp MOHMAED


	

	END_IF:
	inc NUMBERINDEX 
	
	MOHMAED:
	
	
	ADD esi, 1
	ADD edi , 1	
	loop STRING_LOOP 

mov eax, NUMBERINDEX

cmp eax ,1
je ONE


cmp eax ,0
je ZERO



cmp eax , 2
je ONE
jmp FINAL



ONE: 
MOV edx, OFFSET STRGINcorrect
CALL WriteString
mov edx, OFFSET AlmostCorrectWord
CALL WriteString
CALL CRLF
jmp ENDLOOP


ZERO:
MOV edx, OFFSET STRGINcorrect
CALL WriteString
mov edx, OFFSET CorrectWord
CALL WriteString
CALL CRLF
jmp ENDLOOP







FINAL:
MOV edx, OFFSET STRGINcorrect
CALL WriteString
mov edx, OFFSET WrongWord
CALL WriteString
CALL CRLF
jmp ENDLOOP

ENDLOOP:




	RET
Q4 ENDP


;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Question five procedure here
;----------------------------------------------------------
Q5 PROC

		mov edx, OFFSET BINARYSTRING
		call WriteString

		mov edx,OFFSET NUMBERINBINARY
		mov ecx,SIZEOF NUMBERINBINARY  
		call ReadString               
		mov SIZENUM,eax  

	
;		FIRSTLOOP:
;		mov eax, 0
;		cmp ecx, eax                       
;		je OUTPUTNUM         
;		mov LOOPOUTER,ecx         

	;	mov al, 0
	;	movzx edx, al
	;	mov eax, DecimalNumber
	;	call WriteDec              
	;	mov DecimalNumber, 0
	;	call Crlf                            
					


		mov dl, 0

		MOVZX eax,dl
		MOVZX esi,dl
		MOV edx, SIZENUM
		MOV  ecx, edx         
	
	
		FIRSTLOOP:
		mov eax, 0
		cmp ecx, eax                       
		je OUTPUTNUM         
		mov LOOPOUTER,ecx         



	;			mov al, 0
	;	movzx edx, al
	;	mov eax, DecimalNumber
	;	call WriteDec              
	;	mov DecimalNumber, 0
	;	call Crlf                            
					
	
;		mov eax,1       
;		SECONDLOOP:
;		cmp ecx,0   
;		je FINISH     

		FIRSTIF:
		mov dl ,0
		movzx eax, dl
		cmp NUMBERINBINARY[esi],'0'         
		je ESIINCREASE                  		

		

		mov ecx, SIZENUM
		sub ecx,esi
		sub ecx, 1

	
		;mov al, 0
		;movzx edx, al
		;mov eax, DecimalNumber
		;call WriteDec              
		;mov DecimalNumber, 0
		;call Crlf 


		mov eax,1       
		SECONDLOOP:
		cmp ecx,0   
		je FINISH     

			;	mov al, 0
	;	movzx edx, al
	;	mov eax, DecimalNumber
	;	call WriteDec              
	;	mov DecimalNumber, 0
	;	call Crlf                            
					
		

		mov ebx,NUMBASE
		mul ebx
		sub ecx, 1
		jmp SECONDLOOP
			

		FINISH:
		add DecimalNumber,eax
		mov eax,0
		jmp ESIINCREASE

	

		ESIINCREASE:
		inc esi
		mov ecx, LOOPOUTER 
		sub ecx, 1
		jmp FIRSTLOOP

		OUTPUTNUM:
		mov edx, OFFSET DECIMALSTRING
		call WriteString

		
		mov al, 0
		movzx edx, al
		mov eax, DecimalNumber
		call WriteDec              
		mov DecimalNumber, 0
		call Crlf                            
														   

		mov edx, 0
		mov eax, DecimalNumber
	

ret
Q5 ENDP


;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Question six procedure here
;----------------------------------------------------------

Q6 PROC

	
	RET
Q6 ENDP

 
END MAIN 