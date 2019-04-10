<template>
  <div class="home">
    <h1>{{ message }}</h1>
    </div>
  </div>
</template>

<style>
.index {
  background-image: "aver_relapse_vue/images/download.png"
}
#app .home {
  background-image: url("/images/download.png")
}
</style>
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
