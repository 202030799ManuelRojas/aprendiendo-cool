class Main inherits IO{

    main():Object{
        {
            --out_string("Ingrese los grados celsius: ");

            let celsius:Int <- ~50 in
            {
                while celsius <= 150 loop 
                {
                    out_int(celsius);
                    out_string("\t");
                    out_int(toFarenheit(celsius));
                    out_string("\n");
                    celsius <- celsius + 10;
                }
                pool;
            };
        }
    };

    toFarenheit(x:Int):Int{
        (x*9/5)+(32)
    };
};