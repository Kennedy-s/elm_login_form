import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Html exposing (..)
import Http 
import Svg exposing (..)

main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }


-- Model

type alias Model =
  { username : String
  , password : String
  , login : String
  }

model : Model
model = 
  { username = ""
  , password = ""
  , login = ""
  }

init : ( Model, Cmd Msg)
init =
  ( model, Cmd.none)

-- Update
 
type Msg
    = Username  String
    | Password  String
    | Login  String




update msg model =
  case msg of
    login ->
      ( model, Cmd.none)
    

    
-- View
view : Model -> Html Msg
view model =
 Html.form [ id "login-form" ]
       [ Html.h1 [] [ Html.text "Login Form" ]
       , Html.label [ for "username-filed" ] [ Html.text "username" ]
       , input [ id "username-filed"
               , type_ "text"
               , value model.username
               ]
               []
       , label [ for "passwortd-field"] [ Html.text "password: " ]
       , input [ id "password-field"
               , type_ "password"
               , value model.password
               ]
               []
       ]


-- Subscriptions

subscriptions : Model -> Sub Msg
subscriptions model =
 Sub.none