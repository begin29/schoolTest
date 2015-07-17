import Ember from 'ember';

//The intent of this file is to hold initializers
//that are general and lack specific context or scope
export default {
  name: 'general-setup',
  after: 'store',
  initialize: function(container) {
    console.log('general-setup');
    container.injection('component', 'store', 'store:main');
  }
};