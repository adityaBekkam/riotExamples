<stopwatch>
  <div class="ui center aligned inverted segment">
    <h2 class="ui inverted header"> A SIMPLE STOPWATCH </h2>
    <h3>{ time }</h3>
    <button class="ui inverted button" id="start" onclick={ startTimer }>Start</button>
    <button class="ui inverted button" id="toggle" onclick={ toggleTimer }>Pause/Resume</button>
    <button class="ui inverted button" id="stop" onclick={ endTimer }>Stop</button>
  </div>



  <script>
    this.time = 0 ;
    this.timer = 0 ;
    this.started = false ;
    this.isCounting = false ;

    this.on( 'mount' , function(){
      $("#start").on( 'click' , function(){
        console.log("start button clicked") ;
        $(this).addClass
      }) ;
    }) ;

    tick() {
      this.update({ time: ++this.time }) ;
    }

    startTimer(){
      this.time = 0 ;
      this.isCounting = true ;
      this.started = true ;
      this.timer = setInterval( this.tick , 1000 ) ;
    }

    toggleTimer(){
      if( this.started ){
        if( this.isCounting ){
          clearInterval( this.timer ) ;
          this.isCounting = false ;
        }
        else {
          this.isCounting = true ;
          this.timer = setInterval( this.tick , 1000 ) ;
        }
      }
    }

    endTimer(){
      this.isCounting = false ;
      this.started = false ;
      clearInterval( this.timer ) ;
    }

  </script>
</stopwatch>
