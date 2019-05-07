<template>
  <div class="TimelineAbout">
    <div class="container">
      <!-- Timeline
      ================================================= -->
      <div class="timeline">
        <div class="timeline-cover" :style="{ backgroundImage: 'url(' + timelines.cover_photo + ')' }">
          <!-- document.querySelector(".timeline-cover") -->
          <!-- v-bind:style="url(cover_photo)" -->
          
          <!--Timeline Menu for Large Screens-->
          <div class="timeline-nav-bar hidden-sm hidden-xs">
            <div class="row">
              <div class="col-md-3">
                <div class="profile-info">
                  <img :src="timelines.profile_pic" alt="" class="img-responsive profile-photo" />
                  <h3>{{ timelines.first_name }} {{ timelines.last_name }}</h3>
                  <a href="/update-profile-picture">Update Profile Picture</a>
                  <p class="text-muted">Creative Director</p>
                </div>
              </div>
              <div class="col-md-9">
                <ul class="list-inline profile-menu">
                  <li><a href="timeline.html" class="active">Timeline</a></li>
                  <li><a href="timeline-about.html">About</a></li>
                  <li><a href="timeline-album.html">Album</a></li>
                  <li><a href="timeline-friends.html">Friends</a></li>
                </ul>
                <ul class="follow-me list-inline" v-if="(timelines.first_name + ' ' +  timelines.last_name) === loggedInName.name">
                  
                </ul>
                <ul class="follow-me list-inline" v-else>
                  <li>1,299 people following her</li>
                  <li><button class="btn-primary">Add Friend</button></li>
                </ul>
              </div>
            </div>
          </div><!--Timeline Menu for Large Screens End-->

          <!--Timeline Menu for Large Screens-->
          <!-- <div class="timeline-nav-bar hidden-sm hidden-xs">
            <div class="row">
              <div class="col-md-3">
                <div class="profile-info">

                        
                    
                      
                        <img :src="timelines.profile_pic" alt="" class="img-responsive profile-photo" />
                        <a href="/update-profile-picture">Update Profile Picture</a>


                                              
                      <h3>{{ timelines.first_name }} {{ timelines.last_name }}</h3>
                      <p class="text-muted">Creative Director</p>
                    
                  </div>
                </div>
              </div>
              <div class="col-md-9">
                <ul class="list-inline profile-menu">
                  <li><a href="timeline.html" class="active">Timeline</a></li>
                  <li><a href="timeline-about.html">About</a></li>
                  <li><a href="timeline-album.html">Album</a></li>
                  <li><a href="timeline-friends.html">Friends</a></li>
                </ul>
                <ul class="follow-me list-inline">
                  <li>1,299 people following her</li>
                  <li><button class="btn-primary">Add Friend</button></li>
                </ul>
              </div>
            </div>
          </div> --><!--Timeline Menu for Large Screens End-->

          <!--Timeline Menu for Small Screens-->
          <div class="navbar-mobile hidden-lg hidden-md">
            <div class="profile-info">
              
                
                  <img :src="timelines.profile_pic" alt="" class="img-responsive profile-photo" />
                
                <h4>{{ timelines.first_name }} {{ timelines.last_name }}</h4>
                <p class="text-muted">Creative Director</p>
              
            </div>
            <div class="mobile-menu">
              <ul class="list-inline">
                <li><a href="timline.html" class="active">Timeline</a></li>
                <li><a href="timeline-about.html">About</a></li>
                <li><a href="timeline-album.html">Album</a></li>
                <li><a href="timeline-friends.html">Friends</a></li>
              </ul>
              <button class="btn-primary">Add Friend</button>
            </div>
          </div><!--Timeline Menu for Small Screens End-->
        </div>
        <div id="page-contents">
          <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-7">

              <!-- Post Create Box
            ================================================= -->
              <form v-on:submit.prevent="createPost()">
                <div class="create-post">
                  <div class="row">
                    <div class="col-md-7 col-sm-7">
                      <div class="form-group">
                        
                          <img :src="profile_pics.profile_pic" alt="" class="profile-photo-md" />
                          <!-- <img :src="timelines.cover_photo" alt="" class="profile-photo-md" /> -->
                         
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

              <!-- Post Create Box
              ================================================= -->
              <!-- <div class="create-post">
                <div class="row">
                  <div class="col-md-7 col-sm-7">
                    <div class="form-group">
                      
                        <img :src="profile_pics.profile_pic" alt="" class="profile-photo-md" />
                      
                      <textarea name="texts" id="exampleTextarea" cols="30" rows="1" class="form-control" placeholder="Write what you wish"></textarea>
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
                      <button class="btn btn-primary pull-right">Publish</button>
                    </div>
                  </div>
                </div>
              </div> -->
              <!-- Post Create Box End-->

              <!-- Post Content
            ================================================= -->
        
            <div v-for="post in timelinePosts"> <!-- .slice().reverse() -->
              <div class="post-content">
                <div v-if="post.text">
                  <!-- <div v-if="post.image"> 
                    <img :src="{{ post.image }}" />
                  </div> -->
                  <div class="post-container">
                    <div v-for="info in loggedInAccount">
                      <img :src="timelines.profile_pic" alt="user" class="profile-photo-md pull-left" />
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
                             <vs-button type="flat" v-on:click="deletePost(post)">
                              <span>
                                <a href="#">Update Post</a>
                              </span>
                            </vs-button>
                            </vs-dropdown-item>
                            <vs-dropdown-item>
                              <vs-button type="flat" v-on:click="deletePost(post)">
                              <span>
                                <a href="#">Delete Post</a>
                              </span>
                            </vs-button>
                            </vs-dropdown-item>
                          </vs-dropdown-menu> 
                        </vs-dropdown>
                      </div>
                      <div class="line-divider"></div>
                      <div class="post-text">
                        <p>{{  post.text }} <i class="em em-anguished"></i> <i class="em em-anguished"></i> <i class="em em-anguished"></i></p>
                      </div>
                      <div class="line-divider"></div>
                      <!-- <div class="post-comment">
                        <img src="http://placehold.it/300x300" alt="" class="profile-photo-sm" />
                        <p><a href="timeline.html" class="profile-link">Diana </a><i class="em em-laughing"></i> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud </p>
                      </div>
                      <div class="post-comment">
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
                    <h3>There aren't any posts to see here! Why not post something or find some friends?</h3>
                </div>  
                </div>
                
              </div>
              
              
            


            <!-- Post Content
            ================================================= -->

            <!-- <div class="post-content">
              <div class="post-container">
                <img src="http://placehold.it/300x300" alt="user" class="profile-photo-md pull-left" />
                <div class="post-detail">
                  <div class="user-info">
                    <h5><a href="timeline.html" class="profile-link">Linda Lohan</a> <span class="following">following</span></h5>
                    <p class="text-muted">Published a photo about 1 hour ago</p>
                  </div>
                  <div class="reaction">
                    <a class="btn text-green"><i class="icon ion-thumbsup"></i> 23</a>
                    <a class="btn text-red"><i class="fa fa-thumbs-down"></i> 4</a>
                  </div>
                  <div class="line-divider"></div>
                  <div class="post-text">
                    <p><i class="em em-thumbsup"></i> <i class="em em-thumbsup"></i> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>
                  </div>
                  <div class="line-divider"></div>
                  <div class="post-comment">
                    <img src="http://placehold.it/300x300" alt="" class="profile-photo-sm" />
                    <p><a href="timeline.html" class="profile-link">Cris </a> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam <i class="em em-muscle"></i></p>
                  </div>
                  <div class="post-comment">
                    <img src="http://placehold.it/300x300" alt="" class="profile-photo-sm" />
                    <input type="text" class="form-control" placeholder="Post a comment">
                  </div>
                </div>
              </div>
            </div> -->

            <!-- Post Content
            ================================================= -->
            <!-- <div class="post-content">
              <img src="http://placehold.it/2000x1300" alt="post-image" class="img-responsive post-image" />
              <div class="post-container">
                <img src="http://placehold.it/300x300" alt="user" class="profile-photo-md pull-left" />
                <div class="post-detail">
                  <div class="user-info">
                    <h5><a href="timeline.html" class="profile-link">John Doe</a> <span class="following">following</span></h5>
                    <p class="text-muted">Published a photo about 2 hour ago</p>
                  </div>
                  <div class="reaction">
                    <a class="btn text-green"><i class="icon ion-thumbsup"></i> 39</a>
                    <a class="btn text-red"><i class="fa fa-thumbs-down"></i> 2</a>
                  </div>
                  <div class="line-divider"></div>
                  <div class="post-text">
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt</p>
                  </div>
                  <div class="line-divider"></div>
                  <div class="post-comment">
                    <img src="http://placehold.it/300x300" alt="" class="profile-photo-sm" />
                    <p><a href="timeline.html" class="profile-link">Brian </a>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. </p>
                  </div>
                  <div class="post-comment">
                    <img src="http://placehold.it/300x300" alt="" class="profile-photo-sm" />
                    <p><a href="timeline.html" class="profile-link">Richard</a> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                  </div>
                  <div class="post-comment">
                    <img src="http://placehold.it/300x300" alt="" class="profile-photo-sm" />
                    <input type="text" class="form-control" placeholder="Post a comment">
                  </div>
                </div>
              </div>
            </div>
 -->
            <!-- Post Content
            ================================================= -->
            <!-- <div class="post-content">
              <div class="google-maps">
                <div id="map" class="map"></div>
              </div>
              <div class="post-container">
                <img src="http://placehold.it/300x300" alt="user" class="profile-photo-md pull-left" />
                <div class="post-detail">
                  <div class="user-info">
                    <h5><a href="timeline.html" class="profile-link">Sophia Lee</a> <span class="following">following</span></h5>
                    <p class="text-muted"><i class="icon ion-ios-location"></i> Went to Niagara Falls today</p>
                  </div>
                  <div class="reaction">
                    <a class="btn text-green"><i class="icon ion-thumbsup"></i> 17</a>
                    <a class="btn text-red"><i class="fa fa-thumbs-down"></i> 0</a>
                  </div>
                  <div class="line-divider"></div>
                  <div class="post-text">
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.</p>
                  </div>
                  <div class="line-divider"></div>
                  <div class="post-comment">
                    <img src="http://placehold.it/300x300" alt="" class="profile-photo-sm" />
                    <p><a href="timeline.html" class="profile-link">Sarah </a>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. <i class="em em-blush"></i> <i class="em em-blush"></i> </p>
                  </div>
                  <div class="post-comment">
                    <img src="http://placehold.it/300x300" alt="" class="profile-photo-sm" />
                    <input type="text" class="form-control" placeholder="Post a comment">
                  </div>
                </div>
              </div>
            </div> -->

            <!-- Post Content
            ================================================= -->
            <!-- <div class="post-content">
              <img src="http://placehold.it/1920x1160" alt="" class="img-responsive post-image" />
              <div class="post-container">
                <img src="http://placehold.it/300x300" alt="user" class="profile-photo-md pull-left" />
                <div class="post-detail">
                  <div class="user-info">
                    <h5><a href="timeline.html" class="profile-link">Anna Young</a> <span class="following">following</span></h5>
                    <p class="text-muted">Published a photo about 4 hour ago</p>
                  </div>
                  <div class="reaction">
                    <a class="btn text-green"><i class="icon ion-thumbsup"></i> 2</a>
                    <a class="btn text-red"><i class="fa fa-thumbs-down"></i> 0</a>
                  </div>
                  <div class="line-divider"></div>
                  <div class="post-text">
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.</p>
                  </div>
                  <div class="line-divider"></div>
                  <div class="post-comment">
                    <img src="http://placehold.it/300x300" alt="" class="profile-photo-sm" />
                    <p><a href="timeline.html" class="profile-link">Julia </a>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
                  </div>
                  <div class="post-comment">
                    <img src="http://placehold.it/300x300" alt="" class="profile-photo-sm" />
                    <input type="text" class="form-control" placeholder="Post a comment">
                  </div>
                </div>
              </div>
            </div>
          </div> -->

            </div>
            <div class="col-md-2 static">
              <div id="sticky-sidebar">
                <h4 class="grey">{{ timelines.first_name }}'s activity</h4>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">{{ timelines.first_name }}</a> commented on a photo</p>
                    <p class="text-muted">5 mins ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">{{ timelines.first_name }}</a> posted a photo</p>
                    <p class="text-muted">an hour ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">{{ timelines.first_name }}</a> liked his friend's post</p>
                    <p class="text-muted">4 hours ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">{{ timelines.first_name }}</a> shared an album</p>
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

