const initReviewButton = () => {
let basicTimeline = anime.timeline({
  autoplay: false
});

let pathEls = $(".check");
for (let i = 0; i < pathEls.length; i++) {
  let pathEl = pathEls[i];
  let offset = anime.setDashoffset(pathEl);
  pathEl.setAttribute("stroke-dashoffset", offset);

basicTimeline
  .add({
    targets: ".text-animated",
    duration: 1,
    opacity: "0"
  })
  .add({
    targets: ".button-animated",
    duration: 1300,
    height: 10,
    width: 300,
    backgroundColor: "#2B2D2F",
    border: "0",
    borderRadius: 100
  })
  .add({
    targets: ".progress-bar",
    duration: 2000,
    width: 300,
    easing: "linear"
  })
  .add({
    targets: ".button-animated",
    width: 0,
    duration: 1
  })
  .add({
    targets: ".progress-bar",
    width: 80,
    height: 80,
    delay: 500,
    duration: 750,
    borderRadius: 80,
    backgroundColor: "#00ffcb"
  })
  .add({
    targets: pathEl,
    strokeDashoffset: [offset, 0],
    duration: 200,
    easing: "easeInOutSine"
  });
}

$(".button-animated").click(function () {
  event.preventDefault()
  basicTimeline.play();
  setTimeout(()=> document.getElementById("review-submit").submit(), 6000);
  //setTimeout(() => $('#review-submit').click(), 3000);
});
}

const initReviewStar = () => {


const clickStar = (e) => {
  const star = e.target;
  const starValue = e.target['dataset'].value
  const lastSelectedStar = document.getElementsByClassName('selected')[0]
  if (lastSelectedStar) {
    lastSelectedStar.classList.remove('selected')
  }
  star.classList.add('selected');
  document.querySelector('#rating').value = parseInt(starValue, 10);
}

document.querySelectorAll('.fa-star').forEach((star) => {
  star.addEventListener('click', clickStar)
});
}


export { initReviewButton, initReviewStar};
