class Card {
    constructor() {
        this.cards = document.querySelectorAll('.card')
        this.card_search = document.querySelectorAll('.card-menu .search')
    }

    cardsAvailable() {
        return this.cards.length > 0
    }

    start() {
        if (this.card_search) {
            this.card_search.forEach(function (search) {
                search.addEventListener('click', function (e) {
                    e.preventDefault()
                    search.closest('.card').querySelector('.card-table-search').classList.toggle('active')
                })
            })
        }
    }
}
document.addEventListener('turbolinks:load', function(){
    let cards = new Card()
    if (cards.cardsAvailable()){
        cards.start()
    }
})