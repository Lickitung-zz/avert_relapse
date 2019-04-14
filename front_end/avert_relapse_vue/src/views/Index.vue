<template>
  <div class="index">
    <div id="nav">
      <router-link to="/logout">Logout</router-link>
    </div>
    <h1>This is the page that loads when logged in</h1>
    <hr>
    <p><h3>Contacts: </h3></p>
    <div v-for="contact in contacts">
      <hr>
      <p>Name: {{ contact.first_name}} {{ contact.last_name }}</p>
      <p>Phone Number: {{ contact.phone_number }}</p>
      <p>Email: {{ contact.email }}</p>
      <p>ID: {{ contact.id }}</p>
      <!-- delete contact begin -->
      <p><button v-on:click="deleteContact(contact)">Delete contact</button></p>
     <!--  delete contact end -->
     <!-- edit contact begin -->
      <div>
        First Name: <input type="text" v-model="contact.first_name">
        Last Name: <input type="text" v-model="contact.last_name">
        Phone Number: <input type="text" v-model="contact.phone_number">
        Email: <input type="text" v-model="contact.email">
        <button v-on:click="editContact(contact)">Update Contact</button>
      </div>
      <hr>
    </div>
    <hr>
    <h2>Help button: </h2>
    <button v-on:click="sendHelp()">Help</button>
    <hr>
    <h2>Add contact: </h2>
    <form>
      <p>First Name <input type=text v-model="newContactFirstName"></p>
      <p>Last Name <input type=text v-model="newContactLastName"></p>
      <p>Phone Number <input type=text v-model="newContactPhoneNumber"></p>
      <p>Email <input type=text v-model="newContactEmail"></p>
      <button v-on:click="createContact()">Add Contact</button>
    </form>
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
      loginPassword: "",
      help: "",
      newContactFirstName: "",
      newContactLastName: "",
      newContactPhoneNumber: "",
      newContactEmail: "",
      // newContactAccountId: User.account.id,
      errors: []
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
    },
    sendHelp: function() {
      console.log("testing");
      axios.post("http://55c823cb.ngrok.io/api/twilio/sms").then(response => {
        console.log(response);
        console.log("sent text to all contacts");
      });
    },
    createContact: function() {
      var params = {
        first_name: this.newContactFirstName,
        last_name: this.newContactLastName,
        phone_number: this.newContactPhoneNumber,
        email: this.newContactEmail
      };
      console.log('adding contact...');
      axios.post("/api/contacts", params).then(
        response => {
          console.log(response);
          this.$router.push("/index");
        }).catch(error => {
        console.log("this isn't working.");
        console.log(error.response.data.errors);
        this.error = error.response.data.errors;
      });
    },
    deleteContact: function(contact) {
      console.log("deleting contact...");
      axios.delete("/api/contacts/" + contact.id).then(response => {
        var index = this.contacts.indexOf(
          contact);
        this.contacts.splice(index, 1);
      });
    },
    editContact: function(contact) {
      var params = {
        first_name: contact.first_name,
        last_name: contact.last_name,
        phone_number: contact.phone_number,
        email: contact.email
      };
      axios.patch("/api/contacts/" + contact.id, params).then(response => {
        this.currentContact = {};
      });
    },
  }
};
</script>