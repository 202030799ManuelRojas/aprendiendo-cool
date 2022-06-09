class Main inherits IO{

    main():Object{
        {
            out_string("Ingrese los grados celsius: ");
            let celsius:Int <- in_int() in 
            {
                out_int(celsius);
                out_string("°C equivalen a ");
                out_int(toFarenheit(celsius));
                out_string(" °F\n");
            };
        }
    };

    toFarenheit(x:Int):Int{
        (x*9/5)+(32)
    };
};