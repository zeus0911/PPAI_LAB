def is_spam_or_ham(email_text):
    spam_words = ["buy", "now", "limited", "offer", "discount", "click", "money", "free", "guarantee"]

    email_text = email_text.lower()

    for word in spam_words:
        if word in email_text:
            return "SPAM"
    return "HAM"

email_text = "Congratulatons!!! Tapaile Iphone ma 90% discount paaunu vako xa!!! Aafno bank detail dinuhos"
result = is_spam_or_ham(email_text)
print("Email is:", result)
