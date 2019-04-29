import Vue from 'vue';
import Router from 'vue-router';
import Home from './views/Home.vue';
import Signup from "./views/Signup.vue";
import Login from "./views/Login.vue";
import Logout from "./views/Logout.vue";
import Contacts from "./views/Contacts.vue";
import Friends from "./views/Friends.vue";
import Help from "./views/Help.vue";
import Settings from "./views/Settings.vue";
import SettingsHelp from "./views/SettingsHelp.vue";
import AddContact from "./views/AddContact.vue";
import AddFriend from "./views/AddFriend.vue";
import TimelineAbout from "./views/TimelineAbout.vue";
import UpdateContact from "./views/UpdateContact.vue";
import UpdateProfilePicture from "./views/UpdateProfilePicture.vue";
import MessagesIndex from "./views/MessagesIndex.vue";
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
      path: '/set-help',
      name: 'settingsHelp',
      component: () => import(/* webpackChunkName: "settings" */ './views/SettingsHelp.vue')
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
    {
      path: '/messages-index',
      name: 'messagesIndex',
      component: () => import('./views/MessagesIndex.vue')
    },
    {
      path: '/contacts-new',
      name: 'newContact',
      component: () => import('./views/AddContact.vue')
    },
    {
      path: '/friends-new',
      name: 'newFriend',
      component: () => import('./views/AddFriend.vue')
    },
    {
      path: '/timeline-about',
      name: 'timelineAbout',
      component: () => import('./views/TimelineAbout.vue')
    },
    {
      path: '/contacts-update',
      name: 'contactsUpdate',
      component: () => import('./views/UpdateContact.vue')
    },
    {
      path: '/update-profile-picture',
      name: 'profilePictureUpdate',
      component: () => import('./views/UpdateProfilePicture.vue')
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
    { path: "/contacts", name: "contacts", component: Contacts 
    },
    { path: "/friends", name: "friends", component: Friends 
    },
    { path: "/help", name: "help", component: Help 
    }
  ]
});
