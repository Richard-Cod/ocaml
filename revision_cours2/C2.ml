{* Plusieurs définitions dans une même requête grâce au mot-clef and *}

let id1 = exp1 and id2 = exp2 and  idp = expp


let annee=2004 ;;					int = 2004

annee ;;							int = 2004

annee + 2;;							int = 2006

let future = 2005;;					int = 2005

future = annee + 1;;				bool = true

annee_future;;					    L'identificateur annee_future n'est pas défini.

let annee_future = annee + 1;;		int = 2005

let annee = 2000;;					int = 2000

annee_future;;						int = 2005




{* Cas de définitions globales simultanées : *}

let val = 8 ;;									val : int = 8
let double = val*2 and triple=val *3 ;;			double : int = 16    	triple : int = 24
let moitie= val/2 and quart = moitie/2;;		L'identificateur moitie n'est pas défini.
moitie ;;										L'identificateur moitie n'est pas défini.




{* Definition locales *}

let x = 2;;
Dans env0   x => 2

let x=14 in x+2;;   Dans cet env locale x=14  et le resultat sera  14+2  => 16

x;;		x=2 car on est ici dans notre env globale


Exemple :

Env0
let x=1;;
x+3;;
- : int = 4


let x=2 in x+3;; Env_t  et le résultat est donc :   int = 5  car ici x=2  donc 2+3


x+3;;   x : int = 4     car x=1


L`intérêt des définitions locales est de pouvoir utiliser une liaison juste
pour le temps où on en a besoin, sans surcharger l`environnement.


let x = 2 ;;						x : int = 2
let y = x+3 ;;						y : int = 5
let x = y+5 ;;						x : int = 10
let z = y*2 in x+z+y*y;;				int = 45
let x = 3 in x*x+2*x*y+4*y ;;			int = 59
let x = 1 in x=2*x ;;					bool = false
let x = 0 in x=2*x;;					bool = true




2) Expressions utilisant des définitions locales emboîtées :
Donner la valeur de chaque expression :

let x=5 in
let prod = x*x in
prod+prod*prod;;					int = 650

let resultat= let x=5 in
let prod = x*x in
prod +prod*prod;;					resultat : int = 650

let val= let x=3 and y=4 in
let x=x+y and y=x-y in x*x+y*y;;	val : int = 50

let y=2 in val*val+2val*y ;;	Cette expression n'est pas une fonction, elle ne peut être appliquée.



3) Expressions conditionnelles :
Donner le type et la valeur de chaque expression :


if (1=1) then "salut" else "au revoir";;		string = "salut"

let x= 3 in if(x<0) then x else x*x;;			int = 9

if (5>0) then 1 else "erreur";;			Cette expression est de type string,mais est utilisée avec le type int.


let x=3 and y=3 in
	let y=y*x in
		if y mod 2 = 0 then "pair"
		else "impair";;						string = "impair"