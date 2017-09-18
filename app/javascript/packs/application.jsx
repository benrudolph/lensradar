// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import moment from 'moment/moment'
import $ from 'jquery/dist/jquery'

import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import { createStore, applyMiddleware } from 'redux'
import { createLogger } from 'redux-logger'
import { Provider } from 'react-redux'

window.jQuery = $
window.$ = $
window.moment = moment

let store;
const loggerMiddleware = createLogger()

document.addEventListener('DOMContentLoaded', () => {

  const initialData = $('#initial-data').data().initialData
  store = createStore(
    (store) => { return store },
    initialData,
    applyMiddleware(
      loggerMiddleware,
    )
  )

  ReactDOM.render(
    <Provider store={store}>
      <div>Ben</div>
    </Provider>,
    $('.react-container')[0]
  )
})

