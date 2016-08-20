// scrStringExplode(string, delimiter, setReal)

var str = argument[0],
    del = argument[1],
    len = string_length(str),
    line = "",
    let,
    ret,
    retLength = 0,
    i;
    
for (i=1;i<=len;i++){
    let = string_char_at(str, i);
    
    if (let == del) {
        if (line != "") {
            if (argument[2]){
                ret[retLength++] = real(line);
            }else{
                ret[retLength++] = line;
            }
            line = "";
        }
    }else{
        line += let;
    }
}

if (line != ""){
    if (argument[2]){
        ret[retLength++] = real(line);
    }else{
        ret[retLength++] = line;
    }
}

return ret;
