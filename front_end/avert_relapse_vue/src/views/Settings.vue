<template>
  <div class="settings">
<div class="container">

      <!-- Timeline
      ================================================= -->
      <div class="timeline">
        <div class="timeline-cover">

          <!--Timeline Menu for Large Screens-->
          <div class="timeline-nav-bar hidden-sm hidden-xs">
            <div class="row">
              <div class="col-md-3">
                <div class="profile-info">
                  <div v-for="profile_pic in profile_pics">
                    <img :src="profile_pics.profile_pic" alt="" class="img-responsive profile-photo" />
                  </div>
                 	<div v-for="account in accounts">
                  		<h3>{{ accounts.name }}</h3>
              		</div>
                  <p class="text-muted">Creative Director</p>
                </div>
              </div>
              <div class="col-md-9">
                <ul class="list-inline profile-menu">
                  <li><a href="timeline.html">Timeline</a></li>
                  <li><a href="timeline-about.html" class="active">About</a></li>
                  <li><a href="timeline-album.html">Album</a></li>
                  <li><a href="timeline-friends.html">Friends</a></li>
                </ul>
                <ul class="follow-me list-inline">
                  <li>1,299 people following her</li>
                  <li><button class="btn-primary">Add Friend</button></li>
                </ul>
              </div>
            </div>
          </div><!--Timeline Menu for Large Screens End-->

          <!--Timeline Menu for Small Screens-->
          <div class="navbar-mobile hidden-lg hidden-md">
            <div class="profile-info">
              <img src="http://placehold.it/300x300" alt="" class="img-responsive profile-photo" />
              <h4>Sarah Cruiz</h4>
              <p class="text-muted">Creative Director</p>
            </div>
            <div class="mobile-menu">
              <ul class="list-inline">
                <li><a href="timline.html">Timeline</a></li>
                <li><a href="timeline-about.html" class="active">About</a></li>
                <li><a href="timeline-album.html">Album</a></li>
                <li><a href="timeline-friends.html">Friends</a></li>
              </ul>
              <button class="btn-primary">Add Friend</button>
            </div>
          </div><!--Timeline Menu for Small Screens End-->

        </div>
        <div id="page-contents">
          <div class="row">
            <div class="col-md-3">
              
              <!--Edit Profile Menu-->
              <ul class="edit-menu">
              	<li class="active"><i class="icon ion-ios-information-outline"></i><a href="edit-profile-basic.html">Basic Information</a></li>
              	<li><i class="icon ion-ios-heart-outline"></i><a href="/set-help">Customize Help Message</a></li>
                <li><i class="icon ion-ios-settings"></i><a href="edit-profile-settings.html">Account Settings</a></li>
              	<li><i class="icon ion-ios-locked-outline"></i><a href="edit-profile-password.html">Change Password</a></li>
              </ul>
            </div>
            <div class="col-md-7">

              <!-- Basic Information
              ================================================= -->
              <div class="edit-profile-container">
                <div class="block-title">
                  <h4 class="grey"><i class="icon ion-android-checkmark-circle"></i>Edit basic information</h4>
                  <div class="line"></div>
                  <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate</p>
                  <div class="line"></div>
                </div>
                <div class="edit-block">
                  <form v-on:submit.prevent="submit()" name="basic-info" id="basic-info" class="form-inline">
                    <div class="row">
                      <div class="form-group col-xs-12">
                        <label for="first_name">First Name</label>
                        <input id="first_name" class="form-control input-group-lg" type="text" name="PhoneNumber" title="Enter First Number" placeholder="First Name" value="First Name" v-model="firstName"/>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-xs-6">
                        <label for="lastname">Last Name</label>
	                        
	                        	<!-- <input class="form-control input-group-lg" type="text" name="name" title="Enter first name" placeholder="First Name"/> -->

	                    	  
                            <!-- <label for="lastname">Last Name</label> -->
                            <input class="form-control input-group-lg" type="text" name="name" title="Enter last name" placeholder="Last Name" v-model="lastName"/>
                          
                      </div>
                    </div>

                    <!-- edit phone number BEGIN (this is broke and needs to be fixed at some point) -->

                    <!-- <div class="row">
                      <div class="form-group col-xs-12">
                        <label for="phone_number">My phone number</label>
                        <input id="phone_number" class="form-control input-group-lg" type="text" name="PhoneNumber" title="Enter Phone Number" placeholder="My Phone Number" value="My Phone Number" v-model="phoneNumber"/>
                      </div>
                    </div> -->

                    <!-- edit phone number END (this is broke and needs to be fixed at some point) -->
                    <div class="row">
                      <div class="form-group col-xs-12">
                        <label for="my-info">About me</label>
                        <textarea id="my-info" name="information" class="form-control" placeholder="Some texts about me" rows="4" cols="400">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur</textarea>
                      </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Save Changes</button>
                  </form>
                </div>
              </div>
            </div>
            <div class="col-md-2 static">
              
              <!--Sticky Timeline Activity Sidebar-->
              <div id="sticky-sidebar">
                <h4 class="grey">Sarah's activity</h4>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Commended on a Photo</p>
                    <p class="text-muted">5 mins ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Has posted a photo</p>
                    <p class="text-muted">an hour ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Liked her friend's post</p>
                    <p class="text-muted">4 hours ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> has shared an album</p>
                    <p class="text-muted">a day ago</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
              <!-- Footer
    ================================================= -->
    <footer id="footer">
      <div class="container">
        <div class="row">
          <div class="footer-wrapper">
            <div class="col-md-3 col-sm-3">
              <a href=""><img src="images/logo-black.png" alt="" class="footer-logo" /></a>
              <ul class="list-inline social-icons">
                <li><a href="#"><i class="icon ion-social-facebook"></i></a></li>
                <li><a href="#"><i class="icon ion-social-twitter"></i></a></li>
                <li><a href="#"><i class="icon ion-social-googleplus"></i></a></li>
                <li><a href="#"><i class="icon ion-social-pinterest"></i></a></li>
                <li><a href="#"><i class="icon ion-social-linkedin"></i></a></li>
              </ul>
            </div>
            <div class="col-md-2 col-sm-2">
              <h5>For individuals</h5>
              <ul class="footer-links">
                <li><a href="">Signup</a></li>
                <li><a href="">Explore</a></li>
                <li><a href="">Features</a></li>
                <li><a href="">Language settings</a></li>
              </ul>
            </div>
            <div class="col-md-2 col-sm-2">
              <h5>About</h5>
              <ul class="footer-links">
                <li><a href="">About us</a></li>
                <li><a href="">Contact us</a></li>
                <li><a href="">Privacy Policy</a></li>
                <li><a href="">Terms</a></li>
                <li><a href="">Help Guide</a></li>
              </ul>
            </div>
            <div class="col-md-3 col-sm-3">
              <h5>Contact Us</h5>
              <ul class="contact">
                <li><i class="icon ion-ios-telephone-outline"></i>+1 (737) 204-2024</li>
                <li><i class="icon ion-ios-email-outline"></i>brandon_n_evans@live.com</li>
                <li><i class="icon ion-ios-location-outline"></i>300 w 6th St, Austin, TX</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="copyright">
        <p>Avert Relapse © 2019. All rights reserved</p>
      </div>
    </footer>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function() {
    return {
      firstName: "",
      lastName: "",
      email: "",
      phoneNumber: "",
      user_id: "",
      accounts: [],
      profile_pics: [],
      errors: []
    };
  },
  created: function() {
    axios.get("/api/contacts").then(response => {this.contacts = response.data;
    });
    axios.get("/api/twilio/sms").then(response => {
      this.messages = response.data;
    });
    axios.get("/api/accounts/show_name").then(response => {
      this.accounts = response.data;
    });
    axios.get("/api/accounts/show_profile_pic").then(response => {
      this.profile_pics = response.data;
    });
    axios.get("/api/users/id").then(response => {
      this.user_id = response.data;
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
    },
    submit: function() {
      var params = {
        user_id: this.user_id.user_id,
        first_name: this.firstName,
        last_name: this.lastName,
        phone_number: this.phoneNumber
      };
      axios
        .patch("/api/accounts", params)
        .then(response => {
          console.log(response);
        });
          this.$router.push("/settings");
          location.reload();
        }
  }
};
</script>