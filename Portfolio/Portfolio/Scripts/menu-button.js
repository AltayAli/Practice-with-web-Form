isOpened=false;
$(".menu-icon").click(()=>{
   console.log("Clickeded")
   if(!isOpened){
      $(".menu-part").show();
      setTimeout(()=>{
         $(".menu-right-part").addClass("menu-opened");
         $(".menu-left-part").addClass("menu-opened");
      },100)
   
   isOpened=true;
   }else{ 
      $(".menu-right-part").removeClass("menu-opened");
      $(".menu-left-part").removeClass("menu-opened");
      setTimeout(()=>{
      $(".menu-part").hide();
      },300);
   isOpened=false;
   }
})