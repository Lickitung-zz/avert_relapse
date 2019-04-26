<template>
  <div class="settings">
    <h1>This is the settings page</h1>
    <br>
    <br>
    <br>
<div class="container">
        <div class="row">

          <!-- Newsfeed Common Side Bar Left
          ================================================= -->
          <div class="col-md-3 static">
            <div class="profile-card">
              <div v-for="account in accounts">
                <img src="http://placehold.it/300x300" alt="user" class="profile-photo" />
                <h5><a href="timeline.html" class="text-white">{{ accounts.name }}</a></h5>
                <a href="#" class="text-white"><i class="ion ion-android-person-add"></i> 1,299 followers</a>
              </div>
            </div><!--profile card ends-->
            <ul class="nav-news-feed">
              <li><i class="icon ion-ios-people-outline"></i><div><a href="/friends">Account Info</a></div></li>
              <li><i class="icon ion-chatboxes"></i><div><a href="newsfeed-messages.html">Help Message config</a></div></li>
              <li><i class="icon ion-images"></i><div><a href="newsfeed-images.html">Images</a></div></li>
              <li></i><div><a href="newsfeed-videos.html">Delete Account</a></div></li>
            </ul><!--news-feed links ends-->
          </div>
          
          <div class="col-md-7">

        </div>
      </div>
    </div>
  </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function() {
    return {
      message: "Welcome to Avert.relapse!",
      contacts: [],
      messages: "",
      accounts: [],
      loginEmail: "",
      loginPassword: "",
      help: "",
      newContactFirstName: "",
      newContactLastName: "",
      newContactPhoneNumber: "",
      newContactEmail: "",
      newMessage: "",
      // newContactAccountId: User.account.id,
      errors: []
    };
  },
  created: function() {
    axios.get("/api/contacts").then(response => {this.contacts = response.data;
    });
    axios.get("/api/twilio/sms").then(response => {
      this.messages = response.data;
    });
    axios.get("/api/accounts/show").then(response => {
      this.accounts = response.data;
    });
    // axios.get("http://localhost:3000/api/twilio/sms").then(response => {this.texts = response.data;
    // });
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
      console.log("sending help to all friends...");
      axios.post("http://localhost:3000/api/twilio/sms").then(response => {
        console.log(response);
        console.log("sent text to all friends");
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
        console.log(response);
      });
    },
    updateMessage: function() {
      var params = {
        messages: this.messages.help_message
      };
      console.log('updating the message...');

      axios.post("/api/twilio/sms_update", params).then(response => {
          console.log(response);
      });
    }
  }
};
</script>