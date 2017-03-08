<nav class="ck rj aeq ro vq app-navbar">
  <button
    class="re rh aye"
    type="button"
    data-toggle="collapse"
    data-target="#navbarResponsive"
    aria-controls="navbarResponsive"
    aria-expanded="false"
    aria-label="Toggle navigation">
    <span class="rf"></span>
  </button>

  <a class="e" href="<?php echo base_url(); ?>">
    <!--<img src="assets/img/swe_logo.png" alt="brand">-->
    LOGO
  </a>

  <div class="collapse f" id="navbarResponsive">
    <ul class="navbar-nav ain">
      <li class="qx active">
        <a class="qv" href="<?php echo base_url(); ?>">Home <span class="aet">(current)</span></a>
      </li>
      <li class="qx">
        <a class="qv" href="#">กิจกรรมหลักสูตร</a>
      </li>
      <li class="qx">
        <a class="qv" href="#">ประวัติกิจกรรมของนักศึกษา</a>
      </li>
    

     <!-- <li class="qx aye">
        <a class="qv" href="notifications/index.html">Notifications</a>
      </li>
      <li class="qx aye">
        <a class="qv" data-action="growl">Growl</a>
      </li>
     --> 
      <li class="qx aye">
        <a class="qv" href="login/index.html">Logout</a>
      </li>

    </ul>

    <form class="pf aec ayd">
      <input class="form-control" type="text" data-action="grow" placeholder="ค้นข้อมูลนักศึกษา">
    </form>

    <ul id="#js-popoverContent" class="nav navbar-nav aec afh ayd">
      <li class="qx">
        <a class="g qv" href="notifications/index.html">
          <span class="h bbg"></span>
        </a>
      </li>
      <li class="qx afx">
        <button class="cg bqw bqx bpr" data-toggle="popover">
          <img class="wg" src="assets/img/581222222.png">
        </button>
      </li>
    </ul>

    <ul class="nav navbar-nav aya" id="js-popoverContent">
      <li class="qx"><a class="qv" href="#" data-action="growl">Growl</a></li>
      <li class="qx"><a class="qv" href="login/index.html">Logout</a></li>
    </ul>
  </div>
</nav>