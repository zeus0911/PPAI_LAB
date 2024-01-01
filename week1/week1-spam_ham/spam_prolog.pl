spam_word("buy now").
spam_word("million dollars").
spam_word("free").
spam_word("cash prize").
spam_word("win").
spam_word("money").
spam_word("lottery").

spam_or_not(Text) :-
    spam_word(Word),
    sub_atom(Text, _, _, _, Word).

test_email(Text) :-
    is_spam(Text),
    write("This email is likely a spam").
test_email(_) :-
    write("This email is not a spam").

:- initialization(test_email('get a million dollars now!')).

:- initialization(test_email('hello, this is a legitimate email.')).

:- halt.
