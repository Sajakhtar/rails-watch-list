import $ from 'jquery'
import 'jquery-bar-rating'


const barRating = () => {
  $(function () {
    $('#review_rating').barrating({
      // theme: 'fontawesome-stars'
      // theme: 'bootstrap-stars'
      theme: 'css-stars'
    });
  });
}

export { barRating }
