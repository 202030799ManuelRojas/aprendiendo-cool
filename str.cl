(*
    Escribir un programa que le pida al usuario 2 strings y verifiquen si el segundo
    string está contenido en el primero


*)
class Main inherits IO{
    main():Object{
        if verificar_strings("hola tremendo", "tremendo") then out_string("Si la contiene\n") else out_string("NO la contiene\n") fi
    };

    verificar_strings(string_1:String, string_2:String):Bool{
        if string_1.length() < string_2.length() then false else 
        {
            let i:Int <- 0, is_contenida:Bool <- false in 
            {
            while (i+string_2.length()) <= string_1.length() loop 
            {
                out_string(string_1.substr(i,string_2.length()).concat("\n"));
                if string_2 = string_1.substr(i,string_2.length()) then {is_contenida<-true; i<-string_1.length();} else false fi;
                i<-i+1;
            }pool;
            is_contenida;
            };
        }fi
    };
};