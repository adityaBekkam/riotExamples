<tabularStocks>

  <div class="ui center aligned one column nine wide padded grid">
    <div class="row">
      <form class="ui huge form" onsubmit={ pushStockItems }>
        <div class="fields">
          <div class="field">
            <input type="text" placeholder="Stock Title"></input>
          </div>
          <div class="field">
            <input type="text" placeholder="Stock Value"></input>
          </div>
        </div>
        <div class="ui center aligned basic segment">
          <button class="ui grey button">SUBMIT</button>
        </div>
      </form>
    </div>
  </div>

  <div class="ui hidden divider"></div>

  <table class="ui celled striped padded two column table">
    <thead>
      <tr>
        <th>Title</th>
        <th>Value</th>
      </tr>
    </thead>
    <tbody>
      <tr each={ stockItems }>
        <td class="left aligned">{ title }</td>
        <td class="left aligned">{ value }</td>
      </tr>
    </tbody>
  </table>

  this.stockItems = [] ;

  pushStockItems( e ){
    var inputTitle = e.target[0].value ;
    var inputValue = e.target[1].value ;
    if( inputTitle!='' && inputValue!='' ){
      this.stockItems.push( { title:inputTitle , value:inputValue }) ;
      e.target[0].value = '' ;
      e.target[1].value = '' ;
    }
  }

</tabularStocks>
