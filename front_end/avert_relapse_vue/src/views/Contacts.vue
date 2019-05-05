<template>
	<div class="contacts">
      <div id="page-contents">
    	<div class="container">
    		<div class="row">

    			<!-- Newsfeed Common Side Bar Left
          ================================================= -->
    			<div class="col-md-3 static">
            <div class="profile-card">
             
                
                  <img :src="profile_pics.profile_pic" alt="user" class="profile-photo" />
                
              	<h5><a href="/timeline-about" class="text-white">{{ accounts.name }}</a></h5>
              	<a href="#" class="text-white"><i class="ion ion-android-person-add"></i> 1,299 followers</a>
              
            </div>
            <!--profile card ends-->
            <ul class="nav-news-feed">
              <li><i class="icon ion-ios-paper"></i><div><a href="/index">My Newsfeed</a></div></li>
              <li><i class="icon ion-ios-people-outline"></i><div><a href="/friends">Friends</a></div></li>
              <li><i class="icon ion-chatboxes"></i><div><a href="/messages-index">Messages</a></div></li>
              <li><i class="icon ion-images"></i><div><a href="newsfeed-images.html">Images</a></div></li>
              <li><i class="icon ion-ios-videocam"></i><div><a href="newsfeed-videos.html">Videos</a></div></li>
            </ul>
            <!--news-feed links ends-->
            <!-- <div id="chat-block">
              <div class="title">Chat online</div>
              <ul class="online-users list-inline">
                <li><a href="newsfeed-messages.html" title="Linda Lohan"><img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Sophia Lee"><img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="John Doe"><img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Alexis Clark"><img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="James Carter"><img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Robert Cook"><img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Richard Bell"><img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Anna Young"><img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Julia Cox"><img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
              </ul>
            </div>
           chat block ends-->
          </div> 
          
    			<div class="col-md-7">

            <!-- Post Create Box
            ================================================= -->
            <div class="create-post">
              <div style="text-align: center;">
                <vs-button @click="popupActivo2=true" color="primary" type="flat">Add Contact</vs-button>
              </div>
            </div>
            <vs-popup class="holamundo" style="text-align: center;" title="" :active.sync="popupActivo2">
              <div class="form-group">
                <form style="text-align: center;">
                  <div style="display: inline-block;">
                    <vs-input label-placeholder="First Name" v-model="newContactFirstName"/>
                  <vs-input label-placeholder="Last Name" v-model="newContactLastName"/>
                  <vs-input icon-after="true" icon="contact_phone" label-placeholder="Phone Number" v-model="newContactPhoneNumber"/>
                  </div>
                  
                  <!-- <h4>Email:  <input type=text v-model="newContactEmail"></h4> -->
                </form>
                <br>
                <a href="/contacts">
                  <div style="text-align: center">
                    <vs-button v-on:click="createContact()">
                      Submit
                    </vs-button>
                  </div>
                  
                </a>
              </div>
            </vs-popup>

            <!-- Post Create Box End -->

            <!-- Friend List
            ================================================= -->
            <div class="friend-list">
			    <div v-for="contact in contacts">
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
                  	<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpfELLoS_l27A3muac-5JQWE6m_8bnwMGw6HPtxUg4VbVqq_SZ" alt="profile-cover" class="img-responsive cover" />
                  	<div class="card-info">                      
                      <img src="https://lh5.ggpht.com/_S0f-AWxKVdM/S5TpU6kRmUI/AAAAAAAAL4Y/wrjx3_23kw4/s72-c/d_silhouette%5B2%5D.jpg?imgmax=800" alt="user" class="profile-photo-lg" />                
                      <div class="friend-info">

                        <div style="text-align: right;">
                        <vs-dropdown>
                          <vs-button class="btn-drop" type="filled" icon="expand_more"></vs-button>
                          <!-- <a href="#">Hola mundo</a> -->

                          <vs-dropdown-menu>
                            <vs-dropdown-item>
                              <vs-button @click="popupActivo1=true" color="primary" type="flat">Edit Contact</vs-button>
                                <vs-popup class="holamundo" style="text-align: center;" title="" :active.sync="popupActivo1">
                                <div class="form-group">
                                  <form style="text-align: center;">
                                    <div style="display: inline-block;">
                                      <vs-input label-placeholder="First Name" v-model="contact.first_name"/>
                                    <vs-input label-placeholder="Last Name" v-model="contact.last_name"/>
                                    <vs-input icon-after="true" icon="contact_phone" label-placeholder="Phone Number" v-model="contact.phone_number"/>
                                    </div>
                                    
                                    <!-- <h4>Email:  <input type=text v-model="newContactEmail"></h4> -->
                                  </form>
                                  <br>
                                  <a href="/contacts">
                                    <div style="text-align: center">
                                      <vs-button v-on:click="createContact()">
                                        Add Contact
                                      </vs-button>
                                    </div>
                                    
                                  </a>
                                </div>
                              </vs-popup>
                            </vs-dropdown-item>
                              
                            
                            <vs-dropdown-item>
                              <vs-button color="danger" type="flat" v-on:click="deleteContact(contact)">Remove Contact</vs-button>
                            </vs-dropdown-item>
                          </vs-dropdown-menu>
                        </vs-dropdown>
                        </div>

                        


                        <!-- <div style="text-align: right">
                        <vs-dropdown>
                          <vs-button class="btn-drop" type="border" icon="expand_more"></vs-button>
                          

                          <vs-dropdown-menu>
                            <vs-dropdown-item>
                              <vs-button @click="popupActivo=true" color="primary" type="flat">Edit Contact</vs-button> 
                                <vs-popup class="holamundo" style="text-align: center;" title="" :active.sync="popupActivo">
                                  <div class="form-group">
                                    <form style="text-align: center;">
                                      <div style="display: inline-block;">
                                        <vs-input label-placeholder="First Name" v-model="contact.first_name"/>
                                      <vs-input label-placeholder="Last Name" v-model="contact.last_name"/>
                                      <vs-input icon-after="true" icon="contact_phone" label-placeholder="Phone Number" v-model="contact.phone_number"/>
                                    
                                      </div>
                                      
                                      <br>

                                      
                                      <a href="/contacts">
                                      <div style="text-align: center">
                                        <vs-button v-on:click="editContact()">
                                          Submit changes
                                        </vs-button>
                                      </div>
                                      
                                    </a>
                                    </form>
                                    
                                  </div>
                                </vs-popup>
                            </vs-dropdown-item>
                            <vs-dropdown-item>
                              <vs-button v-on:click="deleteContact(contact)" color="danger" type="flat">Remove Contact</vs-button>
                              
                            </vs-dropdown-item>
                            
                          </vs-dropdown-menu>
                        </vs-dropdown>
                        </div> -->

                        <!-- <a v-on:click="getContact()" class="pull-right text-green">Update info</a> -->
                      	<h5><a href="timeline.html" class="profile-link">{{ contact.first_name}} {{ contact.last_name }}</a></h5>
                        <p>{{ contact.email }}</p>                      
                        <p>{{ contact.phone_number }}</p>

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
      popupActivo1: false,
      popupActivo2: false,
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
      console.log("sending help to all contacts...");
      axios.post("http://localhost:3000/api/twilio/sms").then(response => {
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