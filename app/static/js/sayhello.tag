<sayhello>

  <div class="ui center aligned segment">
    <h1>Say Hello!!</h1>
    <form onsubmit={ setName }>
      <input type="text" placeholder="Enter name"></input>
      <button class="circular ui green button">Say hello</button>
    </form>
    <h3 hidden={ !isNameSet }>Hello { name }</h3>
  </div>

  this.name = "" ;
  this.isNameSet = false ;
  
  setName( e ){
    var text = e.target[0].value ;
    this.isNameSet = true ;
    this.name = text ;
  }
</sayhello>
