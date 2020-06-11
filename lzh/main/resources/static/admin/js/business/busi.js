//时间戳的处理
layui.define(["layer","upload"],function(exports){
    var $ = layui.jquery;
    var upload = layui.upload;
    /**
     * 选完文件后不自动上传
     */
    upload.render({
        elem: '#selectFile'
        ,url: '/admin/system/business/upload'
        ,auto: false
        ,accept: 'file'
        //,multiple: true
        ,bindAction: '#startUploadFile'
        ,done: function(res){
            layer.msg('上传成功');
            click1();
            console.log(res)
        }
    });


});


function click1() {
    document.getElementById('ifrPage1').innerHTML = "<iframe src='table'"+"style='width: 99%;height: 800px;padding: 10px'"+"></iframe>";
};
function click2() {

    document.getElementById('ifrPage1').innerHTML = "<iframe src='currentEmployees'"+"style='width: 99%;height: 800px;padding: 10px' "+"></iframe>";
};
function click3() {
    document.getElementById('ifrPage1').innerHTML = "<iframe src='resignedEmployees'"+"style='width: 99%;height: 800px;padding: 10px'"+"></iframe>";
};
