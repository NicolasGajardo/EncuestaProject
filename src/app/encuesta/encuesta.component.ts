import { Component, Input, Output, OnInit, OnDestroy,OnChanges} 
from '@angular/core';

@Component({
  selector: 'encuesta-root',
  templateUrl: './encuesta.component.html',
  styleUrls: ['./encuesta.component.css']
})
export class EncuestaComponent implements OnInit {
  public title: String = 'Encuesta';
  public nombre: String = 'Leo';
  
  @Input() isVisible: boolean = false;
  
  constructor() { }
  
  ngOnInit(): void{
    console.log("INIT SUCCESSFUL!");
    //this.isVisible = true;
  }
  
  myFunction(): void {
   //show box msg
   this.isVisible = true;
   //wait 3 Seconds and hide
   setTimeout(function() {
       this.isVisible = false;
       console.log(this.isVisible);
   }.bind(this), 3000);
  }

}
