import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { EncuestaComponent } from './encuesta.component';

@NgModule({
  declarations: [
    EncuestaComponent
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  bootstrap: [EncuestaComponent]
})
export class EncuestaModule { }
