<template>
  <div id="app">
      <div id="header" class="container-fluid row">
        <div id="left" class="col">
            <div id="icon">
                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-arrow-left-square-fill" viewBox="0 0 16 16">
                    <path d="M16 14a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12zm-4.5-6.5H5.707l2.147-2.146a.5.5 0 1 0-.708-.708l-3 3a.5.5 0 0 0 0 .708l3 3a.5.5 0 0 0 .708-.708L5.707 8.5H11.5a.5.5 0 0 0 0-1z"/>
                </svg>
            </div>
            <div id="textbox">Back</div>
        </div>
        <div id="mid" class="col" align="center">PAYMENT</div>
        <div id="right" align="right" class="col row" >
            <div class="col-10">Home</div>
            <div class="col-2">Payment</div>
        </div>
    </div>

    <div id="main">
        <div id="object">
            <div id="business">
                <div id="business-left">
                    <div id="business-2500">Business name</div>
                    <div id="item-inc">1 item (expand)</div>
                </div>
                <div id="business-right">
                    <div id="business-2500">25.00 NOK</div>
                    <div id="item-inc">inc. VAT</div>
                </div>
            </div>
            <div id="credit">
                <div id="credit-above">
                    <div id="credit-above-noti">
                        Checkout is running in test mode. Click here for test data.
                    </div>
                </div>
                <div id="credit-below"> 
                    <div id="credit-below-left">
                        <div id="icon-check" class="form-check">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                            <label class="form-check-label" for="flexRadioDefault1">
                            </label>
                        </div>
                        <div id="content-check">Credit Card<span id="content-check-smaller"> - credit or debit</span></div>
                        
                    </div>
                    <div id="credit-below-right" style="font-size: 0.5rem;">
                        <!-- <div id="visa"><i class="fab fa-cc-visa fa-3x"></i></div>
                        <div id="mastercard"><i class="fab fa-cc-mastercard fa-3x"></i></div> -->
                        <a href="#">
                        <img alt="Credit Card Logos" title="Credit Card Logos" src="http://www.credit-card-logos.com/images/visa_credit-card-logos/visa_mastercard_logo_6.gif" width="102" height="32" border="0" />
                        </a>
                        
                    </div>
                    
                </div>
            </div>
            <form action="#" id="filling">
                <!-- <input type="text" id="card-number" placeholder="Card number" size="50"><br><br> -->
                <!-- <div id="card-number" class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1">s</span>
                    </div>
                    <input type="text" class="form-control" placeholder="Card number" aria-label="Username" aria-describedby="basic-addon1">
                </div> -->
                <label>
                    <input id="card-icon" type="text" placeholder="Card number" size="37">
                </label>
  
                <div id="identification">
                    <div id="iden-left">
                        <input type="text" placeholder="MM/YY" size="18">
                    </div>
                    <div id="iden-right">
                        <!-- <input type="text" placeholder="CVV" size="18"> -->
                        <span id="cvv"> <input type="text" placeholder="CVV" size="18"> </span>
                    </div>
                </div>
                <!-- <button id="button-payment" type="button" class="btn btn-primary btn-block">Pay NOK 25.00</button> -->
                <button id="button-payment" type="button">Pay NOK 25.00</button>
            </form>
            <div id="cancle">
                <!-- <button id="button-cancle" type="button" class="btn btn-secondary btn-block">Cancle payment</button> -->
                <button id="button-cancle" type="button"> <span id="text-cancle">Cancle payment </span></button>
            </div>
            <div id="footer">
                <div id="footer-left">
                    <a href="#">
                        <img alt="Credit Card Logos" title="Credit Card Logos" src="https://upload.wikimedia.org/wikipedia/en/thumb/a/ae/Flag_of_the_United_Kingdom.svg/1200px-Flag_of_the_United_Kingdom.svg.png" width="25" height="15" border="0" />
                    </a>
                    <span id="dintero">Dintero </span> <span id="checkout">Checkout</span>
                </div>
                <div id="footer-right">
                    <span id="terms">Terms</span> 
                </div>
            </div>
            
            
        </div>
    </div>




  </div>
</template>

<script>

export default {
  name: 'Payment',
  components: {
    
  }
}
</script>

<style scoped>  



#header {
    padding-bottom: 10px;
}

#left {
    display: flex;
    margin-top: 10px;
    font-weight: bold;
    font-weight: 18px;
}

#icon {
    margin-right: 10px;
    margin-top: -1px;
}

