import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Gobierno de Chile';
  showSexLogin = true;
  showChooseEncuesta = false;
  protected login(): void {
    this.showSexLogin = false;
    this.showChooseEncuesta = true;
  };
  protected selectedPublicTransport(): void {
    this.showChooseEncuesta = false;
  };
}
