var r=Object.defineProperty;var i=Object.getOwnPropertyDescriptor;var l=Object.getOwnPropertyNames;var p=Object.prototype.hasOwnProperty;var s=o=>r(o,"__esModule",{value:!0});var u=(o,a)=>{for(var n in a)r(o,n,{get:a[n],enumerable:!0})},w=(o,a,n,c)=>{if(a&&typeof a=="object"||typeof a=="function")for(let t of l(a))!p.call(o,t)&&(n||t!=="default")&&r(o,t,{get:()=>a[t],enumerable:!(c=i(a,t))||c.enumerable});return o};var d=(o=>(a,n)=>o&&o.get(a)||(n=w(s({}),a,1),o&&o.set(a,n),n))(typeof WeakMap!="undefined"?new WeakMap:0);var m={};u(m,{default:()=>f});var e=require("@raycast/api"),f=async()=>{(0,e.open)("cleanshot://capture-window"),await(0,e.closeMainWindow)()};module.exports=d(m);0&&(module.exports={});