#mid {
    margin-top: 10px;
    font-weight: bold;
    font-size: 18px;
}

#right {
    margin-top: 10px;
    font-weight: bold;
    font-size: 14px;
}

#main {
    font-family: Avenir, Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    /* text-align: center; */
    color: #2c3e50;
    margin-top: 0px;
    background: #F8F8F8;
    height: 100vh;
       
    display: flex;
    justify-content: center;
}


#object {
    width: 450px;
    /* border: 1px solid blue;  */
    padding-top: 60px;
}

#business {
    width: 450px;
    /* border: 1px solid green; */
    display: flex;
    justify-content: space-between;
    padding-bottom: 15px;
}

#business-left {
    padding-left: 10px;
}

#business-right {
    padding-right: 10px;
    text-align: right;
}

#business-2500 {
    font-weight: bold;
    font-size: 16px;
    color: #005e76;
}

#item-inc {
    font-size: 12px;
    color: #005e76;
}

#credit {
    width: 450px;
    /* border: 1px solid brown; */
    padding-top: 10px;
    padding-bottom: 0px;
    background: white;
    border-top: 4px solid #f0f0f0;
    border-bottom: 4px solid #f0f0f0;
}

#credit-above {
    width: 450px;
    /* border: 1px solid purple; */
    /* text-align: center; */
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 5px;
    
}

#credit-above-noti {
    width: 430px;
    /* border: 1px solid black; */
    text-align: center;
    margin-top: 5px;
    margin-bottom: 5px;
    font-size: 13px;
    padding-top: 5px;
    padding-bottom: 5px;
    background: #fffbe7;
    color: #d8b920;
}

#credit-below {
    width: 450px;
    /* border: 1px solid red; */
    display: flex;
    justify-content: space-between; 
}

#credit-below-left {
    padding-left: 10px;
    display: flex;
}

#icon-check {
    padding-bottom: 10px;
}

#content-check{
    font-size: 15px;
    color: #005e76;
    font-weight: bold;
    padding-top: 1px;
}

#content-check-smaller {
    font-weight: normal;
    font-size: 13px;
}

#credit-below-right {
    padding-right: 10px;
    display: flex;
    justify-content: space-between;
}

#filling {
    width: 450px;
    /* border: 1px solid green; */
}

#card-number {
    padding-top: 25px;
    padding-left: 15px;
    padding-right: 15px;
}

/* #card-image {
    background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQUAAADBCAMAAADxRlW1AAAAb1BMVEX39/cAAAD///+jo6MvLy96enqPj48nJydubm4NDQ1oaGhBQUFfX1/7+/tOTk6pqanCwsLc3Nzi4uLPz8/x8fGJiYm4uLi/v7/W1taBgYEiIiKvr6/q6uqYmJhsbGw8PDwYGBhISEgRERFZWVl1dXVUBxv2AAAEG0lEQVR4nO2da1PqMBRFk0NBXrl9UN4gov7/33jZytgUAy3ahw17fU2HyV6mzTnTMVWKEEIIIYQQUhnGGPEAY36hQGQXhYN5v9vMB71lcjLxMwUm6r9ob3hepHeLMJLMR21PvGqGq/s8SNpve8q1MI3ljoXQa3u6tbFWJZeD2f1re641slmVWg6y8u6BkGdbQoNEbc+ydvaFGh5AgtaDAg1m1vYMGyG8qcHs2p5fQ8xu7RRyvLj62JuptpuAX2Pi7fRSQ3pdw2WdsI5/WH7/MU4t4W6fjza+ek9c3A+H2AsFnxhJx7l00bVs8p5bCB45AEZCO15wJZ1J7KuKdpMOkq8CFm4Nsrau6fsn4ZRwayWcXElY4pKOI3arHLsWg1kUXeEDmyzj3PWXlqH9ZGx8es1g3xMbpwVrKSS+LgVlRjdT2jvEP1+XwulvPbi5S5hlNtzz14LdLjqKAbt6vtlrdJ0spqOKtpdKC3NrDDl8xTw6LFhbqc9LQbL2MnBYyDbKkb+PhVPOrKl6ogVaoAVaALQAaAHQAqAFQAugtIXXtl+j1MpzSQs68JnXshYeBFoAtABoAdACoAVAC4AWAC0AWgC0AGgB0AKgBUALgBYALQBaALQAaAHQAqAFQAuAFgAtgIL3lGHPX8JjWQttv0qslbLvKfnOmhZogRY+R2lB0cJ5lBYULZxHaUHRwnmUFhQtnEdpQZW1UEuXV2fo7wl+b0GGh0nVHJo96aEKC3WcbdbsUQ+08BGBFhQtnCPQgqKFcwRaULRwjlCBhWMNFt47Z2E9rZy34qM3q4R9xEcC9pSKFj6hBUALgBYALQBaALQAaAHQAqAFQAuAFgAtAFoAtABoAdACoAVAC4AWAC0AWgC0AGgB0AKgBUALgBYALQBaALQAaAHQAqAFQAuAFgAtAFoAtABoAdACoAVAC4AWAC0AWgC0AGgB0AKgBUALoMACv2GMUet71mkLs2sKCb5iOj5k/4DfNh9+t2CibPhBvnPv+HdWk2TDE38tyDyLuXQseck+Wahjf2+JLKTeuSxYm4TjjvEDCbOQji0i/2DQKz8Xg0lHWUb3CUnGshD4acE6BlnrxJnRfnDoZx/vCbsacFULwN4ltF77p0G2dsDoynK3n49aj41fd4WRvR3vejWQ2pfpzUz88WAkyZ8pc70+zi8ZraczEQ9WhDEi8Tof7dZhMPKWv1YHgygxtRxD0iC72f54kevlprX0RT8Et4tjE7c9v0ZYFGyAMiv+jc5T3DM/gIawRCkk8VPb06yXqFQ9aNS4+Kc6yyEpWxTLou251sb+jvpH1KD4BzvI++6+7kjSXlD8q53idZ7c3xKIrAaTtmdeGcE6Mj9ri06ls4qX4X7Qbfa9xSqVX3WGxnS+jfCiIySEEEIIIeQv8R++gXwSs3yTewAAAABJRU5ErkJggg==");
    background-repeat: no-repeat;
    background-size: 25px;
    width: 30px;
    height: 30px;
    display: inline-block;
    background-position: center;
} */


