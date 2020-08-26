<template>
          <!-- 右边分类框 -->
      <div id="right">
        <!-- 右上分类框 -->
        <div class="sub_category">
          <h2>按子分类选择</h2>
          <ul id="ul_subcategory">
            <li>
              <a href="#">香水</a>
            </li>

            <li>
              <a href="#">香氛</a>
            </li>

            <li>
              <a href="#">美妆</a>
            </li>

            <li>
              <a href="#">洗护</a>
            </li>

            <li>
              <a href="#">礼品卡</a>
            </li>

            <li>
              <a href="#">文创</a>
            </li>
          </ul>
        </div>
        
        <!-- 按品牌分类 -->
        <div class="sub_property">
          <h2>按品牌/属性选择</h2>
          <div class="attribute_bd">
            <div class="h_chooselist">
              <span>品牌：</span>
              <a class="all select" href="/search">全部</a>
              <a class href="/wenchuang">文创</a>
              <a class href="/huanglian">黄连</a>
              <a class href="/lianshi">莲识</a>
              <a class href="#">菩璞</a>
            </div>
          </div>

          <!-- 价格范围 -->
          <div class="category_search">
            <div class="category_search2">
              关键字：
              <input type="text" />
              <span class="my_span">价格范围：</span>

              <input type="text" class="category_jg" />
              -
              <input type="text" class="category_jg" />
              <span class="my_span"> 筛选：</span>
              <span>
                <input type="checkbox" name="xin" />
                <label for="xin">新品</label>
              </span>
              <button>搜索</button>
            </div>

            <div class="sequence">
              <ul>
                <li>
                  <a href="#">价格</a>
                </li>
                <li>
                  <a href="#">销量</a>
                </li>
                <li>
                  <a href="#">人气</a>
                </li>
                <li>
                  <a href="#">时间</a>
                </li>
              </ul>
              <p>
                总共有{{ 78 }}件商品,{{ 20 }}件商品为一页,共{{ 4 }}页第{{ 1 }}页
              </p>
            </div>
          </div>
        </div>
        
      </div>
</template>

<style scoped>

/* 右边分类框 */
#right {
  width: 980px;
  /* float: right; */
}
.sub_category,
.sub_property {
  border: 1px solid #ddd;
  padding:10px 10px;
}
.sub_category ul,
.sub_property ul {
  width: 958px;
  overflow: hidden;
  padding: 10px 0px;
}
.sub_category ul li {
  float: left;
  margin-right: 20px;
  height: 25px;
  line-height: 25px;
}
.sub_property {
  margin-top: 20px;
}
.sub_property a {
  display: inline-block;
  margin: 8px;
}
.category_jg {
  width: 30px;
  height: 20px;
}
.category_search{
  border-top: 2px solid #e62129;

}
.category_search2 {
  padding: 8px;
  color: #686868;
}
.category_search2 > button {
  width: 50px;
  height: 21px;
  border: 0px;
  background-color: #ff5622;
  color: #fff;
  outline: none;
  font-size: 12px;
  line-height: 1;
  margin-left: 40px;
}
.my_span,
.c_sel {
  margin-left: 30px;
}
.sequence {
  display: flex;
  position: relative;
  border-top: 1px solid #dbdbdb;
}
.sequence > ul {
  width: 264px;
  display: flex;
}
.sequence > ul > li {
  width: 66px;
}
.sequence > p {
  position: absolute;
  color: #686868;
  right: 0;
  padding-top: 20px;
}
#right a{
    text-decoration: none;
  color: #686868;

}
#right a:hover{
    color:  #ff5622;
}
</style>