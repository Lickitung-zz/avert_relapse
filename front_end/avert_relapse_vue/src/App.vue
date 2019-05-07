<template>
  <div id="app">

     <!-- commented out color picker for nav bar below  -->
     <!-- <input class="input-color" v-model="colorx" type="color" name="" value=""> -->
    <vs-navbar
      v-model="indexActive"
      :color="colorx"
      text-color="rgba(255,255,255,.6)"
      active-text-color="rgba(255,255,255,1)"
      class="myNavbar">
      <div slot="title">
        <vs-navbar-title>
          <!-- <div class="navbar-header"> -->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <!-- <img src="HTML/images/logo.png" alt="logo" /> -->
            <!-- <a class="navbar-brand" href="/index"></a> -->
          <!-- </div> -->
        </vs-navbar-title>
      </div>

      <vs-navbar-item index="0">
        <a v-if="is_logged_in === true">
          <router-link to="/index" style="font-size: 1.2rem">Home</router-link>
        </a>
      </vs-navbar-item>
      <vs-navbar-item index="1">
        <a v-if="is_logged_in === true">
          <router-link to="/contacts" style="font-size: 1.2rem">Contacts</router-link>
        </a>
      </vs-navbar-item>
      <vs-navbar-item index="2">
        <a v-if="is_logged_in === true">
          <router-link to="/help" style="font-size: 1.2rem">Help</router-link>
        </a>
      </vs-navbar-item>
      <vs-navbar-item index="3">
        <a v-if="is_logged_in === true">
          <router-link icon="message" to="/messages-index" style="font-size: 1.2rem">Messages</router-link>
        </a>
      </vs-navbar-item>
      <vs-navbar-item index="4">
        <!-- <a href="#">Update</a> -->
        <a class="dropdown" v-if="is_logged_in === true">
          <router-link to="/settings" style="font-size: 1.2rem">Settings</router-link>
        </a>
      </vs-navbar-item>
      <vs-navbar-item index="5">
        <a v-if="is_logged_in === true">
          <router-link to="/logout" style="font-size: 1.2rem">Logout</router-link>
        </a>
        <a v-else>
          <router-link to="/login" style="font-size: 1.2rem">Login</router-link>
        </a>
      </vs-navbar-item>
      
      <form class="navbar-form" v-on:submit.prevent="searching()" name="search_form" id='search_form'>
             
              
                <vs-input id="my-search" type="search" icon="search" style="font-size: 1.2rem" placeholder="Search for friends!" v-model="searchQuery"/>
                <!-- <input id="my-search" class="form-control input-group-lg" type="search" name="Searchsss" title="Search here" placeholder="Search for friends and accounts" v-model="searchQuery"/> -->
                <!-- <input type="submit" name="searching"> -->
              
            
          </form><!--Login Form Ends--> 
      <vs-spacer></vs-spacer>

    </vs-navbar>

    
   
    <!--Header End-->

    <router-view/>

    <!-- Footer
    ================================================= -->
    <!-- <footer id="footer">
      <div class="container">
        <div class="row">
          <div class="footer-wrapper">
            <div class="col-md-3 col-sm-3">
              <a href=""><img src="HTML/images/logo-black.png" alt="" class="footer-logo" /></a>
              <ul class="list-inline social-icons">
                <li><a href="#"><i class="icon ion-social-facebook"></i></a></li>
                <li><a href="#"><i class="icon ion-social-twitter"></i></a></li>
                <li><a href="#"><i class="icon ion-social-googleplus"></i></a></li>
                <li><a href="#"><i class="icon ion-social-pinterest"></i></a></li>
                <li><a href="#"><i class="icon ion-social-linkedin"></i></a></li>
              </ul>
            </div>
            <div class="col-md-2 col-sm-2">
              <h6>For individuals</h6>
              <ul class="footer-links">
                <li><a href="">Signup</a></li>
                <li><a href="">login</a></li>
                <li><a href="">Explore</a></li>
                <li><a href="">Finder app</a></li>
                <li><a href="">Features</a></li>
                <li><a href="">Language settings</a></li>
              </ul>
            </div>
            <div class="col-md-2 col-sm-2">
              <h6>For businesses</h6>
              <ul class="footer-links">
                <li><a href="">Business signup</a></li>
                <li><a href="">Business login</a></li>
                <li><a href="">Benefits</a></li>
                <li><a href="">Resources</a></li>
                <li><a href="">Advertise</a></li>
                <li><a href="">Setup</a></li>
              </ul>
            </div>
            <div class="col-md-2 col-sm-2">
              <h6>About</h6>
              <ul class="footer-links">
                <li><a href="">About us</a></li>
                <li><a href="">Contact us</a></li>
                <li><a href="">Privacy Policy</a></li>
                <li><a href="">Terms</a></li>
                <li><a href="">Help</a></li>
              </ul>
            </div>
            <div class="col-md-3 col-sm-3">
              <h6>Contact Us</h6>
                <ul class="contact">
                  <li><i class="icon ion-ios-telephone-outline"></i>+1 (234) 222 0754</li>
                  <li><i class="icon ion-ios-email-outline"></i>info@thunder-team.com</li>
                  <li><i class="icon ion-ios-location-outline"></i>228 Park Ave S NY, USA</li>
                </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="copyright">
        <p>copyright @avert-relapse 2019. All rights reserved</p>
      </div>
    </footer> -->
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
      searchQuery: "",
      searchResults: [],
      contacts: [],
      messages: "",
      accounts: [],
      is_logged_in: "",
      loginEmail: "",
      loginPassword: "",
      help: "",
      newContactFirstName: "",
      newContactLastName: "",
      newContactPhoneNumber: "",
      newContactEmail: "",
      newMessage: "",
      avatar: null,
      saving: false,
      saved: false,
      colorx: '#212322',
      indexActive: 0,
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
    axios.get("/api/users/id").then(response => {
      this.user_id = response.data;
    });
    axios.get("/api/accounts/is_logged_in").then(response => {
      this.is_logged_in = response.data;
      // location.reload();
    });
    // axios.get("http://localhost:3000/api/twilio/sms").then(response => {this.texts = response.data;
    // })
  },
  methods: {
    searching: function(searchQuery) {
      var params = {
        search: this.searchQuery
      };
      axios.get("/api/accounts/", {
        params: {
          search: this.searchQuery
        }
      })
        .then(response => {
          this.$router.push({path: '/api/accounts/?search=' + this.searchQuery});
          // console.log(response);
          this.searchResults = response.data;
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
    },
    uploadImage() {
      this.saving = true
      setTimeout(() => this.savedAvatar(), 1000)
    },
    savedAvatar() {
      this.saving = false
      this.saved = true
    }
  }
};
</script>

