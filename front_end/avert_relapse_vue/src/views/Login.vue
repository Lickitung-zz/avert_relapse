<!-- <template>
  <div class="login">
    <h1>This is the login page</h1>
    <p>Email address: <input type="text" v-model="loginEmail"></p>
    <p>Password: <input type="text" v-model="loginPassword"></p>
    <a href="/signup">New User? Click here.</a> | 
    <button v-on:click="login()">Login</button>
  </div>
</template> -->



<template>
  <div class="login">
    <div class="container">
      <form v-on:login.prevent="login()">
        <h1>Login</h1>
        <ul>
          <li class="text-danger" v-for="error in errors">{{ error }}</li>
        </ul>
        <div class="form-group">
          <label>Email:</label>
          <input type="email" class="form-control" v-model="email">
        </div>
        <div class="form-group">
          <label>Password:</label>
          <input type="password" class="form-control" v-model="password">
        </div>
        <a href="/index">New User? Click here.</a>
        <input type="submit" class="btn btn-primary" value="Submit">
      </form>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function() {
    return {
      email: "",
      password: "",
      errors: []
    };
  },
  created: function() {
    axios.get("/api/users/id").then(response => {
      this.user_id = response.data;
    });
  },
  methods: {
    submit: function() {
      var params = {
        email: this.email,
        password: this.password
      };
      axios
        .post("/api/sessions", params)
        .then(response => {
          axios.defaults.headers.common["Authorization"] =
            "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          this.$router.push("/index");
        })
        .catch(error => {
          this.errors = ["Invalid email or password."];
          this.email = "";
          this.password = "";
        });
    }
  }
};
</script>
