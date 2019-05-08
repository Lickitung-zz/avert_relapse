import Vue from 'vue';
import App from './App.vue';
import router from './router';
import axios from "axios";
import Vuesax from 'vuesax';
import 'vuesax/dist/vuesax.css'; //Vuesax styles
import 'material-icons/iconfont/material-icons.css';
Vue.use(Vuesax);

axios.defaults.baseURL = 
  process.env.NODE_ENV === "development" ? "http://localhost:3000" : "/";

var jwt = localStorage.getItem("jwt");
if (jwt) {
  axios.defaults.headers.common["Authorization"] = "Bearer " + jwt;
}

Vue.config.productionTip = false; 

new Vue({
  router,
  render: h => h(App)
  // watch: {
  //   '$route': function() {
  //     window.location.reload();
  //   }
  // }
}).$mount('#app');
