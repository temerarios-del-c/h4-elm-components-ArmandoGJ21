module Helper exposing (..)

import Html exposing (Html, div, h1, h2, h3, h4, h5, h6, text, a)
import Html.Attributes exposing (href)


joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2


isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper list


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list


headers : String -> Html msg
headers param =
    div []
        [ h1 [] [ text param ]
        , h2 [] [ text param ]
        , h3 [] [ text param ]
        , h4 [] [ text param ]
        , h5 [] [ text param ]
        , h6 [] [ text param ]
        ]


hyperlink : String -> String -> Html msg
hyperlink url label =
    a [ href url ] [ text label ]


main : Html msg
main =
    div [] 
        [ headers "Prueba de Títulos"
        , hyperlink "https://upa.edu.mx" "Ir a la página de la UPA" 
        ]
