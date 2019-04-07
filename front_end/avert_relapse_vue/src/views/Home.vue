<template>
  <div class="home">
    <h1>{{ message }}</h1>
    <div v-for="contact in contacts">
      <p>Name: {{ contact.first_name}} {{ contact.last_name }}</p>
    </div>
  </div>
</template>

<style>
</style>

<script>
import axios from "axios";

export default {
  data: function() {
    return {
      message: "Welcome to Avert.relapse!",
      contacts: []
    };
  },
  created: function() {
    axios.get("/api/contacts").then(response => { this.contacts = response.data;
    });
  },
  methods: {}
};
</script>
