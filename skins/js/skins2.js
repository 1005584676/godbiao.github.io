//皮肤数据表

var skinsAjax = $.ajax({
    url: "http://godbiao.iok.la/skins/skins.php",
    async: false
});


if (skinsAjax.status == 0) {
    var skinsAjaxBackup = $.ajax({
        url: "skins.json",
        async: false
    });
    var skinsData = skinsAjaxBackup.responseText;

} else {
    var skinsData = skinsAjax.responseText;
}

var skins = eval("(" + skinsData + ")");
