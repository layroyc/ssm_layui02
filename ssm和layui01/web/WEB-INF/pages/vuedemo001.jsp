<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/9/15
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>

<html>
<head>
    <title>第一个 Vue demo</title>
</head>
<body>
    <div>
        学习 插值表达式{{}}
        Vue 常用在 单个页面项目中，什么叫做单个页面项目，常用于手机移动端，指的是 整个项目 只有1个 页面。
        通过 锚点  来 跳转 ，没有a ，这个锚点的跳转叫做路由
        单个页面项目的 优缺点
        优点：都是HTML 代码运行流畅，可以 有很多组件 可以重复使用
        缺点：不利于seo 百度的收录
    </div>

    <h1>讲解 jquery 和 我们的 Vue 的不同</h1>
    <div>
        jquery: 他是 dom 驱动的，所有看到的页面 都要 一行一行的把 代码 写出来，不是自动的， 是手动的
        <h2 id="jq-helloWorld">
            <%--对比一下，在div中 插入数据  你好，世界--%>

        </h2>
    </div>
    <div id="app">
        vue 因为是单页面的，所以必须只有1个 根标签。 以上h1 和 div 都不归 Vue负责<br>
        <h2>
            {{sayHello}}<br>    <%--{{是插值表达式}}--%>
            {{sayEating}}<br>
            {{lightLine}}<br>
        </h2>
    </div>
<script>
    $(function () {
        //使用jquery

        //jq的思想，找到同名称是 id xx 的DOM，给他添加数据
        //如果我想改变 显示效果，改成你好，王源， 需要改变jq的代码
        //那么比较频繁，因为 你好世界，没有存统一的变量的地方
        //var str="你好，王源"
        //jquery 的缺点，数据没有同意的地方存储
        $("#jq-helloWorld").text("你好，世界")


        //学习 Vue ，Vue和java很像很像
        var vm = new Vue({
            //new vue()括弧中，小括弧中，一般放的都是{}，而大括号就是json，对象，k-v结构
            //这个大括弧中， 放的就是vue的选项，选项在vue官网可以看到有几个？
            //作业：写出vue选项的 思维导图！！！
            el:'#app',    //把HTML中的 div id 为APP的dom元素 作为了 挂载点
                        //什么叫做挂载点：vue 是以数据驱动的，new vue 中都是诞生数据
                        //有了数据，就需要一个dom元素，显示数据， 张三是元数据。
            data:{
                sayHello:'你好，世界',
                sayEating:'加油，加油',
                lightLine:'发射'

            }
        });
    });
</script>
</body>
</html>
