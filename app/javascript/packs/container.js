//allow for javascript event listner in Rails application
document.addEventListener("DOMContentLoaded", function(){
        document.getElementById('plant-name-pot').addEventListener('change', function(e){
            e.preventDefault()
            console.log(e.target.value)
            document.getElementById('generated-plants').innerHTML=(`<form>${e.target.value}</form>`)

        })
}) 