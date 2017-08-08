(function () {
  var sideNav = document.getElementById('side-nav')
  var sideNavBtn = document.getElementById('side-nav-btn')
  var mask = document.getElementById('mask')
  //var closeSideNavBtn = document.getElementById('close-side-nav-btn')

  sideNavBtn.addEventListener('click', function () {
    mask.className += ' active'
    sideNav.className += ' active'
  })

  /*closeSideNavBtn.addEventListener('click', function () {
    mask.className = mask.className.replace('active', 'hidden')
    sideNav.className = sideNav.className.replace('active', 'hidden')
  })*/
  mask.addEventListener('click', function () {
    mask.className = mask.className.replace('active', 'hidden')
    sideNav.className = sideNav.className.replace('active', 'hidden')
  })
})()
