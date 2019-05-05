<!-- <template>
  <div class="login">
    <h1>This is the login page</h1>
    <p>Email address: <input type="text" v-model="loginEmail"></p>
    <p>Password: <input type="text" v-model="loginPassword"></p>
    <a href="/signup">New User? Click here.</a> | 
    <button v-on:click="login()">Login</button>
  </div>
</template> -->



<template>
  <div class="home">
    <!-- <h1>{{ message }}</h1> -->
    <!-- Landing Page Contents
    ================================================= -->
    <div id="lp-register">
      <div class="container wrapper">
        <div class="row">
          <div class="col-sm-5">
            
          </div>
          <div class="col-sm-4 col-sm-offset-1">
            <div class="reg-form-container"> 
            
              

                <!--Login-->
                <div class="tab-pane" id="login">
                  <h3>Sign in</h3>
                  <br>
                  <p class="text-muted">Sign to your account</p>
                  
                  <!--Login Form-->
                  <form v-on:submit.prevent="login()" name="Login_form" id='Login_form'>
                     <div class="row">
                      <div class="form-group col-xs-12">
                      
                        <label for="my-email" class="sr-only">Email</label>
                        <input id="my-email" class="form-control input-group-lg" type="text" name="Email" title="Enter Email" placeholder="Your Email" v-model="email"/>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-xs-12">
                        
                        <label for="my-password" class="sr-only">Password</label>
                        <input id="my-password" class="form-control input-group-lg" type="password" name="password" title="Enter password" placeholder="Password" v-model="password"/>
                      </div>
                      <br>
                      <div style="padding-left: 50%">
                        <br>
                        <input type="submit" class="btn btn-primary" value="Login">
                      </div>
                      
                    </div>
                  </form>
                  <br>
                  <div style="padding-left: 25%">
                    <p><a href="#">Forgot Password?</a></p>
                  </div>
                  
                  <!--Login Form Ends--> 
                  
                  
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6 col-sm-offset-6">
          
            <!--Social Icons-->
            <!-- <ul class="list-inline social-icons">
              <li><a href="#"><i class="icon ion-social-facebook"></i></a></li>
              <li><a href="#"><i class="icon ion-social-twitter"></i></a></li>
              <li><a href="#"><i class="icon ion-social-googleplus"></i></a></li>
              <li><a href="#"><i class="icon ion-social-pinterest"></i></a></li>
              <li><a href="#"><i class="icon ion-social-linkedin"></i></a></li>
            </ul> -->
          </div>
        </div>
      </div>
    </div>

    <!--preloader-->
    <!-- <div id="spinner-wrapper">
      <div class="spinner"></div>
    </div> -->

  </div>
</template>


<!-- <template>
  <div class="login">
    <div class="container">
      <hr>
      <hr>
      Login Form
        <form v-on:submit.prevent="login()" name="Login_form" id='Login_form'>
           <div class="row">
            <div class="form-group col-xs-12">
              <label for="my-email" class="sr-only">Email</label>
              <input id="my-email" class="form-control input-group-lg" type="text" name="Email" title="Enter Email" placeholder="Your Email" v-model="email"/>
            </div>
          </div>
          <div class="row">
            <div class="form-group col-xs-12">
              <label for="my-password" class="sr-only">Password</label>
              <input id="my-password" class="form-control input-group-lg" type="password" name="password" title="Enter password" placeholder="Password" v-model="password"/>
            </div>
            <input type="submit" class="btn btn-primary" value="Login">
          </div>
        </form>
      Login Form Ends 
    </div>
  </div>
</template> -->

<script>
import axios from "axios";

export default {
  data: function() {
    return {
      email: "",
      password: "",
      errors: []
    };
  },
  created: function() {
    axios.get("/api/users/id").then(response => {
      this.user_id = response.data;
    });
  },
  methods: {
    login: function() {
      var params = {
        email: this.email,
        password: this.password
      };
      axios
        .post("/api/sessions", params)
        .then(response => {
          axios.defaults.headers.common["Authorization"] =
            "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          this.$router.push("/index");
        })
        .catch(error => {
          this.errors = ["Invalid email or password."];
          this.email = "";
          this.password = "";
        });
      },
    submit: function() {
      var params = {
        email: this.email,
        password: this.password
      };
      axios
        .post("/api/sessions", params)
        .then(response => {
          axios.defaults.headers.common["Authorization"] =
            "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          this.$router.push("/index");
        })
        .catch(error => {
          this.errors = ["Invalid email or password."];
          this.email = "";
          this.password = "";
        });
      }
  }
};
</script>
