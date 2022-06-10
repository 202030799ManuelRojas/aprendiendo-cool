class Main inherits IO{

    suma:Int <- 0;
    resta:Int <- 1;
    multiplicacion:Int <- 2;
    division:Int <- 3;

    main():Object{
        --if str < 0 then out_string("no") else out_string("si") fi
        {
            out_int("1235".length());
            out_string(" tamaño\n\n");
            out_int(string_to_int("1235"));
            out_string("\n");

        }
    };

    (*
    analizar_cadena(cadena:String):String{
        let i:Int <- 0, operator:Int <- ~1 in
        {
        }
    };
    *)

    string_to_int(string:String):Int{
        let i:Int <- string.length()-1, num:Int <- 0, acumulado:Int <- 1, aux:Int <- ~1 in 
        {
            while not (i < 0) loop 
            {
                --out_string(string.substr(i,1));
                --out_string("\n");
                aux <- char_to_int(string.substr(i,1));
                num <- num + (aux*acumulado);
                i <- i-1;
                acumulado <- acumulado*10; 
            }pool;
            num;
        }

    };

    sumar(x:Int, y:Int):Int{
        x+y
    };

    restar(x:Int, y:Int):Int{
        x-y
    };

    multiplicar(x:Int, y:Int):Int{
        x*y
    };

    dividir(x:Int, y:Int):Int{
        if y = 0 then 0 else x/y fi
    };

    is_whitespace(char: String): Bool{
        if char = " " then true else false fi
    };

    char_to_operator(char:String):Int{
            if char = "+" then 0
            else if char = "-" then 1
            else if char = "*" then 2
            else if char = "/" then 3
            else ~1
            fi fi fi fi
    };

    char_to_int(char : String) : Int {
	    if char = "0" then 0 else
	    if char = "1" then 1 else
	    if char = "2" then 2 else
        if char = "3" then 3 else
        if char = "4" then 4 else
        if char = "5" then 5 else
        if char = "6" then 6 else
        if char = "7" then 7 else
        if char = "8" then 8 else
        if char = "9" then 9 else
        {abort(); ~1;}
        fi fi fi fi fi fi fi fi fi fi
     };
};