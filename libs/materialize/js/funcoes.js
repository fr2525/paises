    function critica() {

        var form = document.querySelector("#formCliente");

        var cliente = {
            cpf: form.cpf.value,
            nome: form.nome.value
        };

        if (cliente.cpf.trim() !== "") {
            if (!validaCPF(cliente.cpf)) {
                if (!ValidarCNPJ(cliente.cpf)) {
                    alert("CPF inválido");
                    //$("#cpfcnpj").setfocus();
                    return false;
                }
            }

        };
        return true;
    }

    //valida data
    function ValidaData(data) {
        exp = /\d{2}\/\d{2}\/\d{4}/
        if (!exp.test(data.value))
            return false;
    }
    

    function validaCPF(c) {
        //arquivo funcoes_cpf.js
        // validador CPF
        var i;
        var s = c;
        var c = s.substr(0, 9);
        var dv = s.substr(9, 2);
        var d1 = 0;
        var v = false;
        
        for (i = 0; i < 9; i++) {
            d1 += c.charAt(i) * (10 - i);
        }
        
        
        if (d1 == 0) {
//            alert("CPF Inválido")
            v = true;
            return false;
        }
        d1 = 11 - (d1 % 11);
        
       
        if (d1 > 9) {
            d1 = 0;
        }     
        
       
        if (dv.charAt(0) != d1) {
//            alert("CPF Inválido")
            v = true;
            return false;
        }
        
        
        d1 *= 2;
        for (i = 0; i < 9; i++) {
            d1 += c.charAt(i) * (11 - i);
        }
        d1 = 11 - (d1 % 11);
        if (d1 > 9) {
            d1 = 0;
        }    


        if (dv.charAt(1) != d1) {
//            alert("CPF Inválido")
            v = true;
            return false;
        }
        if (!v) {
//            alert(c + "nCPF Válido")
            return true;
        }
    }


    //valida o CNPJ digitado
    function ValidarCNPJ(c) {
        var cnpj = c
        var valida = new Array(6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2);
        var dig1 = new Number;
        var dig2 = new Number;

        exp = /\.|\-|\//g
        cnpj = cnpj.toString().replace(exp, "");
        var digito = new Number(eval(cnpj.charAt(12) + cnpj.charAt(13)));

        for (i = 0; i < valida.length; i++) {
            dig1 += (i > 0 ? (cnpj.charAt(i - 1) * valida[i]) : 0);
            dig2 += cnpj.charAt(i) * valida[i];
        }
        dig1 = (((dig1 % 11) < 2) ? 0 : (11 - (dig1 % 11)));
        dig2 = (((dig2 % 11) < 2) ? 0 : (11 - (dig2 % 11)));

        if (((dig1 * 10) + dig2) != digito) {
            return false;
        }
               
        return true;    

    }
