// scrStringExplodeReal(string, delimiter)

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
            ret[retLength++] = real(line);
            line = "";
        }
    }else{
        line += let;
    }
}

if (line != ""){
    ret[retLength++] = real(line);
}

return ret;
