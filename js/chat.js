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

chat.throwMessage = function(message) {
    // Save this message if it's not empty
    if ($.trim(message) != "") {
        $.ajax({
            url: "ajax.chat.php",
            type: "post",
            data: {
                method: "throw",
                message: message
            },
            success: function(data) {
                chat.fetchMessages()
            }
        })
    }
}

// variable for chat entry area
chat.entry = $(".chat .entry")

// Bind eventhandler to 'enter' key in chat.entry
chat.entry.bind('keydown', function(e) {
    // Post message if enter key is pressed
    if (e.keyCode === 13 && !e.shiftKey) {
        chat.throwMessage(e.target.val())
        $(this).val("")
        e.preventDefault() // basically 'enter' shouldn't move the cursor to next line
    }
})

// To set interval for chat refresh
chat.interval = setInterval(chat.fetchMessages, 5000)

// Makes sure chats are fetched on refresh. No waiting for 5000ms
chat.fetchMessages()