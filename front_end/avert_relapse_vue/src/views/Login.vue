<template>
  <div class="login">
    <h1>This is the login page</h1>
    <p>Email address: <input type="text" v-model="loginEmail"></p>
    <p>Password: <input type="text" v-model="loginPassword"></p>
    <a href="/new_user">New User? Click here.</a> | 
    <button v-on:click="login()">Login</button>
  </div>
</template>