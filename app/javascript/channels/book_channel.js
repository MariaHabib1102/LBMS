import consumer from "./consumer"

document.addEventListener('turbolinks:load', () => {
  const bookChannel = consumer.subscriptions.create("BookChannel", {
    received(data) {
      console.log(data)
      // Add your handling of received data here
    }
  })
})
