import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Gobierno de Chile';
  
  isEncuestaVisible:boolean = false;
  
  myFunction(): void {
   //show box msg
   this.isEncuestaVisible = true;
   //wait 3 Seconds and hide
   setTimeout(function() {
       this.isEncuestaVisible = false;
       console.log(this.isEncuestaVisible);
   }.bind(this), 3000);
  }
  
}
