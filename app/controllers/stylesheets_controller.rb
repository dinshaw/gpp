## /* =Colors
## -----------------------------------------------------------------------------
## dark red bg - 6a2222
## tool bar yellow bg & nav text & link text - fffae6
## 
## TEXT
## header - fff
## black text - 464545
## red bg accent & header text - 461616
## light red link & nav highlight- ae3939
## white text - fefefe
## 
## NAV
## sub nav - 644520
## sub nav selected - 876b48
## selecteed nav top border brown = 7f5829
## selected nav bottom border = 583d1c
## 


class StylesheetsController < ApplicationController
#  caches_page :games_people_play
  layout false

  def games_people_play
    @dark_red = "#6a2222"
    @yellow = "#fffae6"
    respond_to do |format|
      format.css do
        render
      end # end format.css
    end
  end
end
