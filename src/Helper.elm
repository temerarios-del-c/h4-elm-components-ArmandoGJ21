module Helper exposing (..)

import Html exposing (Html, a, div, h1, h2, h3, h4, h5, h6, text)
import Html.Attributes exposing (href)


joinWords : String -> String -> String
joinWords str1 str2 =
    str1 ++ str2


isUpperChars : List Char -> List Bool
isUpperChars chars =
    List.map Char.isUpper chars


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars chars predicate =
    List.map predicate chars


type HeaderLevel
    = H1
    | H2
    | H3
    | H4
    | H5
    | H6


headers : String -> Html msg
headers content =
    let
        renderHeader : HeaderLevel -> Html msg
        renderHeader level =
            case level of
                H1 ->
                    h1 [] [ text content ]

                H2 ->
                    h2 [] [ text content ]

                H3 ->
                    h3 [] [ text content ]

                H4 ->
                    h4 [] [ text content ]

                H5 ->
                    h5 [] [ text content ]

                H6 ->
                    h6 [] [ text content ]
    in
    div [] (List.map renderHeader [ H1, H2, H3, H4, H5, H6 ])


hyperlink : String -> String -> Html msg
hyperlink url linkText =
    a [ href url ] [ text linkText ]
