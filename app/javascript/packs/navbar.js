class Navbar{
    constructor(){
        this.drawer_toggle = document.querySelectorAll('.drawer-menu-toggle')
        this.drawer_obfuscator = document.querySelectorAll('.drawer-obfuscator')
        this.mobile_menu = document.querySelectorAll('.mobile-toggle')
    }

    navbarAvailable(){
        return true;
    }

    start(){
        if(this.drawer_toggle){
            this.drawer_toggle.forEach(function(toggler){
                toggler.addEventListener('click', function(e){
                    e.preventDefault();
                    document.getElementById(toggler.dataset.menu).classList.toggle('active')
                    document.getElementById(toggler.dataset.obfuscator).classList.toggle('active')
                })
            })
        }
        if(this.drawer_obfuscator){
            this.drawer_obfuscator.forEach(function(obfuscator){
                obfuscator.addEventListener('click', function(e){
                    e.preventDefault();
                    document.getElementById(obfuscator.dataset.menu).classList.toggle('active')
                    document.getElementById(obfuscator.dataset.obfuscator).classList.toggle('active')
                })
            })
        }
        if(this.mobile_menu){
            this.mobile_menu.forEach(function(mobile_menu){
                mobile_menu.addEventListener('click', function(e){
                    e.preventDefault()
                    mobile_menu.parentElement.querySelector('ul').classList.toggle('mobile-menu')
                })
            })
        }
    }
}
document.addEventListener('turbolinks:load', function(){
    let navbar = new Navbar()
    if (navbar.navbarAvailable()){
        navbar.start()
    }
})