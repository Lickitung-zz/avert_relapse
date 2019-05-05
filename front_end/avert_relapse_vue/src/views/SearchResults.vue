<template>
  <div class="searchResults">
    <div class="container">
    	<br>
    	<br>
        <div class="row">

          <!-- Newsfeed Common Side Bar Left
          ================================================= -->
          <div class="col-md-3 static">
            <div class="profile-card">
              
                
                  <img :src="profile_pics.profile_pic" alt="user" class="profile-photo" />
                
                <h5><a href="/timeline-about" class="text-white">{{ accounts.name }} </a></h5>
                <a href="#" class="text-white"><i class="ion ion-android-person-add"></i> 1,299 followers</a>
              
            </div><!--profile card ends-->
            <ul class="nav-news-feed">
              <li><i class="icon ion-ios-paper"></i><div><a href="/index">My Newsfeed</a></div></li>
              <li><i class="icon ion-ios-people-outline"></i><div><a href="/friends">Friends</a></div></li>
              <li><i class="icon ion-chatboxes"></i><div><a href="/messages-index">Messages</a></div></li>
              <li><i class="icon ion-images"></i><div><a href="newsfeed-images.html">Images</a></div></li>
              <li><i class="icon ion-ios-videocam"></i><div><a href="newsfeed-videos.html">Videos</a></div></li>
            </ul>
            <!--news-feed links ends-->
            <div id="chat-block">
              <div class="title">Chat online</div>
              <ul class="online-users list-inline">
                <li><a href="newsfeed-messages.html" title="Linda Lohan"><img src="https://theawesomer.com/photos/2010/06/060410_Facebook_profile_pic_6.jpg" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Brian Rice"><img src="https://media.licdn.com/dms/image/C5603AQH3C4VuWvnYow/profile-displayphoto-shrink_800_800/0?e=1562803200&v=beta&t=_zQBBXgwNXNMas4jD2Rhs1Y7Q1Cb6mKlo5Zcu8SzUz8" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="John Doe"><img src="https://theawesomer.com/photos/2010/06/060410_Facebook_profile_pic_6.jpg" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Alexis Clark"><img src="https://avatars2.githubusercontent.com/u/40277111?s=460&v=4" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="James Carter"><img src="https://theawesomer.com/photos/2010/06/060410_Facebook_profile_pic_6.jpg" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Robert Cook"><img src="https://theawesomer.com/photos/2010/06/060410_Facebook_profile_pic_6.jpg" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Richard Bell"><img src="https://theawesomer.com/photos/2010/06/060410_Facebook_profile_pic_6.jpg" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Anna Young"><img src="https://theawesomer.com/photos/2010/06/060410_Facebook_profile_pic_6.jpg" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Julia Cox"><img src="https://theawesomer.com/photos/2010/06/060410_Facebook_profile_pic_6.jpg" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
              </ul>
            </div>
            <!--chat block ends-->
          </div>


          

          <div class="col-md-7">
          
          	<!-- Friend List
            ================================================= -->
            <div class="friend-list">
			    <div v-for="result in searchResults">
			      <!-- <div>
			        First Name: <input type="text" v-model="contact.first_name">
			        Last Name: <input type="text" v-model="contact.last_name">
			        Phone Number: <input type="text" v-model="contact.phone_number">
			        Email: <input type="text" v-model="contact.email">
			        <button v-on:click="editContact(contact)">Update Contact</button>
			      </div> -->
			      <hr>
            	<div class="row">
            		<div class="col-md-6 col-sm-6">
                  <div class="friend-card">
                  	<img :src="result.cover_photo" alt="profile-cover" class="img-responsive cover" />
                  	<div class="card-info">
                      <img :src="result.profile_pic" alt="user" class="profile-photo-lg" />
                      <div class="friend-info">
                        <!-- <a v-on:click="getContact()" class="pull-right text-green">Update info</a> -->
                        <router-link v-bind:to="'/accounts/timeline/' + result.id">{{ result.first_name }} {{ result.last_name }}</router-link>
                      	<h5><a href="/timeline-about" class="profile-link"></a></h5>
                        <!-- <p>{{ contact.email }}</p>                      
                        <p>{{ contact.phone_number }}</p> -->
                    </div>
                  </div>
                </div>
                </div>
                <!-- div right above is end div for v-for:contacts -->
                </div>
            	</div>
            </div>
        </div>
        <!-- Newsfeed Common Side Bar Right
          ================================================= -->
          <div class="col-md-2 static">
            <div class="suggestions" id="sticky-sidebar">
              <h4 class="grey">Who to Follow</h4>
              <div class="follow-user">
                <img src="https://www.aceshowbiz.com/images/photo/john_cena.jpg" alt="" class="profile-photo-sm pull-left" />
                <div>
                  <h5><a href="timeline.html">John Cena</a></h5>
                  <a href="#" class="text-green">Add friend</a>
                </div>
              </div>
              <div class="follow-user">
                <img src="https://www.bettycrocker.com/-/media/legacy/Images/Betty-Crocker/Menus-Holidays-Parties/MHPLibrary/Parties-and-Get-Togethers/Vintage-Betty/The-Story-of-Betty-Crocker/The-Story-of-Betty-Crocker_06.jpg" alt="" class="profile-photo-sm pull-left" />
                <div>
                  <h5><a href="timeline.html">Betty Crocker</a></h5>
                  <a href="#" class="text-green">Add friend</a>
                </div>
              </div>
              <div class="follow-user">
                <img src="https://avatars2.githubusercontent.com/u/40277111?s=460&v=4" alt="" class="profile-photo-sm pull-left" />
                <div>
                  <h5><a href="timeline.html">Josh Sarna</a></h5>
                  <a href="#" class="text-green">Add friend</a>
                </div>
              </div>
              <div class="follow-user">
                <img src="http://turiscilipoti.com/demos/project3/images/profilepic.jpg" alt="" class="profile-photo-sm pull-left" />
                <div>
                  <h5><a href="timeline.html">Mark Zuckerberg</a></h5>
                  <a href="#" class="text-green">Add friend</a>
                </div>
              </div>
              <div class="follow-user">
                <img src="https://media.licdn.com/dms/image/C5603AQH3C4VuWvnYow/profile-displayphoto-shrink_800_800/0?e=1562803200&v=beta&t=_zQBBXgwNXNMas4jD2Rhs1Y7Q1Cb6mKlo5Zcu8SzUz8" alt="" class="profile-photo-sm pull-left" />
                <div>
                  <h5><a href="timeline.html">Brian Rice</a></h5>
                  <a href="#" class="text-green">Add friend</a>
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
      searchQuery: "",
      searchResults: [],
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
      accountId: "",
      // newContactAccountId: User.account.id,
      errors: []
    };
  },

  created: function() {
    axios.get("/api/accounts/show_name").then(response => {
      this.accounts = response.data;
    });
    axios.get("/api/accounts/show_profile_pic").then(response => {
      this.profile_pics = response.data;
    });
    console.log("this is the search query")
    console.log(this.$parent.searchQuery)
    console.log(this.searchQuery)
    axios.get("api/accounts/?search=" + this.$parent.searchQuery
    ).then(response => {
      this.searchResults = response.data;
      console.log(response.data);
    });
    axios.get("/api/accounts/account_id").then(response => {
      this.accountId = response.data;
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