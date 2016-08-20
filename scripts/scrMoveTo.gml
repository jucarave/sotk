// scrMoveTo(xt, yt)

var xt = x + argument[0];
var yt = y + argument[1];

var xtc = x + sign(argument[0]) * 12;
var ytc = y + sign(argument[1]) * 12;

if (!collision_rectangle(x,y-8,xtc,y+8,objBlock,false,false)){
    x = xt;
}

if (!collision_rectangle(x-8,y,x+8,ytc,objBlock,false,false)){
    y = yt;
}
