//allow for javascript event listner in Rails application
document.addEventListener("DOMContentLoaded", function(){
    // adds a secret password for new users 
        document.getElementById('auth').addEventListener('input', function(e){
            if(e.target.value === "newmemberplanthaus"){
                document.getElementById("new-user-actions").innerHTML = '<button type="submit">Submit</button>'
            }else{
            }
        })   
})