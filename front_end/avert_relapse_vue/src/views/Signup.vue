<template>
  <div class="signup">
    <div class="container">
      <form v-on:submit.prevent="submit()">
        <h1>Signup</h1>
        <ul>
          <li class="text-danger" v-for="error in errors">{{ error }}</li>
        </ul>
        <div class="form-group">
          <label>Account Name: </label> 
          <input type="text" class="form-control" v-model="name">
        </div>
        <div class="form-group">
          <label>Email: </label>
          <input type="email" class="form-control" v-model="email">
        </div>
        <div class="form-group">
          <label>Phone Number: </label> 
          <input type="text" class="form-control" v-model="phoneNumber">
        </div>
        <div class="form-group">
          <label>Password: </label>
          <input type="password" class="form-control" v-model="password">
        </div>
        <div class="form-group">
          <label>Password confirmation: </label>
          <input type="password" class="form-control" v-model="passwordConfirmation">
        </div>
        <div class="form-group">
          <label>User ID: </label>
          <input type="user_id" class="form-control" v-model="user_id">
        </div>
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
      name: "",
      email: "",
      password: "",
      passwordConfirmation: "",
      phoneNumber: "",
      user_id: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        user_id: this.user_id,
        name: this.name,
        email: this.email,
        password: this.password,
        phone_number: this.phone_number,
        password_confirmation: this.passwordConfirmation
      };
      axios
        .post("/api/users", params)
        .then(response => {
          console.log(response);
        })
        .catch(error => {
          this.errors = error.response.data.errors;
        });
      axios
        .post('/api/accounts', params)
        .then(response => {
          this.$router.push("/login");
        });
    }
  }
};
</script>
