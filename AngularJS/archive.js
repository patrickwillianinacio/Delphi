<script  var app = angular.module ( 'ui.bootstrap.demo' , []);  
app.controller ( 'PainelPleno' , function ($ scope, $ http)  
{  
    $ http get ( "archive.txt" , 
    {  
        transformResponse: function (cnv)  
        {  
            var x2js =  novo  X2JS ();  
            var aftCnv = x2js.xml_str2json (cnv);  
            return  aftCnv;  
        }  
    }). success (function (response)  
    {  
        console.log (resposta);  
    });  
})
 
</script>