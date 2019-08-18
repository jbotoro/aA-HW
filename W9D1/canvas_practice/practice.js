document.addEventListener("DOMContentLoaded", function(){

    const canvasEle = document.getElementById("mycanvas");
    canvasEle.width = 500;
    canvasEle.height = 500;
    

    const ctx = canvasEle.getContext("2d");
    ctx.fillStyle='purple';
    ctx.fillRect(0,0,150,100);
    ctx.beginPath();
    ctx.arc(50,50,10,0,2*Math.PI,true);
    ctx.strokeStyle = 'green';
    ctx.lineWidth = 15;
    ctx.stroke();
    ctx.fillStyle = 'blue';
    ctx.fill();

});