<!-- <script>
import axios from "axios";

export default {
  data: function() {
    return {
      message: "Welcome to Avert.relapse!",
      contacts: [],
      messages: "",
      accounts: [],
      timelines: "",
      profile_pics: [],
      cover_photos: [],
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
    axios.get("/api/accounts/timeline/" + this.$route.params.id).then(response => {
      console.log(response.data);
      this.timelines = response.data;
    });
    axios.get("/api/accounts/show_name").then(response => {
      this.accounts = response.data;
    });
    axios.get("/api/accounts/show_profile_pic").then(response => {
      this.profile_pics = response.data;
    });
    axios.get("/api/accounts/show_cover_photo").then(response => {
      this.cover_photos = response.data;
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
</script> -->

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
      loggedInName: "",
      // createPost: "",
      createText: "",
      timelines: "",
      accountId: "",
      timelinePosts: "",
      // newContactAccountId: User.account.id,
      errors: []
    };
  },

  created: function() {
    axios.get("/api/accounts/show_name").then(response => {
      this.loggedInName = response.data;
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
    axios.get("/api/posts").then(response => {
      this.posts = response.data;
    });
    axios.get("/api/accounts").then(response => {
      this.showAccounts = response.data;
    })
    axios.get("/api/accounts/timeline/" + this.$route.params.id).then(response => {
      console.log(response.data);
      this.timelines = response.data;
    });
    axios.get("/api/posts/" + this.$route.params.id).then(response => {
      console.log(response.data);
      this.timelinePosts = response.data;
    });
    axios.get("/api/accounts/account_id").then(response => {
      this.accountId = response.data;
    })
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
    }
  }
};
</script>