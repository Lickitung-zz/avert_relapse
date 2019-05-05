<template>
  <div class="settingsHelp">
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
                  
                  
                </ul>
              </div>
            </div>
          </div><!--Timeline Menu for Large Screens End-->

          <!--Timeline Menu for Small Screens-->
          <div class="navbar-mobile hidden-lg hidden-md">
            <div class="profile-info">
              <img src="http://placehold.it/300x300" alt="" class="img-responsive profile-photo" />
              	<div v-for="account in accounts">
                 <h3>{{ accounts.name }}</h3>
              	</div>
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
              	<li class="icon ion-ios-information-outline"></i><a href="/settings">Basic Information</a></li>
              	<li class="active"><i class="icon ion-ios-heart-outline"></i><a href="edit-profile-basic.html">Customize Help Message</a></li>
                <li><i class="icon ion-ios-settings"></i><a href="edit-profile-settings.html">Account Settings</a></li>
              	<li><i class="icon ion-ios-locked-outline"></i><a href="edit-profile-password.html">Change Password</a></li>
              </ul>
            </div>
            <div class="col-md-7">

              <!-- Basic Information
              ================================================= -->
              <div class="edit-profile-container">
                <div class="block-title">
                  <h4 class="grey"><i class="icon ion-android-checkmark-circle"></i>Customize Help Message</h4>
                  <div class="line"></div>
                  <p>You can customize the "Help!" message here, so that when the "Help!" button is pressed, your customized message will be sent to all of your contacts.</p>
                  <div class="line"></div>
                </div>
                <div class="edit-block">
                  <form name="basic-info" id="basic-info" class="form-inline">
                    <div class="row">
                      <div class="form-group col-xs-12">
                        <p><label for="email">Help Message</label></p>
                        <p><div class="form-group">
		                    <div v-for="message in messages">
					
						      
						      
						    </div>
		                    <textarea v-model="messages.help_message" name="texts" id="exampleTextarea" cols="30" rows="1" class="form-control" placeholder="Write what you wish"></textarea>
                  		</div></p>
                      
                      </div>
                    </div>
                    <button v-on:click="updateMessage()" class="btn btn-primary">Save Changes</button>
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
      message: "Welcome to Avert.relapse!",
      contacts: [],
      messages: "",
      accounts: [],
      profile_pics: [],
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
    axios.get("/api/accounts/show_name").then(response => {
      this.accounts = response.data;
    });
    axios.get("/api/accounts/show_profile_pic").then(response => {
      this.profile_pics = response.data;
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