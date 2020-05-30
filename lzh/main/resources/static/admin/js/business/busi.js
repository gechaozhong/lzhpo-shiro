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
            console.log(res)
        }
    });


});