/* #input-card-number {
    background-color: white;
    border-top: 1px solid #f0f0f0;
    border-right: 1px solid #f0f0f0;
    border-bottom: 1px solid #f0f0f0;
    border-left: none;
    margin-left: 15px;
} */

#identification {
    width: 450px;
    /* border: 1px solid red; */
    display: flex;
    justify-content: space-between;
    /* margin-top: 5px; */
}

#iden-left {
    margin-left: 15px;
}

#card-icon {
  padding: 1px 40px;
}

#iden-right {
    margin-right: 26px; /*not 15 as iden-left because for straight with input card-number above*/
}

/* #button-payment {
    margin-left: 15px; 
    width: 420px;
    margin-top: 16px;
    background-color: #1ad48f;
    border: none;
    border-bottom: 1.5px solid black;
    color: #2b6a7a;
    font-weight: bold;
} */

#button-payment {
    margin-left: 15px; 
    width: 413px;
    margin-top: 16px;
    background-color: #1ad48f;
    border: none;
    border-bottom: 2px solid #2ca11f;
    color: #2b6a7a;
    font-weight: bold;
    border-radius: 3px;
    height: 40px;
}
#button-payment:hover {
    background-color: #16dc93;
}

/* #button-cancle {
    padding-left: 10px; 
    padding-right: 10px;
    width: 450px;
    margin-top: 25px;
} */

#button-cancle {
    padding-left: 10px; 
    padding-right: 10px;
    width: 450px;
    margin-top: 25px;
    background-color: white;
    border: none;
    border-top: 3px solid #f0f0f0;
    border-bottom: 3px solid #f0f0f0;
    height: 50px;
    
}

#text-cancle {
    position: relative;
    margin-left: 320px;
    font-size: 14px;
    color: #005e76;
    font-weight: bold;
}

#footer {
    display: flex;
    justify-content: space-between;
    width: 450px;
    /* border: 1px solid red; */
    margin-top: 5px;
}

#footer-left {
    padding-left: 15px;
}

#footer-right {
    padding-right: 15px;
}

#dintero {
    font-weight: bold;
    color: #005e76;
    font-size: 16px;
    margin-left: 10px;
    padding-top: 5px;
}

#checkout {
    color: #005e76;
    font-size: 12px;
}

#terms {
    color: #005e76;
    font-size: 15px;
}

#visa {
    margin-right: 5px;
}

#triangle {
    width: 0px;
    height: 0px;
    background: transparent;
    border-color: green transparent #f0f0f0 transparent ;
    border-style: solid;
    border-width: 0px 10px 10px 10px;
    position: absolute;
    left: 402px;
    top:255px
}

