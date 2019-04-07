<template>
  <div class="login">
    <h1>This is the login page</h1>
    <p>Email address: <input type="text" v-model="loginEmail"></p>
    <p>Password: <input type="text" v-model="loginPassword"></p>
    <form action="/new_user/">
    <input type="submit" value="New Account" />
    </form>
    <button v-on:click="login()">Login</button>
  </div>
</template>