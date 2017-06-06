import { EncuestaProjectPage } from './app.po';

describe('encuesta-project App', () => {
  let page: EncuestaProjectPage;

  beforeEach(() => {
    page = new EncuestaProjectPage();
  });

  it('should display welcome message', done => {
    page.navigateTo();
    page.getParagraphText()
      .then(msg => expect(msg).toEqual('Welcome to app!!'))
      .then(done, done.fail);
  });
});