input {
    border: 1px solid #f0f0f0;
    border-radius: 2px;
}

input::placeholder {
    color: #005e76;
    font-size: 11px;
    position: absolute;
    padding-top: 2px;
    padding-left: 5px;
}

/* #input-image {
    background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQUAAADBCAMAAADxRlW1AAAAb1BMVEX39/cAAAD///+jo6MvLy96enqPj48nJydubm4NDQ1oaGhBQUFfX1/7+/tOTk6pqanCwsLc3Nzi4uLPz8/x8fGJiYm4uLi/v7/W1taBgYEiIiKvr6/q6uqYmJhsbGw8PDwYGBhISEgRERFZWVl1dXVUBxv2AAAEG0lEQVR4nO2da1PqMBRFk0NBXrl9UN4gov7/33jZytgUAy3ahw17fU2HyV6mzTnTMVWKEEIIIYQQUhnGGPEAY36hQGQXhYN5v9vMB71lcjLxMwUm6r9ob3hepHeLMJLMR21PvGqGq/s8SNpve8q1MI3ljoXQa3u6tbFWJZeD2f1re641slmVWg6y8u6BkGdbQoNEbc+ydvaFGh5AgtaDAg1m1vYMGyG8qcHs2p5fQ8xu7RRyvLj62JuptpuAX2Pi7fRSQ3pdw2WdsI5/WH7/MU4t4W6fjza+ek9c3A+H2AsFnxhJx7l00bVs8p5bCB45AEZCO15wJZ1J7KuKdpMOkq8CFm4Nsrau6fsn4ZRwayWcXElY4pKOI3arHLsWg1kUXeEDmyzj3PWXlqH9ZGx8es1g3xMbpwVrKSS+LgVlRjdT2jvEP1+XwulvPbi5S5hlNtzz14LdLjqKAbt6vtlrdJ0spqOKtpdKC3NrDDl8xTw6LFhbqc9LQbL2MnBYyDbKkb+PhVPOrKl6ogVaoAVaALQAaAHQAqAFQAugtIXXtl+j1MpzSQs68JnXshYeBFoAtABoAdACoAVAC4AWAC0AWgC0AGgB0AKgBUALgBYALQBaALQAaAHQAqAFQAuAFgAtgIL3lGHPX8JjWQttv0qslbLvKfnOmhZogRY+R2lB0cJ5lBYULZxHaUHRwnmUFhQtnEdpQZW1UEuXV2fo7wl+b0GGh0nVHJo96aEKC3WcbdbsUQ+08BGBFhQtnCPQgqKFcwRaULRwjlCBhWMNFt47Z2E9rZy34qM3q4R9xEcC9pSKFj6hBUALgBYALQBaALQAaAHQAqAFQAuAFgAtAFoAtABoAdACoAVAC4AWAC0AWgC0AGgB0AKgBUALgBYALQBaALQAaAHQAqAFQAuAFgAtAFoAtABoAdACoAVAC4AWAC0AWgC0AGgB0AKgBUALoMACv2GMUet71mkLs2sKCb5iOj5k/4DfNh9+t2CibPhBvnPv+HdWk2TDE38tyDyLuXQseck+Wahjf2+JLKTeuSxYm4TjjvEDCbOQji0i/2DQKz8Xg0lHWUb3CUnGshD4acE6BlnrxJnRfnDoZx/vCbsacFULwN4ltF77p0G2dsDoynK3n49aj41fd4WRvR3vejWQ2pfpzUz88WAkyZ8pc70+zi8ZraczEQ9WhDEi8Tof7dZhMPKWv1YHgygxtRxD0iC72f54kevlprX0RT8Et4tjE7c9v0ZYFGyAMiv+jc5T3DM/gIawRCkk8VPb06yXqFQ9aNS4+Kc6yyEpWxTLou251sb+jvpH1KD4BzvI++6+7kjSXlD8q53idZ7c3xKIrAaTtmdeGcE6Mj9ri06ls4qX4X7Qbfa9xSqVX3WGxnS+jfCiIySEEEIIIeQv8R++gXwSs3yTewAAAABJRU5ErkJggg==")

    ;
    background-repeat: no-repeat;
    background-size: 30px;
} */

label {
    position: relative;
    margin-left: 15px;
    margin-top: 15px;
    margin-bottom: 10px;
}

