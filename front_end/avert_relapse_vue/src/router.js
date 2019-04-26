import Vue from 'vue';
import Router from 'vue-router';
import Home from './views/Home.vue';
import Signup from "./views/Signup.vue";
import Login from "./views/Login.vue";
import Logout from "./views/Logout.vue";
import Friends from "./views/Friends.vue";
// import Update from "./views/Update.vue"

Vue.use(Router);

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/about',
      name: 'about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    },
    {
      path: '/settings',
      name: 'settings',
      component: () => import(/* webpackChunkName: "settings" */ './views/Settings.vue')
    },
    {
      path: '/new_user',
      name: 'newUser',
      component: () => import('./views/Signup.vue')
    },
    {
      path: '/index',
      name: 'index',
      component: () => import('./views/Index.vue')
    },
    // {
    //   path: '/friends',
    //   name: 'friends',
    //   component: () => import('./views/Friends.vue')
    // },
    { path: "/signup", name: "signup", component: Signup 
    },
    { path: "/login", name: "login", component: Login 
    },
    { path: "/logout", name: "logout", component: Logout 
    },
    { path: "/friends", name: "friends", component: Friends 
    }
    // { path: "/update/:id", name: "update", component: Update 
    // }
  ]
});
