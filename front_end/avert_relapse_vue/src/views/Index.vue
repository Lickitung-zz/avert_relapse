<template>
  <div class="index">
    <div id="nav">
      <router-link to="/logout">Logout</router-link>
    </div>
    <h1>This is the page that loads when logged in</h1>
    <div v-for="contact in contacts">
      <p>Name: {{ contact.first_name}} {{ contact.last_name }}</p>
    </div>
    <hr>
    
  </div>
</template>
<script>
import axios from "axios";

export default {
  data: function() {
    return {
      message: "Welcome to Avert.relapse!",
      contacts: [],
      loginEmail: "",
      loginPassword: ""
    };
  },
  created: function() {
    axios.get("/api/contacts").then(response => {this.contacts = response.data;
    });
  },
  methods: {
    login: function() {
      var params = {
        email: this.loginEmail,
        password: this.loginPassword
      };
      console.log('logging in...');
      axios.post('/api/sessions', params).then(response => {
        console.log(response);
      });
    }
  }
};
</script>