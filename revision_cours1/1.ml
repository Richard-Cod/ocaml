Rappels : 
{* Ne jamais taper #Expression mais toujours Expression *}


Fin Rappels 


{* Les types élémentaires reconnus par CAML *}
int
float
bool
char
string

{* Pour les opérations de type de int *}
3+5    3-5    3*5    3/5

{* Pour les opérations de type de float *}
3+.5   3-.5   3*.5   3/.5

TEST
3+5;;			#- : int = 8
3-5;;			#- : int = -2
3*5;;			#- : int = 15
3/5;;			#- : int = 0

3.1 +. 5.2;;	#- : float = 8.3
3.1 -. 5.2;;	#- : float = -2.1
3.1 *. 5.2;;	#- : float = 16.12
3.1 /. 5.2;;	#- : float = 0.596153846154

{* Pour les différentes bases *}
base 2 : 0b101101110 
base 8 : 0o5467
base 16 : 0xFAC81


{* Pour ce qui est commenté c'est des parties non comprises *}

(*
{* Rappel de poser des questions au prof par rapport à l'exercice *}
Exercice :
#1073741823;;      - : int = 1073741823
#1073741823+1;;    - : int = -1073741824
Daprès vous, sur combien de bits sont codés les entiers relatifs ?
*)

{* Notation des float *}

127.23 => 1.2723E02  
0.0012 => 1.2E-03 => 127.56E-5

{* Notation des char *}

`1`   `c`  `*`   `$`

{* Notation des string *}

"langage"^"Caml";;
- : string = "langage Caml"

Donc ^ permet de concatener 2 chaines de caractères

------------------------------------------------------------------------------

{* Conversions de types *}
float_of_int()    Renvoie    un float   à partir d'un int
int_of_float()	  Renvoie    un int     à partir d'un float 

int_of_char()     Renvoie    un int     à partir d'un char
char_of_int()     Renvoie    un char    à partir d'un int

int_of_string()  Renvoie     un int     à partir d'un string
string_of_int()  Renvoie     un string  à partir d'un int 

char_for_read()  Renvoie     un string  à partir d'un  char



Exercice : Etant donné un entier n et un réel positif x écrire lexpression
permettant de construire le réel de partie entière n et de même partie
décimale que x:

pour n = 7  et  x = 4.3  on doit donc avoir  7.3

Correction : 
recuperer la partie décimal de 4.3 //    4.3 -. float_of_int(int_of_float(4.3)) = 0.3

ajouter cette valeur decimal à 7   //    float_of_int(7) +. 0.3  = 7.3

final = float_of_int 7 +. (4.3-.float_of_int(int_of_float(4.3)));;


Exemples 
-2 * 3;;                 #- : int = -6

2.1 +. 4.9;;             #- : float = 7.0

sqrt 9.;;                #- : float = 3.0

10/3;;                   #- : int = 3

10 mod 3;;               #- : int = 1

2+3*5;;                  #- : int = 17

-(5+1)*(-2+5)+2*3;;      #- : int = -12



Expressions de type booléen
1=2;; 										bool = false

4<5;; 										bool = true

4.2<4.7;; 									bool = true

(1=1)=(2<1);; 								bool = false

true=1;;  true=1;;  							Cette expression est de type int,mais est utilisée avec le type bool.

true or false;;   							bool = true

true or false=(1=1) & (4<5);;   			bool = true

(1+2=2+1)& 4>5;;   							bool = false

1+2=2+1 & 4>5;;   							bool = false

1+2=2+1 or 4 > 5;;   						bool = true

1+2=2+1 > 4 > 5;;  1+2=2+1 > 4 > 5;;   			Cette expression est de type int,mais est utilisée avec le type bool.

1+2=2+1 > (4 > 5);; 						bool = true

false < true;;  							bool = true




Expressions de type caractères ou chaîne 

"salut";;				string = "salut"			

"salut" ^ "à tous";;	string = "salutà tous"

"salut" ^ " à tous";;	string = "salut à tous"

"salut" < "bonjour";;	bool = false

"salut" < "Salut";;		bool = false

"A" < "a";;				bool = true

`A` < `a`;;				bool = true

`a`;;					char = `a`

int_of_char(`a`);;		int = 97

`a`<`b`;;				bool = true

`a`<"bonjour";;         Cette expression est de type string,mais est utilisée avec le type char.

"a"<"bonjour";;    		bool = true

`a`^"près";;    	 	Cette expression est de type char,mais est utilisée avec le type string.

"a"^"près";;    		string = "après"

"12">"2";;   			bool = false



Quelques Conversions

float_of_int(4);;				float = 4.0
int_of_float(4.25);;			int = 4
int_of_float(4.85);;			int = 4
int_of_float(-4.15);;			int = -4
string_of_int(-12);;			string = "-12"
string_of_float(3.24);;			string = "3.24"
int_of_string("23");;			int = 23
float_of_string("1.356");;		float = 1.356


