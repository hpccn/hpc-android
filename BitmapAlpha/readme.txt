采用Bitmap的extractAlpha产生图片边缘光晕效果


      前几天使用一款android手机测试的时候， 
发现了应用的 shortcut 九宫格页面有一个点击效果， 
就是当点击一个应用的icon图标的时候，会在icon的周围有荧光效果， 
无论icon的形状是什么样子的都会有这样的效果,然后又想到Apidemo里面有个alphaDrawable例子 
大家可以去在回顾一下，之后我就想到了会不会是使用这个extractAlpha实现的，自己就动手写了个例子 
发现效果确实不错，分享给大家 
主要关键点 
1、设置imageview的src drawable 
2、从src drawable中抽取 bitmap的alpha（只有透明度没有颜色） 
3、使用bitmap的alpha填充一种颜色后生产新的bitmap 
4、使用新生成的bitmap做一个statelistdrawable作为imageview的backgroud 
5、这需要注意的是要跟imageview设置几个像素的padding这样才不会让src和backgroud重合 

