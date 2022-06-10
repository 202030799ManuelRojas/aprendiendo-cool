class Main inherits IO{
    main():Object{
        menu()
    };


    menu():Object{
        let salir:Bool <- false, opcion:Int<-0 in
        while not salir loop
        {
            out_string("--------CALCULADORA DE AREAS------\n");
            out_string("1. Circulo\n2. Rectangulo\n3. Triangulo\n4. Salir");
            out_string("\nIngrese la fígura de la cual desea saber el area: ");
            opcion <- in_int();
            if opcion = 1 then menu_circulo() else
            if opcion = 2 then menu_rectangulo() else
            if opcion = 3 then menu_triangulo() else
            if opcion = 4 then salir <- true else out_string("\nPor favor, elija una opción valida\n")
            fi fi fi fi;
        }pool
    };

    area_circulo(radio:Int):Int{
        3*radio*radio
    };

    area_rectangulo(l:Int, h:Int):Int{
        l*h
    };

    area_triangulo(b:Int, h:Int):Int{
        (b*h)/2
    };

    menu_circulo():Object{
        
            let r:Int in
            {
                out_string("Ingrese el radio del circulo: ");
                r<-in_int();
                out_string("\nEl área del circulo es: ");
                out_int(area_circulo(r));
                out_string("\n");
            } 

        
    };

    menu_rectangulo():Object{
        let l:Int, h:Int in
        {
            out_string("Ingrese el largo del rectangulo: ");
            l <- in_int();
            out_string("Ingrese la altura del rectangulo: ");
            h <- in_int();
            out_string("\nEl área del rectangulo es: ");
            out_int(area_rectangulo(l,h));
            out_string("\n");
        }
    };

    menu_triangulo():Object{
        let b:Int, h:Int in
        {
            out_string("Ingrese la base del triangulo: ");
            b <- in_int();
            out_string("Ingrese la altura del triangulo: ");
            h <- in_int();
            out_string("\nEl área del triangulo es: ");
            out_int(area_triangulo(b,h));
            out_string("\n");
        }
    };

};