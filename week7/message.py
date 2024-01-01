class User:
    def __init__(self, username):
        self.username = username
        self.messages = []

    def send_message(self, message, recipient):
        new_message = Message(message, self, recipient)
        recipient.receive_message(new_message)
        self.messages.append(new_message)

    def receive_message(self, message):
        self.messages.append(message)


class Message:
    def __init__(self, content, sender, recipient):
        self.content = content
        self.sender = sender
        self.recipient = recipient
        self.timestamp = None  

    def send(self):
        self.timestamp = get_current_timestamp()
        

def get_current_timestamp():
    pass


'''
Encapsulation:

The User class encapsulates the attributes username and messages along with methods send_message and receive_message. The messages attribute is a list containing instances of the Message class.
The Message class encapsulates content, sender, recipient, and timestamp. The send method is used to set the timestamp when the message is sent.
The get_current_timestamp function is encapsulated outside the classes, providing a clear separation of concerns.

Explanation of Encapsulation:
The User class hides the implementation details of how messages are stored or sent. It provides a clean and simple interface (send_message and receive_message) for users to interact with the messaging system.
The Message class encapsulates the details of a message, and the timestamp is set internally when the message is sent, abstracting away the complexity from the user.
Encapsulation helps in creating modular and maintainable code. If there's a need to change the internal representation of messages or add additional features, the changes can be localized within the classes without affecting the rest of the code.
'''