{* Installation de Caml Light *}


{* Expressions élémentaires et types de base *}

Entiers et réels
1.2+1;;                   Cette expression est de type float,mais est utilisée avec le type int.

1.2+2.3;;                 Cette expression est de type float,mais est utilisée avec le type int.

-2E-1+.2.;;               float = 1.8 

(sqrt(4.)+.2.)/.3.5;;     float = 1.14285714286

-2 * 3;;                  int = -6

2.1 +. 4.9;;              float = 7.0

sqrt 9.;;                 float = 3.0

10/3;;                    int = 3

10 mod 3;;                int = 1

2+3*5;;                   int = 17

-(5+1)*(-2+5)+2*3;;       int = -12





Booléens
1=2;;										bool = false

4<5;;										bool = true

4.2<4.7;;									bool = true

(1=1)=(2<1);;							    bool = false

true=1;;									Cette expression est de type int,mais est utilisée avec le type bool.

true or false;;								bool = true

true or false=(1=1) & (4<5);;				bool = true

(1+2=2+1)& 4>5;;							bool = false

1+2=2+1 & 4>5;;								bool = false

1+2=2+1 or 4 > 5;;							bool = true

1+2=2+1 > 4 > 5;;							Cette expression est de type int,mais est utilisée avec le type bool.

1+2=2+1 > (4 > 5);;							bool = true

false < true;;								bool = true

4 + 1< 6 & (`a`<`h` or "debut"="fin");;		bool = true



Chaînes de caractères
"salut";;					string = "salut"

"salut" ^ "à tous";;		string = "salutà tous"

"salut" ^ " à tous";;		string = "salut à tous"

"salut" < "bonjour";;		bool = false

"salut" < "Salut";;			bool = false

"A" < "a";;					bool = true

`A` < `a`;;					bool = true

`a`;;						char = `a`

int_of_char(`a`);;			int = 97

`a`<`b`;;					bool = true

`a`<"bonjour";;				Cette expression est de type string,mais est utilisée avec le type char.

"a"<"bonjour";;				bool = true

`a`^"près";;				Cette expression est de type char,mais est utilisée avec le type string.

"a"^"près";;				string = "après"

"12">"2";;					bool = false



Conversions de types


int_of_float;;									float -> int = <fun>
int_of_float(4.0);;								int = 4
int_of_float(4.25);;							int = 4
int_of_float(-4.25);;							int = -4
int_of_float(4.25e-34);;						int = 0
string_of_int(-235);;							string = "-235"
string_of_int(55e2);;							Cette expression est de type float,mais est utilisée avec le type int.
string_of_float(55e2);;							string = "5500.0"
string_of_float(-55e-2);;						string = "-0.55"
int_of_string "345";;							int = 345
int_of_string "34.5";;							#Exception non rattrapée: Failure "int_of_string"
float_of_string "34.5";;						float = 34.5
float_of_string "99999999999999999999999.9";;	float = 1e+023





Definitions globales et locales 

let x = 2 ;;					x : int = 2
let y = x+3 ;;					y : int = 5
let x = y+5 ;;					x : int = 10
let z = y*2 in x+z+y*y;;		int = 45
let x = 3 in x*x+2*x*y+4*y ;;	int = 59
let x = 1 in x=2*x ;;			bool = false
let x = 0 in x=2*x;;			bool = true



let x=5 in
	   let prod = x*x in
			   prod+prod*prod;; 		int = 650


let resultat= let x=5 in
		let prod = x*x in
				prod +prod*prod;;  		resultat : int = 650





let val= let x=3 and y=4 in
		 let x=x+y and y=x-y in
				 x*x+y*y;;				val : int = 50

let y=2 in val*val+2val*y ;;    		Cette expression n'est pas une fonction, elle ne peut être appliquée.



Expressions conditionnelles
if (1=1)
	then "salut" else "au revoir";;				string = "salut"

let x= 3 in
	if(x<0) then x else x*x;;     				int = 9

if (5>0)
	then 1 else "erreur";; 						Cette expression est de type string,mais est utilisée avec le type int.

let x=3 and y=3 in
		let y=y*x in
				if y mod 2 = 0 then "pair"
				else "impair";;					string = "impair"



