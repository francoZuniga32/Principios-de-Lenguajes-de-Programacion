type Telefono = (Int, Int) 


type Autor = (String, String)
type Editorial = (String, Telefono)
type Libro = (String, Int, Autor, Editorial)

imprimirTelefono :: Telefono -> String
imprimirTelefono (a, b) = show(a)++" - "++show(b)

imprimirAutor :: Autor -> String
imprimirAutor (a, b) = show(a)++", "++show(b)

imprimirEditorial :: Editorial -> String
imprimirEditorial (a, b) = show(a)++" - "++imprimirTelefono b

imprimirLibro :: Libro -> String
imprimirLibro (titulo, anio, autor, editorial) =
    "--- LIBRO ---\n" ++
    "Título: "    ++ titulo ++ "\n" ++
    "Año: "       ++ show anio ++ "\n" ++
    "Autor: "     ++ imprimirAutor autor ++ "\n" ++
    "Editorial: " ++ imprimirEditorial editorial

main :: IO()
main = do
    print(imprimirTelefono((299, 4139643)))
    let autor = ("jrr", "tokien")
    let editorial = ("Orbita", (299, 4139643)) 
    print(imprimirLibro( "El señor de los anillos", 234, autor, editorial))
