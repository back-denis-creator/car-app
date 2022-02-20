"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[459],{1590:(n,r,e)=>{e.d(r,{Z:()=>i});var t=e(4015),a=e.n(t),c=e(3645),l=e.n(c)()(a());l.push([n.id,".picture[data-v-f31badc2]{border-radius:100px;max-height:100px;max-width:100px}.table[data-v-f31badc2]{text-align:center;vertical-align:inherit}.card-title[data-v-f31badc2]{margin-bottom:25px}","",{version:3,sources:["webpack://./resources/js/components/Cars.vue"],names:[],mappings:"AA8DI,0BAGI,mBAAoB,CADpB,gBAAiB,CADjB,eAGJ,CACA,wBACI,iBAAkB,CAClB,sBACJ,CACA,6BACI,kBACJ",sourcesContent:['<template>\n    <div class="row row-cols-1 row-cols-md-3 g-4">\n        <div class="col" v-for="car in cars" :key="car.id">\n            <div class="card shadow p-3 mb-5 bg-white rounded">\n                <router-link :to="{ name: \'car\', params: { id: car.id }}" class="text-center p-2">\n                    <img class="picture car-img-top" :src="car.image" width="100" height="100" alt="lorem">\n                </router-link>\n                <div class="card-body">\n                    <h5 class="card-title">\n                        <router-link :to="{ name: \'car\', params: { id: car.id }}">{{ car.name }}</router-link>\n                    </h5>\n                    <div class="col">\n                        <div class="row">\n                            <div class="col">\n                                <p>Price: </p>\n                                <p>Mark: </p>\n                                <p>Model: </p>\n                                <p>Volume: </p>\n                                <p>Fuel: </p>\n                                <p>Year: </p>\n                                <p>Country: </p>\n                            </div>\n                            <div class="col">\n                                <div class="text-end">\n                                    <p><b>{{ car.price }}</b></p>\n                                    <p><b>{{ car.manufacturer }}</b></p>\n                                    <p><b>{{ car.mark }}</b></p>\n                                    <p><b>{{ car.engine_capacity }}</b></p>\n                                    <p><b>{{ car.fuel }}</b></p>\n                                    <p><b>{{ car.year }}</b></p>\n                                    <p><b>{{ car.country }}</b></p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</template>\n<script>\nimport { mapActions, mapGetters } from \'vuex\';\n\nexport default {\n    name: \'cars\',\n    computed: {\n        ...mapGetters({\n            cars: "car/cars"\n        })\n    },\n    methods: {\n        ...mapActions({\n            getCars: "car/getCars"\n        }),\n    },\n    mounted() {\n        this.getCars();\n    }\n}\n<\/script>\n\n<style scoped>\n    .picture {\n        max-width: 100px;\n        max-height: 100px;\n        border-radius: 100px;\n    }\n    .table {\n        text-align: center;\n        vertical-align: inherit;\n    }\n    .card-title {\n        margin-bottom: 25px;\n    }\n</style>\n'],sourceRoot:""}]);const i=l},4459:(n,r,e)=>{e.r(r),e.d(r,{default:()=>k});var t=e(6252),a=e(3577),c={class:"row row-cols-1 row-cols-md-3 g-4"},l={class:"card shadow p-3 mb-5 bg-white rounded"},i=["src"],s={class:"card-body"},o={class:"card-title"},p={class:"col"},u={class:"row"},d=function(n){return(0,t.dD)("data-v-f31badc2"),n=n(),(0,t.Cn)(),n}((function(){return(0,t._)("div",{class:"col"},[(0,t._)("p",null,"Price: "),(0,t._)("p",null,"Mark: "),(0,t._)("p",null,"Model: "),(0,t._)("p",null,"Volume: "),(0,t._)("p",null,"Fuel: "),(0,t._)("p",null,"Year: "),(0,t._)("p",null,"Country: ")],-1)})),m={class:"col"},b={class:"text-end"};var v=e(894);function g(n,r){var e=Object.keys(n);if(Object.getOwnPropertySymbols){var t=Object.getOwnPropertySymbols(n);r&&(t=t.filter((function(r){return Object.getOwnPropertyDescriptor(n,r).enumerable}))),e.push.apply(e,t)}return e}function w(n){for(var r=1;r<arguments.length;r++){var e=null!=arguments[r]?arguments[r]:{};r%2?g(Object(e),!0).forEach((function(r){f(n,r,e[r])})):Object.getOwnPropertyDescriptors?Object.defineProperties(n,Object.getOwnPropertyDescriptors(e)):g(Object(e)).forEach((function(r){Object.defineProperty(n,r,Object.getOwnPropertyDescriptor(e,r))}))}return n}function f(n,r,e){return r in n?Object.defineProperty(n,r,{value:e,enumerable:!0,configurable:!0,writable:!0}):n[r]=e,n}const _={name:"cars",computed:w({},(0,v.Se)({cars:"car/cars"})),methods:w({},(0,v.nv)({getCars:"car/getCars"})),mounted:function(){this.getCars()}};var h=e(3379),y=e.n(h),C=e(1590),A={insert:"head",singleton:!1};y()(C.Z,A);C.Z.locals;const k=(0,e(3744).Z)(_,[["render",function(n,r,e,v,g,w){var f=(0,t.up)("router-link");return(0,t.wg)(),(0,t.iD)("div",c,[((0,t.wg)(!0),(0,t.iD)(t.HY,null,(0,t.Ko)(n.cars,(function(n){return(0,t.wg)(),(0,t.iD)("div",{class:"col",key:n.id},[(0,t._)("div",l,[(0,t.Wm)(f,{to:{name:"car",params:{id:n.id}},class:"text-center p-2"},{default:(0,t.w5)((function(){return[(0,t._)("img",{class:"picture car-img-top",src:n.image,width:"100",height:"100",alt:"lorem"},null,8,i)]})),_:2},1032,["to"]),(0,t._)("div",s,[(0,t._)("h5",o,[(0,t.Wm)(f,{to:{name:"car",params:{id:n.id}}},{default:(0,t.w5)((function(){return[(0,t.Uk)((0,a.zw)(n.name),1)]})),_:2},1032,["to"])]),(0,t._)("div",p,[(0,t._)("div",u,[d,(0,t._)("div",m,[(0,t._)("div",b,[(0,t._)("p",null,[(0,t._)("b",null,(0,a.zw)(n.price),1)]),(0,t._)("p",null,[(0,t._)("b",null,(0,a.zw)(n.manufacturer),1)]),(0,t._)("p",null,[(0,t._)("b",null,(0,a.zw)(n.mark),1)]),(0,t._)("p",null,[(0,t._)("b",null,(0,a.zw)(n.engine_capacity),1)]),(0,t._)("p",null,[(0,t._)("b",null,(0,a.zw)(n.fuel),1)]),(0,t._)("p",null,[(0,t._)("b",null,(0,a.zw)(n.year),1)]),(0,t._)("p",null,[(0,t._)("b",null,(0,a.zw)(n.country),1)])])])])])])])])})),128))])}],["__scopeId","data-v-f31badc2"]])}}]);
//# sourceMappingURL=459.js.map