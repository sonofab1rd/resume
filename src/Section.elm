module Section exposing (section)

import Html exposing (Html, div, h1, li, p, text, ul)


ptext : String -> Html msg
ptext sectionName =
    case sectionName of
        "Experience" ->
            p [] [ text "OpenPracticeSolutions | Stow, OH | Jun 2015 - Present" ]

        "Languages" ->
            p [] [ text "Java, JavaScript, HTML, CSS, TypeScript" ]

        "Frameworks/Libraries" ->
            p [] [ text "React, Hapi HL7, OpenCSV, Univocity CSV, Lombok, Mapstruct, JQuery, JSch, Tailwind CSS" ]

        "Database" ->
            p [] [ text "MySQL" ]

        "Software" ->
            p [] [ text "Git, Jira, Docker, Maven, NPM, Visidata" ]

        "Extracurriculars" ->
            ul []
                [ li [] [ text "Avid Drummer and Vocalist" ]
                , li [] [ text "Regular performer with Thrive" ]
                ]

        "Education" ->
            p [] [ text "KENT STATE UNIVERSITY | Kent, OH\nMaster of Science (M.S.) Digital Science (Dec 2015)\nTeaching Assistant | Applications Architecture Fall 2015\n\nUNIVERSITY OF TOLEDO\nToledo, OH\nBachelor of Arts (B.A.) Education (Dec 2001)\n" ]

        _ ->
            p [] [ text "test" ]


section : String -> Html msg
section description =
    div []
        [ h1 [] [ text description ]
        , ptext description
        ]
