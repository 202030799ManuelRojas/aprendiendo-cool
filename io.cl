class Main{
    io:IO <- new IO;
    nombre: String;
    edad: Int;
    main():Object{
        {
        io.out_string("Ingrese su nombre: ");
        nombre <- io.in_string();
        io.out_string("Ingrese su edad: ");
        edad <- io.in_int();

        io.out_string(nombre.concat(" tendrá "));
        io.out_int(edad);
        io.out_string(" años al graduarse\n");
        }

    };
};