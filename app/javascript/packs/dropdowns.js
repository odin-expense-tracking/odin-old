class Dropdown{
    constructor(){
        this.dropdowns = document.querySelectorAll('.dropdown [data-toggle]')
    }

    dropdownsAvailable(){
        return this.dropdowns.length > 0;
    }

    start(){
        this.dropdowns.forEach(function(dropdown){
            dropdown.addEventListener('click', function(e){
                e.preventDefault()
                dropdown.parentElement.querySelector(dropdown.dataset.toggle).classList.toggle('active')
            })
        })
    }
}
document.addEventListener('turbolinks:load', function(){
    let dropdowns = new Dropdown()
    if (dropdowns.dropdownsAvailable()){
        dropdowns.start()
    }
})