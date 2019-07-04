class Tabs{
    constructor(){
        this.tabs = document.querySelectorAll('.tabs-header [data-tab-toggle')
    }

    tabsAvailable(){
        return this.tabs.length > 0
    }

    start(){
        this.tabs.forEach(function(tab){
            tab.addEventListener('click', function(e){
                e.preventDefault()
                tab.closest('.tabs-header').querySelector('a.active').classList.remove('active')
                tab.classList.add('active')
                tab.closest('.tabs').querySelector('.tabs-panel.active').classList.remove('active')
                document.querySelector(tab.dataset.tabToggle).classList.add('active')
            })
        })
    }
}

document.addEventListener('turbolinks:load', function(){
    let tabs = new Tabs()
    if(tabs.tabsAvailable()){
        tabs.start()
    }
})