label:before {
    content: "";
    position: absolute;
    left: 10px;
    top: 0;
    bottom: 0;
    width: 20px;
    background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQUAAADBCAMAAADxRlW1AAAAb1BMVEX39/cAAAD///+jo6MvLy96enqPj48nJydubm4NDQ1oaGhBQUFfX1/7+/tOTk6pqanCwsLc3Nzi4uLPz8/x8fGJiYm4uLi/v7/W1taBgYEiIiKvr6/q6uqYmJhsbGw8PDwYGBhISEgRERFZWVl1dXVUBxv2AAAEG0lEQVR4nO2da1PqMBRFk0NBXrl9UN4gov7/33jZytgUAy3ahw17fU2HyV6mzTnTMVWKEEIIIYQQUhnGGPEAY36hQGQXhYN5v9vMB71lcjLxMwUm6r9ob3hepHeLMJLMR21PvGqGq/s8SNpve8q1MI3ljoXQa3u6tbFWJZeD2f1re641slmVWg6y8u6BkGdbQoNEbc+ydvaFGh5AgtaDAg1m1vYMGyG8qcHs2p5fQ8xu7RRyvLj62JuptpuAX2Pi7fRSQ3pdw2WdsI5/WH7/MU4t4W6fjza+ek9c3A+H2AsFnxhJx7l00bVs8p5bCB45AEZCO15wJZ1J7KuKdpMOkq8CFm4Nsrau6fsn4ZRwayWcXElY4pKOI3arHLsWg1kUXeEDmyzj3PWXlqH9ZGx8es1g3xMbpwVrKSS+LgVlRjdT2jvEP1+XwulvPbi5S5hlNtzz14LdLjqKAbt6vtlrdJ0spqOKtpdKC3NrDDl8xTw6LFhbqc9LQbL2MnBYyDbKkb+PhVPOrKl6ogVaoAVaALQAaAHQAqAFQAugtIXXtl+j1MpzSQs68JnXshYeBFoAtABoAdACoAVAC4AWAC0AWgC0AGgB0AKgBUALgBYALQBaALQAaAHQAqAFQAuAFgAtgIL3lGHPX8JjWQttv0qslbLvKfnOmhZogRY+R2lB0cJ5lBYULZxHaUHRwnmUFhQtnEdpQZW1UEuXV2fo7wl+b0GGh0nVHJo96aEKC3WcbdbsUQ+08BGBFhQtnCPQgqKFcwRaULRwjlCBhWMNFt47Z2E9rZy34qM3q4R9xEcC9pSKFj6hBUALgBYALQBaALQAaAHQAqAFQAuAFgAtAFoAtABoAdACoAVAC4AWAC0AWgC0AGgB0AKgBUALgBYALQBaALQAaAHQAqAFQAuAFgAtAFoAtABoAdACoAVAC4AWAC0AWgC0AGgB0AKgBUALoMACv2GMUet71mkLs2sKCb5iOj5k/4DfNh9+t2CibPhBvnPv+HdWk2TDE38tyDyLuXQseck+Wahjf2+JLKTeuSxYm4TjjvEDCbOQji0i/2DQKz8Xg0lHWUb3CUnGshD4acE6BlnrxJnRfnDoZx/vCbsacFULwN4ltF77p0G2dsDoynK3n49aj41fd4WRvR3vejWQ2pfpzUz88WAkyZ8pc70+zi8ZraczEQ9WhDEi8Tof7dZhMPKWv1YHgygxtRxD0iC72f54kevlprX0RT8Et4tjE7c9v0ZYFGyAMiv+jc5T3DM/gIawRCkk8VPb06yXqFQ9aNS4+Kc6yyEpWxTLou251sb+jvpH1KD4BzvI++6+7kjSXlD8q53idZ7c3xKIrAaTtmdeGcE6Mj9ri06ls4qX4X7Qbfa9xSqVX3WGxnS+jfCiIySEEEIIIeQv8R++gXwSs3yTewAAAABJRU5ErkJggg==") center / contain no-repeat;
}


#cvv {
    position: relative;
    margin-left: 15px;
    margin-right: -4px;
    margin-top: 15px;
    margin-bottom: 10px;

}

#cvv:before {
    content: "";
    position: absolute;
    left: 160px;
    top: 0;
    bottom: 0;
    width: 15px;
    background: url("https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Noun_Project_question_mark_icon_1101884_cc.svg/1200px-Noun_Project_question_mark_icon_1101884_cc.svg.png") center / contain no-repeat;
}


</style>
