import random

anime_database = {
    'Attack on Titan': ['Action', 'Fantasy'],
    'My Hero Academia': ['Action', 'Super Power'],
    'Death Note': ['Mystery', 'Psychological', 'Supernatural'],
    'Sword Art Online': ['Action', 'Adventure', 'Fantasy'],
    'One Punch Man': ['Action', 'Comedy', 'Super Power'],
}

def recommend_anime(user_genre):
    matching_anime = [anime for anime, genres in anime_database.items() if user_genre in genres]
    
    if matching_anime:
        return random.choice(matching_anime)
    else:
        return "Sorry, no anime found for that genre. Try another one!"

print("Anime Recommendation Chatbot: Enter 'exit' to quit.")
while True:
    user_input = input("Enter a genre to get anime recommendations: ")
    
    if user_input.lower() == 'exit':
        print("Thanks for using the Anime Recommendation Chatbot. Goodbye!")
        break
    
    recommendation = recommend_anime(user_input.capitalize())
    print("Chatbot: " + recommendation)
