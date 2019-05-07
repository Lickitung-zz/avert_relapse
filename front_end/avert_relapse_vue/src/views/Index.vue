<template>
  <div class="index">
    <!-- begin new template here -->
    <div class="container">
        <div class="row">
          <br>
          <!-- Newsfeed Common Side Bar Left
          ================================================= -->
          <div class="col-md-3 static">
            <div class="profile-card" :style="{ backgroundImage: 'url(' + profile_pics.cover_photo + ')'}">
              
                <!-- <div v-for="profile_pic in profile_pics"> -->
                  <img :src="profile_pics.profile_pic" alt="user" class="profile-photo" />
                <!-- </div> -->
                <!-- <div v-for="newAccount in showAccounts"> -->
                  <!-- <a :href="timelines">This let's you click</a> -->
                  <!-- <a :href="timelines.id">This doesn't let you click</a> -->
                  <h5><router-link v-bind:to="'/accounts/timeline/' + accountId.id" class="text-white">{{ accounts.name }}</router-link></h5>         
                  
               <!--  </div> -->
                  
                
                <a href="#" class="text-white"><i class="ion ion-android-person-add"></i> 0 followers</a>
              
              
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
                <li><a href="newsfeed-messages.html" title="Linda Lohan"><img src="https://s3-eu-west-1.amazonaws.com/yhahsn.org.uk/wp-content/uploads/2015/08/placeholder-profile-male.jpg" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Brian Rice"><img src="https://media.licdn.com/dms/image/C5603AQH3C4VuWvnYow/profile-displayphoto-shrink_800_800/0?e=1562803200&v=beta&t=_zQBBXgwNXNMas4jD2Rhs1Y7Q1Cb6mKlo5Zcu8SzUz8" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="John Doe"><img src="https://s3-eu-west-1.amazonaws.com/yhahsn.org.uk/wp-content/uploads/2015/08/placeholder-profile-male.jpg" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Alexis Clark"><img src="https://avatars2.githubusercontent.com/u/40277111?s=460&v=4" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="James Carter"><img src="https://s3-eu-west-1.amazonaws.com/yhahsn.org.uk/wp-content/uploads/2015/08/placeholder-profile-male.jpg" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Robert Cook"><img src="https://s3-eu-west-1.amazonaws.com/yhahsn.org.uk/wp-content/uploads/2015/08/placeholder-profile-male.jpg" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Richard Bell"><img src="https://s3-eu-west-1.amazonaws.com/yhahsn.org.uk/wp-content/uploads/2015/08/placeholder-profile-male.jpg" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Anna Young"><img src="https://s3-eu-west-1.amazonaws.com/yhahsn.org.uk/wp-content/uploads/2015/08/placeholder-profile-male.jpg" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Julia Cox"><img src="https://s3-eu-west-1.amazonaws.com/yhahsn.org.uk/wp-content/uploads/2015/08/placeholder-profile-male.jpg" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
              </ul>
            </div>
            <!--chat block ends-->
          </div>
          
          <div class="col-md-7">

            <!-- Post Create Box
            ================================================= -->
            <form v-on:submit.prevent="createPost()">
              <div class="create-post">
                <div class="row">
                  <div class="col-md-7 col-sm-7">
                    <div class="form-group">
                     
                        <img :src="profile_pics.profile_pic" alt="" class="profile-photo-md" />
                     
                      <textarea name="texts" id="exampleTextarea" cols="30" rows="1" class="form-control" placeholder="Write what you wish" v-model="createText"></textarea>

                      <!-- <input id="my-search" class="form-control input-group-lg" type="search" name="Searchsss" title="Search here" placeholder="Search for friends and accounts" v-model="createText"/> -->
                    </div>
                  </div>
                  
                    <div class="col-md-5 col-sm-5">
                      <div class="tools">
                        <ul class="publishing-tools list-inline">
                          <li><a href="#"><i class="ion-compose"></i></a></li>
                          <li><a href="#"><i class="ion-images"></i></a></li>
                          <li><a href="#"><i class="ion-ios-videocam"></i></a></li>
                          <li><a href="#"><i class="ion-map"></i></a></li>
                        </ul>
                        <button type="submit" href="#" class="btn btn-primary pull-right">Publish</button>
                      </div>
                    </div>
                  
                </div>
              </div>
            </form>
            <!-- Post Create Box End-->

            <!-- Post Content
            ================================================= -->
        
            <div v-for="post in posts"> <!-- .slice().reverse() -->
              <div class="post-content">
                <div v-if="post.text">
                  <!-- <div v-if="post.image"> 
                    <img :src="{{ post.image }}" />
                  </div> -->
                  <div class="post-container">
                    <div v-for="info in loggedInAccount">

                      <img :src="loggedInAccount.profile_pic" alt="user" class="profile-photo-md pull-left" />
                      
                    </div>
                    <div class="post-detail">
                      <div class="user-info">
                        <h5>
                          <router-link v-bind:to="'/accounts/timeline/' + accountId.id" class="profile-link">{{ post.published_by }}</router-link>
                          
                          <!-- <a href="timeline.html" class="profile-link">{{ post.published_by }}</a> -->
                          <!-- <span class="following">following</span> -->
                          <!-- <div v-on:click.prevent="deletePost()"> -->                                              
                            <br>                                                   
                          <!-- </div> -->
                        </h5>
                        <p class="text-muted">Published at {{ post.published_date }}</p>
                      </div>
                      <div class="reaction">
                        <a class="btn text-green"><i class="icon ion-thumbsup"></i> 0</a>
                        <a class="btn text-red"><i class="fa fa-thumbs-down"></i> 0</a>


                        <vs-dropdown >
                          <a class="a-icon" href="#">
                            
                            <vs-icon class="" icon="expand_more" style="font-size: 2rem"></vs-icon>
                          </a>

                          <vs-dropdown-menu>
                            <vs-dropdown-item>
                             <vs-button type="flat">
                              <span>
                                <a href="#">Update Post</a>
                              </span>
                            </vs-button>
                            </vs-dropdown-item>
                            <vs-dropdown-item>
                              <vs-button type="flat" v-on:click="deletePost(post)">
                              
                                Delete Post
                              
                            </vs-button>
                            </vs-dropdown-item>
                          </vs-dropdown-menu> 
                        </vs-dropdown>

                        
                      </div>
                      <div class="line-divider"></div>
                      <div class="post-text">
                        <p>{{  post.text }} <!-- {{post.id}} --> <i class="em em-anguished"></i> <i class="em em-anguished"></i> <i class="em em-anguished"></i></p>
                      </div>
                      <div class="line-divider"></div>
                      <div class="post-comment" v-for="comment in posts[0].comments">
                        
                        <img :src="post.profile_pic" alt="" class="profile-photo-sm" />
                        <p><a href="timeline.html" class="profile-link">{{post.name}}</a></p>
                          
                            <!-- <i class="em em-laughing"></i>{{posts[0].text}}</p> -->
                            <!-- <p>{{post.comments[0].body }}</p> -->
                            <i class="em em-laughing"></i>{{post.comments[0].body}}
                            <br>
                          
                          
                      </div>
                      <!-- <div class="post-comment">
                        <img src="http://placehold.it/300x300" alt="" class="profile-photo-sm" />
                        <p><a href="timeline.html" class="profile-link">John</a> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud </p>
                      </div> -->
                      <div class="post-comment">
                        <div v-for="info in loggedInAccount">
                          <img :src="loggedInAccount.profile_pic" alt="" class="profile-photo-sm" />
                        </div>
                        <input type="text" class="form-control" placeholder="Post a comment">
                      </div>
                    </div>
                  </div>
                </div>
                <div v-else>
                    <h3 style="text-align: center;">There aren't any posts to see here! Why not post something or find some friends?</h3>
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
                <li><i class="icon ion-ios-telephone-outline"></i>+1 (888) 789-8021</li>
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
      contacts: [],
      posts: [],
      currentPostId: "",
      messages: "",
      accounts: [],
      showAccounts: [],
      profile_pics: [],
      loginEmail: "",
      loginPassword: "",
      help: "",
      newContactFirstName: "",
      newContactLastName: "",
      newContactPhoneNumber: "",
      newContactEmail: "",
      newMessage: "",
      loggedInAccount: "",
      createText: "",
      timelines: "",
      accountId: "",
      body: "",
      comments: "",
      // newContactAccountId: User.account.id,
      errors: []
    };
  },
  activeLoading:false,

  created: function() {
    axios.get("/api/posts").then(response => {
      this.posts = response.data;
    });
    axios.get("/api/accounts/logged_in").then(response => {
      this.loggedInAccount = response.data;
    });
    axios.get("/api/accounts/show_name").then(response => {
      this.accounts = response.data;
    });
    axios.get("/api/accounts/show_profile_pic").then(response => {
      this.profile_pics = response.data;
    });
    axios.get("/api/accounts").then(response => {
      this.showAccounts = response.data;
    });
    axios.get("/api/accounts/timeline/" + this.$route.params.id).then(response => {
      console.log(response.data);
      this.timelines = response.data;
    });
    axios.get("/api/accounts/account_id").then(response => {
      this.accountId = response.data;
    });
    axios.get("/api/posts/" + this.$route.params.id).then(response => {
      console.log(response.data);
      this.comments = response.data;
    });
  },
  methods: {
    createPost: function() {
      var params = {
        text: this.createText
      };
      console.log("creating post...")
      axios.post('/api/posts', params).then(
        response => {
          console.log(response);
        });
      location.reload();
    },
    deletePost: function(post) {
      console.log("deleting the post...");
      axios.delete('/api/posts/' + post.id ).then(
        response => {
          console.log("deleted the post...");
        });
      location.reload();
    },
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
    openLoading(type){
      this.activeLoading = true
      this.$vs.loading({
        type:type,
      })
      setTimeout( ()=> {
        this.activeLoading = false
        this.$vs.loading.close()
      }, 3000);
    }
  }
};
</script>