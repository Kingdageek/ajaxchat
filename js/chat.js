// So I don't litter the global namespace
let chat = {}

chat.fetchMessages = function() {
    $.ajax({
        url: "ajax/chat.php",
        type: "post",
        data: {
            method: "fetch"
        },
        success: function(data) {
            $(".chat .messages").html(data)
        }
    })
}

// To set interval for chat refresh
chat.interval = setInterval(chat.fetchMessages, 5000)

// Makes sure chats are fetched on refresh. No waiting for 5000ms
chat.fetchMessages()