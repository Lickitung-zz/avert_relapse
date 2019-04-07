<template>
  <div class="newAccount">
    <h1>This is the new account page</h1>
    <p>Email address: <input type="text" v-model="newUserEmail"></p>
    <p>Account Name: <input type="text" v-model="newAccountName"></p>
    <p>Phone Number: <input type="text" v-model="newAccountPhoneNumber"></p>
    <p>Password: <input type="text" v-model="newUserPassword"></p>
    <p>Password Confirmation: <input type="text" v-model="newUserPasswordComfirmation"></p>
    <br>
    <form action="/new_account/">
    <input type="submit" value="Create New Account" />
    </form>
  </div>
</template>