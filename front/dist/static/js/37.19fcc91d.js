"use strict";(self["webpackChunkfront"]=self["webpackChunkfront"]||[]).push([[37],{6142:function(e,a,t){t.d(a,{EY:function(){return o},T:function(){return i},s8:function(){return n},uf:function(){return c}});var l=t(9470);function c(e){return(0,l.J)("/h/getHComicList",e)}function o(e){return(0,l.J)("/h/getHComicById",e)}function n(e){return(0,l.J)("/h/getHComicTagList",e)}function i(e){return(0,l.b)("/h/addHComicTag",e)}},9470:function(e,a,t){t.d(a,{J:function(){return c},b:function(){return o}});var l=t(8355);function c(e,a){return(0,l.A)({method:"get",url:`${e}`,params:a})}function o(e,a){return(0,l.A)({method:"post",url:`${e}`,data:a,headers:{"Content-Type":"application/json"}})}},37:function(e,a,t){t.r(a),t.d(a,{default:function(){return H}});var l=t(6768),c=t(144),o=t(4232),n=t(8355),i=t(6142),s=t(1387);const r={class:"HfilesComic"},u={class:"HfilesComic-search-div"},d={class:"HfilesComic-card-content"},f={class:"HfilesComic-card-details"},m={class:"HfilesComic-card-name-text"},g={class:"HfilesComic-card-tag-text"},p={class:"HfilesComic-card-tag-text"},v={class:"HfilesComic-card-tags-div"},b=(0,l.Lk)("span",{class:"HfilesComic-card-tag-text"},"TAGS:",-1),C={class:"HfilesComic-card-tag-text"},k={class:"HfilesComic-pagination-div"};var y=(0,l.pM)({__name:"HfilesComic",setup(e){const a=(0,s.rd)();let t=(0,c.KR)([]),y=(0,c.KR)(window.innerHeight-225+"px"),h=(0,c.KR)(),H=(0,c.KR)("0"),T=(0,c.KR)("0"),F=(0,c.KR)(1),_=(0,c.KR)(0);(0,l.sV)((()=>{x()}));const x=async()=>{try{const e={searchInput:h.value,mosaicSelect:H.value,categorySelect:T.value,page:F.value},a=await(0,i.uf)(e);_.value=a.data.total,t.value=a.data.hcomicList,t.value.forEach(((e,a)=>{1==e.mosaic?(e.mosaicType="success",e.mosaicText="无修正"):2==e.mosaic?(e.mosaicType="warning",e.mosaicText="有修正"):(e.mosaicType="info",e.mosaicText="修正类别错误"),1==e.category?(e.categoryType="danger",e.categoryText="短篇"):2==e.category?(e.categoryType="primary",e.categoryText="单本"):(e.mosaicType="warning",e.mosaicText="分类类别错误"),e.background="",e.comicCover=n.A.defaults.baseURL+"/hComic/"+e.fileName+"/00001.webp"}))}catch(e){console.error(e)}},R=e=>{t.value[e].background="border-width: 5px;"},w=e=>{t.value[e].background=""},L=e=>{const l=a.resolve({name:"HfilesComicReader",path:"/HfilesComicReader",query:{comic:t.value[e].id}});window.open(l.href,"_blank")},V=()=>{y.value=window.innerHeight-225+"px"};window.addEventListener("resize",V);const K=()=>{x()},E=()=>{x()},M=()=>{x()};return(e,a)=>{const n=(0,l.g2)("search"),i=(0,l.g2)("el-icon"),s=(0,l.g2)("el-button"),x=(0,l.g2)("el-input"),V=(0,l.g2)("el-col"),U=(0,l.g2)("el-option"),X=(0,l.g2)("el-select"),A=(0,l.g2)("el-row"),I=(0,l.g2)("el-image"),J=(0,l.g2)("el-tag"),z=(0,l.g2)("el-card"),S=(0,l.g2)("el-scrollbar"),W=(0,l.g2)("el-pagination");return(0,l.uX)(),(0,l.CE)("div",r,[(0,l.Lk)("div",u,[(0,l.bF)(A,null,{default:(0,l.k6)((()=>[(0,l.bF)(V,{span:12},{default:(0,l.k6)((()=>[(0,l.bF)(x,{modelValue:(0,c.R1)(h),"onUpdate:modelValue":a[0]||(a[0]=e=>(0,c.i9)(h)?h.value=e:h=e),placeholder:"搜索"},{append:(0,l.k6)((()=>[(0,l.bF)(s,{onClick:K},{default:(0,l.k6)((()=>[(0,l.bF)(i,null,{default:(0,l.k6)((()=>[(0,l.bF)(n)])),_:1})])),_:1})])),_:1},8,["modelValue"])])),_:1}),(0,l.bF)(V,{span:12},{default:(0,l.k6)((()=>[(0,l.bF)(X,{modelValue:(0,c.R1)(H),"onUpdate:modelValue":a[1]||(a[1]=e=>(0,c.i9)(H)?H.value=e:H=e),class:"HfilesComic-search-select",onChange:M},{default:(0,l.k6)((()=>[(0,l.bF)(U,{label:"所有修正",value:"0"}),(0,l.bF)(U,{label:"无修正",value:"1"}),(0,l.bF)(U,{label:"有修正",value:"2"})])),_:1},8,["modelValue"]),(0,l.bF)(X,{modelValue:(0,c.R1)(T),"onUpdate:modelValue":a[2]||(a[2]=e=>(0,c.i9)(T)?T.value=e:T=e),class:"HfilesComic-search-select",onChange:M},{default:(0,l.k6)((()=>[(0,l.bF)(U,{label:"所有类型",value:"0"}),(0,l.bF)(U,{label:"短篇",value:"1"}),(0,l.bF)(U,{label:"单本",value:"2"})])),_:1},8,["modelValue"])])),_:1})])),_:1})]),(0,l.bF)(S,{height:(0,c.R1)(y)},{default:(0,l.k6)((()=>[((0,l.uX)(!0),(0,l.CE)(l.FK,null,(0,l.pI)((0,c.R1)(t),((e,a)=>((0,l.uX)(),(0,l.Wv)(z,{key:a,onMouseover:e=>R(a),onMouseleave:e=>w(a),onClick:e=>L(a),style:(0,o.Tr)(e.background),class:"HfilesComic-card"},{default:(0,l.k6)((()=>[(0,l.Lk)("div",d,[(0,l.bF)(I,{src:e.comicCover,class:"HfilesComic-card-image",fit:"contain"},null,8,["src"]),(0,l.Lk)("div",f,[(0,l.Lk)("span",m,(0,o.v_)(e.name),1),(0,l.bF)(J,{class:"HfilesComic-card-mosaic-text",effect:"plain",type:e.mosaicType},{default:(0,l.k6)((()=>[(0,l.Lk)("span",g,(0,o.v_)(e.mosaicText),1)])),_:2},1032,["type"]),(0,l.bF)(J,{class:"HfilesComic-card-category-text",effect:"plain",type:e.categoryType,round:""},{default:(0,l.k6)((()=>[(0,l.Lk)("span",p,(0,o.v_)(e.categoryText),1)])),_:2},1032,["type"]),(0,l.Lk)("div",v,[b,((0,l.uX)(!0),(0,l.CE)(l.FK,null,(0,l.pI)(e.hcomicTagList,((e,a)=>((0,l.uX)(),(0,l.Wv)(J,{key:a,class:"HfilesComic-card-tags",effect:"dark",type:"info",size:"small"},{default:(0,l.k6)((()=>[(0,l.Lk)("span",C,(0,o.v_)(e.name),1)])),_:2},1024)))),128))])])])])),_:2},1032,["onMouseover","onMouseleave","onClick","style"])))),128))])),_:1},8,["height"]),(0,l.Lk)("div",k,[(0,l.bF)(W,{layout:"prev, pager, next","current-page":(0,c.R1)(F),"onUpdate:currentPage":a[3]||(a[3]=e=>(0,c.i9)(F)?F.value=e:F=e),onCurrentChange:a[4]||(a[4]=e=>E()),"page-size":20,total:(0,c.R1)(_),"pager-count":5,background:""},null,8,["current-page","total"])])])}}});const h=y;var H=h}}]);
//# sourceMappingURL=37.19fcc91d.js.map