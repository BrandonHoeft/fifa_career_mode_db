import streamlit as st
from components.game_form import game_form
from components.player_stats_form import player_stats_form

# Streamlit app title
st.title('FIFA Career Mode CRUD App')

# Toggle between 'Game' and 'Player Stats' forms
form_type = st.radio("Choose the type of data to insert:", ('Game', 'Player Stats'))

if form_type == 'Game':
    game_form()
elif form_type == 'Player Stats':
    player_stats_form()
